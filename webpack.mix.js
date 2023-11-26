const mix = require('laravel-mix');
// const { vue, react } = require('laravel-mix');

mix.setPublicPath('./public/');

mix.version();
mix
  // .react()
  .js('frontend/js/app.js', 'public/js')
  .sass('frontend/scss/app.scss', 'public/css')
