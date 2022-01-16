const mix = require('laravel-mix');
const path = require("path");
/*npm
 |--------------------------------------------------------------------------
 | Mix Asset Management
 |--------------------------------------------------------------------------
 |
 | Mix provides a clean, fluent API for defining some Webpack build steps
 | for your Laravel application. By default, we are compiling the Sass
 | file for the application as well as bundling up all the JS files.
 |
 */

mix.js('resources/js/app.js', 'public/js')
    .vue()
    .sass('resources/sass/app.scss', 'public/css');

    // mix.alias({
    //     '@': path.join(__dirname, 'node_modules'),
    //     '~': path.join(__dirname, './src'),
    //     vue$: path.join(__dirname, 'node_modules/vue/dist/vue.esm-bundler.js'),
    // });

    // mix.alias('@', 'node_modules');
    // mix.alias('~', './src');