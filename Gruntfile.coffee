module.exports = (grunt) ->

  grunt.initConfig 
    pkg: grunt.file.readJSON('package.json')
    clean:
      code:
        src: [
          './lib/*'          
        ]
    coffee:
      compile:
        options:
          bare: true
          sourceMap: false
        files: [
          {
            expand: true
            ext: '.js'
            cwd: './src'
            src: './**/*.coffee'
            dest: './lib'
          }
        ]

  grunt.loadNpmTasks 'grunt-contrib-clean'
  grunt.loadNpmTasks 'grunt-contrib-coffee'

  grunt.registerTask 'default', ['clean:code', 'coffee']
