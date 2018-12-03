// 压缩css
var gulp=require('gulp');
var cssmin=require('gulp-cssmin');
gulp.task('cssmin',function(){
  return gulp.src('src/css/*.css')
  			 .pipe(cssmin())
  			 .pipe(gulp.dest('dist/css'));
});


// css重命名
var rename=require('gulp-rename');
gulp.task('rename',function(){
  return gulp.src('src/css/*.css')
            .pipe(cssmin())
            .pipe(rename({suffix:'.min.css'}))
  			 // .pipe(rename('css.min.css'))
  			 .pipe(gulp.dest('dist/css'));
});

// 压缩js并重命名
var uglify=require('gulp-uglify');
gulp.task('uglify',function(){
  return gulp.src('dist/js/*.js')
             .pipe(uglify())
             .pipe(rename({suffix:'.min.js'}))
             .pipe(gulp.dest('dist/js'));
});

// 压缩图片
var imagemin=require('gulp-imagemin');
gulp.task('imgmin',function(){
  return gulp.src('src/img/*')
  			 .pipe(imagemin())
  			 .pipe(gulp.dest('dist/img'));
});

gulp.task('imgmin',function(){
  return gulp.src('src/img/**')
             .pipe(imagemin())
             .pipe(gulp.dest('dist/img'));
});


