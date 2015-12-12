assert = chai.assert

describe 'outcomes', ->
  deck = null
  hand = null
  game = null

  beforeEach ->
    # deck = new Deck()
    game = {};
    game.playerHand =  new Hand ([new Card({rank : 4, suit : 1}), new Card({rank : 3, suit : 1})])
    game.dealerHand = new Hand ([new Card({rank : 4, suit : 1}), new Card({rank : 3, suit : 1})])


    
    

  #player should win at 21
  describe 'Game tie', ->
    it 'Game should result in tie', ->
      game.dealerHand.stand();

  #player should lose over 21

  #dealer should lose over 21

  #dealer should win if greater than player