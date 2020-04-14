const gulp = require('gulp');
const del = require('del');

function clean(cb) {
  return del(['dist/**', '!dist']);
}

function mainFiles(cb) {
  return gulp.src([
    'index.html'
  ]).pipe(gulp.dest('./dist'));
}


exports.default = gulp.series(clean, mainFiles);