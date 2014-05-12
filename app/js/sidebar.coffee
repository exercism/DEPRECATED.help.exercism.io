window.Sidebar = class Sidebar
  constructor: ($el) ->
    $el.sidr()
    @close()
    $('.close').on 'click', =>
      @close()

  close: ->
    $.sidr('close', 'sidr')
