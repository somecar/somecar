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



#$(document).ready ->
#  $('#new_ad').fileupload
#  dataType: "script"
#  add: (e,data) ->
#    data.context = $(tmpl("template-upload", data.files[0]))
#    $('#new_ad').append(data.context)
#    data.submit()
#  progress: (e, data) ->
#    if data.context
#      progress = parseInt(data.loaded / data.total * 100, 10);
#      data.context.find('.bar').css('width', progress + '%')