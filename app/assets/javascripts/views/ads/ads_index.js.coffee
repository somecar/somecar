class Somecar.Views.AdsIndex extends Backbone.View
  el: '.search_results'
  collection: new Somecar.Collections.Ads()
  template: JST['ads/index']

  events:
    'click #to_search' : 'search'

  initialize: ->
    @collection.on('sync', @render, @)
    @collection.fetch()

  render: ->
    $('.search_results').append @template(ads: @collection)
    @

  search: ->
    $marks = $('.search-form__automark').val()
    $models = $('.search-form__automodel').val()
    $start_proce = $('.search-form__price_start').val()
    $end_proce = $('.search-form__price_end').val()
    $body_types = $(".search-form__bodytype:checked").map(->
                    @value
                  ).get()
    $mileage = $('.search-form__mileage').val()
    $engyntypes = $('.search-form__enginetype:checked').map(->
                    @value
                  ).get()
    $capacity_start = $('.search-form__enginecapacity_start').val()
    $capacity_end = $('.search-form__enginecapacity_end').val()
    $drives = $('.search-form__drive:checked').map(->
                @value
              ).get()
    $start_power = $('.search-form__power_start').val()
    $end_power = $('.search-form__power_end').val()
    $transmission = $('.search-form__transmission:checked').map(->
                      @value
                    ).get()
    $start_date = $('.search-form__date_start').val()
    $end_date = $('.search-form__date_end').val()
    $region = $('.search-form__region').val()
    $city = $('.search-form__city').val()
