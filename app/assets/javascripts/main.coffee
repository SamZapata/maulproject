window.MAUL = {
  comunas:
    carousel:
      setup: ->
        # console.log $('#comunas.tab-pane').onchange
        # console.log

  init: ->
    console.log 'Made by JSAM'
    return
}

$(document).on 'turbolinks:load', ->
  MAUL.init()
