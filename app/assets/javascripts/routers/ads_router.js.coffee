class Somecar.Routers.Ads extends Backbone.Router
  routes:
    '': 'search'
    'ads/:id': 'show_ad'

  search: ->
    new Somecar.Views.AdsIndex()

  show_ad: (id)->
    alert "show ad #{id}"
