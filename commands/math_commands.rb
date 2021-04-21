# frozen_string_literal: true

module Bot
  module MathCommands
    extend Discordrb::Commands::CommandContainer

    # Return square root of the number
    command :sqrt do |_event, args|
      first = args[0].to_f
      Math.sqrt(first)
    end

    # Return the square of the number
    command :square do |_event, args|
      first = args[0].to_f
      first**2
    end

    # Return random value from range
    command :random do |event, min, max|
      event << "Random number from #{min.to_i} to #{max.to_i}"
      rand((min.to_i)..(max.to_i))
    end
  end
end
