# frozen_string_literal: true

JOKES = [
  'You cannot argue with decimal. It always has a point.',
  'Integers are pointless.',
  'C# programmers wear glasses.',
  "You won't get the post request to modify data.",
  'You will never find room 404.',
  'You cannot enter the room 403.',
  'Sword'
].freeze
module Bot
  module JokeCommands
    extend Discordrb::Commands::CommandContainer
    command :nice do |_event|
      'Nice number is 69.'
    end

    command :magic do |_event|
      'Your magic is in not giving up.'
    end

    command :joke do |_event|
      JOKES.sample
    end
  end
end
