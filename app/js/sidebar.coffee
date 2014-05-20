escapeKey = 27

window.Sidebar = class Sidebar
  constructor: ($el) ->
    @menuLink = $el

    @menuLink.sidr()
    @close()

    $('.close').on 'click', =>
      @close()

    $(document).on 'keyup', (e) =>
      if e.keyCode == escapeKey
        @close()

  close: ->
    $.sidr('close', 'sidr')
    @menuLink.show()
