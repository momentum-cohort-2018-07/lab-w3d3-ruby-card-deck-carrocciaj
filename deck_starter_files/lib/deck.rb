require_relative "card"
class Deck
    
    attr_accessor :deck
    def initialize
        @deck = []
        suit_array = [ :clubs, :diamonds, :hearts, :spades ]
        rank_array = [ :A, 2, 3, 4, 5, 6, 7, 8, 9, 10, :J, :Q, :K]
        suit_array.each do |suit|
          rank_array.each do |rank|
            @deck.push(Card.new(rank,suit))
          end
        end
    end

    def draw
      @deck.shift
    end
end
