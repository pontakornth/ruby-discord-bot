# frozen_string_literal: true

module Bot
  require 'discordrb'
  require 'dotenv/load'

  Dir['./commands/*.rb'].sort.each { |file| require file }

  bot = Discordrb::Commands::CommandBot.new(token: ENV['DISCORD_BOT_TOKEN'],
                                            prefix: '!')

  # Module inclusion
  bot.include! Bot::MathCommands
  bot.include! Bot::JokeCommands
  bot.include! Bot::EmbedCommands

  at_exit do
    bot.stop
  end

  bot.run
end
