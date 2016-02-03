define [
  'backbone'
], (Backbone) ->
  class HelloRouter extends Backbone.Router
    routes: {
      "test":"test"
    }
    test: () -> alert 123
