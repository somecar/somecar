window.Somecar =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: ->
    new Somecar.Routers.Ads()
    Backbone.history.start()

$(document).ready ->
  Somecar.initialize()


$(document).ready ->
  $('#new_ad').fileupload()