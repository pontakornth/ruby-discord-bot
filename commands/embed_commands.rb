module Bot
  module EmbedCommands
    extend Discordrb::Commands::CommandContainer

    command :embed  do |event, title, description|
      event.send_embed do |embed|
        embed.title = title
        embed.description = description
      end
    end
  end
end