assert = chai.assert

describe 'outcomes', ->
  deck = null
  hand = null

  beforeEach ->
    deck = new Deck()
    hand = deck.dealPlayer()
    dealer = deck.dealDealer()

  #player should win at 21
  describe 'player win', ->
    it 'player should win when score is', ->
      assert.strictEqual deck.length, 50
      assert.strictEqual deck.last(), hand.hit()
      assert.strictEqual deck.length, 49

  #player should lose over 21

  #dealer should lose over 21

  #dealer should win if greater than player