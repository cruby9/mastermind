# frozen_string_literal: true

require 'debug'

class RandomColors
  attr_reader :color

  def color_choice
    color = %w[red yellow blue white]
    color.sample(2 + rand(color.count))
  end
  binding.break
end
