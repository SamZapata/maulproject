window.MAUL = {
  comunas:
    dropdown:
      setup: ->
        console.log $('#comunas.tab-pane .dropdown-menu').text()

  init: ->
    console.log 'Made by JSAM'
    return
}

$(document).on 'turbolinks:load', ->
  MAUL.init()
