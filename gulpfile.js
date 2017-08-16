// npm install gulp-svgstore gulp-rename gulp-svgmin gulp-inject path gulp-uglify gulp-cssnano gulp-rigger gulp-cheerio
var gulp = require('gulp'),
    sass = require('gulp-sass'),
    templatePath = 'public_html/assets/template/',
    concat = require('gulp-concat'), // Подключаем gulp-concat (для конкатенации файлов)
    cleanCSS = require('gulp-clean-css'),
    rigger = require('gulp-rigger'),
    uglify = require('gulp-uglify'); // Подключаем gulp-uglifyjs (для сжатия JS)

gulp.task('svgstore', function () {
    var rename = require('gulp-rename');
    var svgmin = require('gulp-svgmin');
    var cheerio = require('gulp-cheerio');
    var svgstore = require('gulp-svgstore');
    var inject = require('gulp-inject');
    var path = require('path');

    var svgs = gulp
        .src(templatePath + 'svg/*.svg')
        .pipe(cheerio({
            run: function ($) {
                $('[fill]').not('[fill="none"]').removeAttr('fill');
            },
            parserOptions: { xmlMode: true }
        }))
        .pipe(svgmin(function (file) {
            var prefix = path.basename(file.relative, path.extname(file.relative));
            return {
                plugins: [{
                    cleanupIDs: {
                        prefix: prefix + '-',
                        minify: true
                    }
                }]
            }
        }))
        .pipe(rename({prefix: 'svg-symbol--'}))
        .pipe(svgstore({ inlineSvg: true }));

    function fileContents (filePath, file) {
        return file.contents.toString();
    }

    return gulp
        .src('public_html/core/elements/chunks/common/svg/svg.sprite.ch.html')
        .pipe(inject(svgs, { transform: fileContents }))
        .pipe(gulp.dest('public_html/core/elements/chunks/common/'));
});

gulp.task('sass', function(){ // Создаем таск Sass
    return gulp.src(templatePath + 'scss/**/*.scss') // Берем источник
        .pipe(sass()) // Преобразуем Sass в CSS посредством gulp-sass
        .pipe(gulp.dest(templatePath + 'css/')); // Выгружаем результата в папку app/css
});

gulp.task('scripts', function() {
    gulp.src([templatePath + 'libs/libs.js']) //Найдем наш main файл
        .pipe(rigger()) //Прогоним через rigger
//        .pipe(uglify()) //Сожмем наш js
        .pipe(gulp.dest(templatePath + 'js')); //Выплюнем готовый файл в build

    return gulp.src([
        templatePath + 'js/libs.js',
        templatePath + 'js/app.js'
    ])
        .pipe(concat('app.min.js')) // Собираем их в кучу в новом файле libs.min.js
        //.pipe(uglify()) // Сжимаем JS файл
        .pipe(gulp.dest(templatePath + 'js')); // Выгружаем в папку app/js
});

gulp.task('cssLibs', ['sass'], function(){
   return gulp.src([templatePath + 'libs/libs.css']) //Найдем наш main файл
        .pipe(rigger()) //Прогоним через rigger
        //.pipe(cleanCSS({compatibility: '*'})) //Сожмем наш css
        .pipe(gulp.dest(templatePath + 'css')); //Выплюнем готовый файл в build 
});

gulp.task('css', ['cssLibs'], function(){
    return gulp.src([
        templatePath + 'css/main.css',
        templatePath + 'css/libs.css',
    ])
        .pipe(concat('app.min.css')) // Собираем их в кучу в новом файле libs.min.js
        //.pipe(cleanCSS({compatibility: '*'})) // Сжимаем JS файл
        .pipe(gulp.dest(templatePath + 'css/')); // Выгружаем в папку app/js 
});

gulp.task('build', ['css', 'scripts']);

//gulp.task('libs', ['libsConcat', 'libsMove']);
//gulp.task('default', ['libs', 'svgstore']);