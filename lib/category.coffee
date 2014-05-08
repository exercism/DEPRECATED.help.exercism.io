_str = require('underscore.string')

module.exports = class Category
  constructor: (@site, @title) ->
    @slug = _str.slugify(@title)
    @pages = @site.pages
      .filter (page) =>
        page.get('category') is @slug
      .sort (page1, page2) ->
        page1.get('ordinal') - page2.get('ordinal')

  html: ->
    @pages.reduce (html, page) =>
      html + @site.pages.htmlFor(@site, page)
    , ""
