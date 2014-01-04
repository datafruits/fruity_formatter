# encoding: utf-8
require 'fruity_formatter'

describe FruityFormatter do
  before do
    @output = StringIO.new
    @formatter = FruityFormatter.new @output
    @example = RSpec::Core::ExampleGroup.describe.example
    @formatter.start(2)
  end
  it 'prints fruits for success' do
    @formatter.should_receive(:grab_a_fruit)
    @formatter.example_passed(@example)
  end
  it 'prints mushrooms for failures' do
    @formatter.should_receive(:failure_emoji)
    @formatter.example_failed(@example)
  end
end
