module.exports = (grunt) ->

  grunt.initConfig
    sass:
      dist:   
        options:
          style: 'expanded'
        files:
          'core/master.css': 'core/master.scss',
          'components/media/media.css': 'components/media/media.scss',
          'components/flag/flag.css': 'components/flag/flag.scss',
          'components/button/button.css': 'components/button/button.scss',
          'components/button-group/button-group.css': 'components/button-group/button-group.scss',
          'components/icon/icon.css': 'components/icon/icon.scss',
          'components/heading/heading.css': 'components/heading/heading.scss',
          'components/dialog/dialog.css': 'components/dialog/dialog.scss',
          'components/callout/callout.css': 'components/callout/callout.scss',
          'components/form/form.css': 'components/form/form.scss',
          'components/label/label.css': 'components/label/label.scss',
          'components/list/list.css': 'components/list/list.scss',
          'app.css': 'app.scss',
          'sample/sample.css': 'sample/sample.scss'
        # files: [
        #         expand: true,
        #         cwd: 'sass',
        #         src: ['*.scss'],
        #         dest: 'css',
        #         ext: '.css'
        #       ]
    watch:
      files: ['core/*.scss','components/**/*.scss','sample/*.scss','*.scss']
      tasks: ['sass']

  grunt.registerTask "default", ["watch"]

  grunt.loadNpmTasks 'grunt-contrib-watch'
  grunt.loadNpmTasks 'grunt-contrib-sass'
  grunt.loadNpmTasks 'grunt-contrib-compass'
  grunt.loadNpmTasks 'grunt-csso'
  grunt.loadNpmTasks 'grunt-csscomb'
  grunt.loadNpmTasks 'grunt-data-uri'
  grunt.loadNpmTasks 'grunt-imageoptim'
  grunt.loadNpmTasks 'grunt-spritesmith'
  grunt.loadNpmTasks 'grunt-webfont'