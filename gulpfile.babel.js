import gulp from 'gulp';
import del from 'del';
import path from 'path';
import userHome from 'user-home';
import rename from 'gulp-rename';
import concat from 'gulp-concat';
import gulpLoadPlugins from 'gulp-load-plugins';

const plugins = gulpLoadPlugins();
const paths = {
  link: ['./*', '.vim', '!zshrc', '!bash', '!node_modules', '!dist', '!gulpfile.babel.js', '!package.json'],
  copy: ['vim']
}

gulp.task('zshrc', () => {
  return gulp.src(['zshrc', 'bash/*.sh'])
    .pipe(concat('.zshrc'))
    .pipe(gulp.dest(userHome));
});

gulp.task('clean', function(cb) {
    return del([path.join(userHome, '.vim')], {force: true}, cb);
});

gulp.task('copy', () => {
  return gulp.src(["vim/**/*"], { "base" : "./vim" })
    .pipe(gulp.dest(path.join(userHome, '.vim')));
});

gulp.task('link', () => {
  return gulp.src(paths.link, { cwd : './' })
    .pipe(gulp.symlink(userHome));
});

gulp.task('default', gulp.series('zshrc', 'link'));
