require 'set'

class Human
  attr_accessor :righteous

  def initialize
    @righteous = false
  end

  def turn_bad
    @righteous = false
  end
end

class Judgement
  class << self
    def heaven; @heaven ||= Set.new; end

    def try human
      if human.righteous == true
        self.heaven << human
      end
    end
  end
end

