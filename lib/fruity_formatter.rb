# encoding: utf-8
require 'rspec/core/formatters/progress_formatter'

class FruityFormatter < RSpec::Core::Formatters::ProgressFormatter
  FRUITS = {
    strawberry: { char: "🍓", color: :red },
    cherry: { char: "🍒", color: :magenta },
    pear: { char: "🍐", color: :green },
    peach: { char: "🍑", color: :yellow },
    tomato: { char: "🍅", color: :red },
    eggplant: { char: "🍆", color: :magenta },
    tangerine: { char: "🍊", color: :yellow },
    grape: { char: "🍇", color: :magenta },
    melon: { char: "🍈", color: :green },
    lemon: { char: "🍋", color: :yellow },
    watermelon: { char: "🍉", color: :red },
    banana: { char: "🍌", color: :yellow },
    apple: { char: "🍎", color: :red },
    pineapple: {char:  "🍍 ", color: :yellow}
  }
  FRUIT_NAMES = [
    :strawberry,
    :cherry,
    :pear,
    :peach,
    :tomato,
    :eggplant,
    :grape,
    :melon,
    :watermelon,
    :tangerine,
    :lemon,
    :banana,
    :apple,
    :pineapple
  ]
  def grab_a_fruit
    fruit_name = FRUIT_NAMES[@cur_fruit]
    @cur_fruit += 1
    if @cur_fruit > FRUIT_NAMES.size-1
      @cur_fruit = 0
    end
    fruit = FRUITS[fruit_name]
    color(fruit[:char], fruit[:color])
  end
  def start(example_count)
    @cur_fruit = 0
    super(example_count)
  end
  def example_passed(example)
    print grab_a_fruit
  end
  def example_failed(example)
    print color("🍄", :black)
  end
end
