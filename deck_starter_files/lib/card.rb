class Card
# attr_accessor :card_ranks
attr_accessor :rank
attr_accessor :suit
  def initialize(rank, suit)
    @suit = suit
    @rank = rank
  end
  def greater_than?(card_two)
    card_ranks = [:A,2,3,4,5,6,7,8,9,10,:J,:Q,:K]
    card2 = card_ranks.index(card_two.rank)
    card1 = card_ranks.index(@rank)
    if card1 > card2 then
        true
      else
        false
      end
  end
end
