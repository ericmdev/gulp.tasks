'use strict'

gulp                 = require 'gulp'
angularTemplatecache = require 'gulp-angular-templatecache'
minifyHtml           = require 'gulp-minify-html'
plumber              = require 'gulp-plumber'

module.exports = () ->
  return gulp.src this.opts.config.angular_templatecache.src
    .pipe plumber this.opts.errorHandler
    .pipe minifyHtml()
    .pipe angularTemplatecache this.opts.config.angular_templatecache.file, this.opts.config.angular_templatecache.opts
    .pipe gulp.dest this.opts.config.angular_templatecache.dest
