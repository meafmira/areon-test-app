'use strict';

var gulp = require('gulp');
var reload = require('browser-sync').reload;
gulp.task('setWatch', function() {
  global.isWatching = true;
});

gulp.task('watch', ['setWatch', 'styles', 'browserify', 'partials'] ,function () {
  gulp.watch('src/{app,components}/**/*.less', ['styles']);
  gulp.watch('src/{app,components}/**/*.html', ['partials']);
  gulp.watch('src/assets/images/**/*', ['images']);
  gulp.watch('.tmp/scripts/**/*.js', reload);
});
