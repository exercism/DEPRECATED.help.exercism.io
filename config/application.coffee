lineman = require(process.env['LINEMAN_MAIN'])

module.exports = lineman.config.extend "application",

  loadNpmTasks: lineman.config.application.loadNpmTasks.concat [ "grunt-html-validation", "grunt-htmlhint" ]

  markdown:
    options:
      author: "Katrina Owen"
      title: "Exercism Help"
      description: "End-user documentation for Exercism.io"
      url: "<%= pkg.homepage %>"
      email: "kytrinyx@exercism.io"
      layouts:
        post: null
        archive: null
      paths:
        posts: null
        archive: null
        rss: null
      pathRoots:
        posts: null
      lib:
        Category: require('../lib/category')

  sass:
    options:
      bundleExec: true
  enableSass: true

  htmlhint:
    files:
      src: "generated/*.html"
    options:
      'tagname-lowercase': true, 'attr-lowercase': true, 'attr-value-double-quotes': true,
      'attr-value-not-empty': true, 'doctype-first': true, 'tag-pair': true, 'tag-self-close': true,
      'spec-char-escape': true, 'id-unique': true, 'src-not-empty': true, 'head-script-disabled': true,
      'img-alt-require': true, 'doctype-html5': true, 'id-class-value': true, 'style-disabled': true

  validation:
    files:
      src: "generated/*.html"
    options:
      relaxerror: [
        "Bad value X-UA-Compatible for attribute http-equiv on element meta."
        "Bad value source for attribute rel on element a: The string source is not a registered keyword or absolute URL."
      ]
