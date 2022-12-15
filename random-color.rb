# frozen_string_literal: true


class RandomColors
    attr_reader :color
  
    def color_choice
      color = %w[red yellow blue white]
      color.sample(2 + rand(color.count))
    end
    
  end
end 