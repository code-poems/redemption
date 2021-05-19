require_relative '../judgement'

RSpec.describe Judgement do
  it 'takes human to heaven if turn_bad has not happened.' do
    human = Human.new
    Judgement.try human

    expect(Judgement.heaven).to include human
  end
end

