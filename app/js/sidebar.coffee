window.Sidebar = class Sidebar
  constructor: ($el) ->
    $el.sidr()
    # this didn't chain :/ Maybe it could, though.
    $.sidr('close', 'sidr')
