# Load all requirements.
gulp = require 'gulp'
GulpTaskLoader = require 'gulp-task-loader'
options =
  dir: 'tasks',
  exts: ['.coffee']
gulpTaskLoader = GulpTaskLoader options