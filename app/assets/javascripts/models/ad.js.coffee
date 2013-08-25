class Somecar.Models.Ad extends Backbone.Model
  parse: (response) ->
    return response.ad
    @set 'price': respose.ad.price
