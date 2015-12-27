# Load all requirements.
gulp = require 'gulp'
GulpTaskLoader = require 'gulp-task-loader'
options =
  dir: 'tasks',
  exts: ['.coffee']
gulpTaskLoader = GulpTaskLoader options

# Load configuration.
require 'require-yaml'
config = require './config.yml'