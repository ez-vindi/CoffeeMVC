var gulp = require('gulp'),
    coffee = require('gulp-coffee'),
    gutil = require('gulp-util'),
    watch = require('gulp-watch');

var paths = {
    watchfiles: './source/*.coffee',
    dest: './scripts/'
};

gulp.task('coffee', function() {

    return gulp.src(paths.watchfiles)
        .pipe(coffee({
            bare: true
        }).on('error', gutil.log))
        .pipe(gulp.dest(paths.dest))
        
});

gulp.task('watch', function() {
    gulp.watch(paths.watchfiles, ['coffee']);
});


gulp.task('default', ['watch']);