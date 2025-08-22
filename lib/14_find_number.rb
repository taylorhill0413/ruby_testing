# frozen_string_literal: true

# class for computer to find random number
class FindNumber
  attr_reader :answer, :guess
  attr_accessor :min, :max

  def initialize(min, max, answer = RandomNumber.new(min, max), guess = nil)
    @min = min
    @max = max
    # The RandomNumber class will have an instance variable '@value'
    @answer = answer.value
    @guess = guess
  end

  def make_guess
    (min+max)/2.floor(0)
  end

  def game_over?
    self.answer == self.guess
  end

  def update_range
    if self.guess < self.answer
      self.min = self.guess + 1
    end
    if guess > answer
      self.max = self.guess-1
    end
  end
end
