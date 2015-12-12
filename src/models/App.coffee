# TODO: Refactor this model to use an internal Game Model instead
# of containing the game logic directly.
class window.App extends Backbone.Model
  initialize: ->
    @set 'deck', deck = new Deck()
    @set 'playerHand', deck.dealPlayer()
    @set 'dealerHand', deck.dealDealer()
    @get('dealerHand').on 'compare', @compareScore, @
    console.log(@get('dealerHand'))

  compareScore: ->

    if @get('dealerHand').scores()[0] > @get('playerHand').scores()[0]
      @trigger 'outcome','Dealer Wins'
    else if @get('dealerHand').scores()[0] == @get('playerHand').scores()[0]
      @trigger 'outcome','Tie'
    else @trigger 'outcome', 'Player Wins'
