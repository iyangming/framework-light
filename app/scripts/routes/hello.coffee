define [
  'backbone'
], (Backbone) ->
  class HelloRouter extends Backbone.Router
    routes: {
      "test":"test"
    }
    test: () ->
      require [
        'views/hello'
      ], (Hello) ->
        h = new Hello()
