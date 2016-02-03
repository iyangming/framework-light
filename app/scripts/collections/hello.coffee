define [
  'underscore'
  'backbone'
  'models/hello'
], (_, Backbone, HelloModel) ->

  class HelloCollection extends Backbone.Collection
    model: HelloModel
