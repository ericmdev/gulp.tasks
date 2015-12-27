gulp = require 'gulp'
changed = require 'gulp-changed'
svgmin = require 'gulp-svgmin'

module.exports = () ->
  return gulp.src this.opts.config.images.src + '/**/*.svg'
    .pipe changed this.opts.config.images.dest
    .pipe svgmin()
    .pipe gulp.dest this.opts.config.images.dest
