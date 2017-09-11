<head>
    {if $_modx->resource.longtitle?}
        {var $title = $_modx->resource.longtitle}
    {else}
        {var $title = $_modx->resource.pagetitle}
    {/if}
    {var $timestamp = ''|date_format:'%s'}
    <title>{$title}</title>
    <base href="{$_modx->config.site_url}">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="assets/template/css/app.min.css?{$timestamp}">
    <link rel="apple-touch-icon" sizes="180x180" href="favicon/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="assets/template/favicon/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="assets/template/favicon/favicon-16x16.png">
    <link rel="manifest" href="assets/template/favicon/manifest.json">
    <link rel="mask-icon" href="assets/template/favicon/safari-pinned-tab.svg" color="#f22c2c">
    <meta name="theme-color" content="#f22c2c">
</head>