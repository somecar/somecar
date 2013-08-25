class Somecar.Routers.Ads extends Backbone.Router
  routes:
    '': 'search_page'
    'ads/:id': 'show_ad'

  search_page: ->
    ads_collection = new Somecar.Collections.Ads
    $ ->
      new Somecar.Views.AdsIndex collection: ads_collection

  show_ad: (id)->
    alert "show ad #{id}"
