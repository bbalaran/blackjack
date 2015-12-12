class window.AppView extends Backbone.View
  template: _.template '
    <button class="hit-button">Hit</button> <button class="stand-button">Stand</button>
    <div class="player-hand-container"></div>
    <div class="dealer-hand-container"></div>
      <div class="result-container"></div>
  '

  events:
    'click .hit-button': -> @model.get('playerHand').hit()
    'click .stand-button': -> @model.get('dealerHand').stand()


  initialize: ->
    #Refactor with trigger args later
    @model.get('dealerHand').on 'outcome', @showOutcome, @
    @model.get('playerHand').on 'outcome', @showOutcome, @
    @model.on 'outcome', @showOutcome, @
    

    @render()

  render: ->
    @$el.children().detach()
    @$el.html @template()
    @$('.player-hand-container').html new HandView(collection: @model.get 'playerHand').el
    @$('.dealer-hand-container').html new HandView(collection: @model.get 'dealerHand').el

  showOutcome: (args) ->
    #debugger;
    console.log(@$el)
    @$el
      .append("<h> #{args} </h>")

