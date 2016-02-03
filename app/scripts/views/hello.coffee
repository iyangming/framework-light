define [
  'jquery'
  'underscore'
  'backbone'
  'templates'
], ($, _, Backbone, JST) ->
  class HelloView extends Backbone.View
    template: JST['app/scripts/templates/hello.ejs']

    tagName: 'div'

    el : ".jumbotron"

    id: ''

    className: ''

    events: {}

    initialize: () ->
      that = @
      require [
        'models/hello'
      ], (Hello) ->
        that.model = new Hello()
        that.listenTo that.model, 'change', that.render
        that.model.set("a",1)

    render: () ->
        @$el.html @template(@model.toJSON())
