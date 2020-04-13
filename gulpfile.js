const gulp = require('gulp');
const del = require('del');

function clean(cb) {
  return del(['dist/**', '!dist']);
}

function mainFiles(cb) {
  return gulp.src([
    './images',
    'index.html',
  ]).pipe(gulp.dest('./dist'));
}

function images(cb) {
  return gulp.src([
    './images/**/*',
  ]).pipe(gulp.dest('./dist/images'));
}

exports.default = gulp.series(clean, mainFiles, images);