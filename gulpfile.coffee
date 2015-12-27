# Load all requirements.
gulp = require 'gulp'
GulpTaskLoader = require 'gulp-task-loader'
require 'require-yaml'

# Load configuration.
config = require './config.yml'

# Configure gulp-task-loader
opts =
  root: config.root,
  dir: config.tasks,
  exts: config.ext,
  config: config
gulpTaskLoader = GulpTaskLoader opts

# Define tasks.
gulp.task 'test', ['jasmine']