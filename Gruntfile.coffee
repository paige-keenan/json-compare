module.exports = (grunt) ->

  require('load-grunt-config') grunt

  grunt.registerTask 'serve', [
    'express'
    'open'
    'watch'
    'jade'
    'coffee'
    'sass'
  ]

  grunt.registerTask 'optimize-images', [ 
    'imagemin' 
  ]

  grunt.registerTask 'json-diff', [
    'json-diff'
  ]
  
  grunt.registerTask 'build', [
    'imagemin'
    'jade'
    'sass'
    'coffee'
    'uglify:dist'
    'cssmin'
    'htmlmin'
  ]