escapeKey = 27

window.Sidebar = class Sidebar
  constructor: ($el) ->
    $el.sidr()
    @close()
    $('.close').on 'click', =>
      @close()
    $(document).on 'keyup', (e) =>
      @close() if e.keyCode == escapeKey

  close: ->
    $.sidr('close', 'sidr')
