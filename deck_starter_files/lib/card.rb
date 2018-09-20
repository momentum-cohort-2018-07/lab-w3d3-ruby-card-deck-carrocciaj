class Card
  attr_accessor :rank
  attr_accessor :suit
  def initialize(rank, suit)
    @suit = suit
    @rank = rank
  end

  def ==(other_card)
    self.suit == other_card.suit &&
    self.rank == other_card.rank
  end

  def greater_than?(other_card)
    card_ranks = [:A,2,3,4,5,6,7,8,9,10,:J,:Q,:K]
    card_ranks.index(self.rank) > card_ranks.index(other_card.rank)
  end
end
