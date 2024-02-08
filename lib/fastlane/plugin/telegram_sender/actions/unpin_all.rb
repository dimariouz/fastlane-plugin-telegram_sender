module Fastlane
  module Actions
    class UnpinAllAction < Action
      def self.run(params)
        UI.message("Unpin all messages in a telegram chat")

        token = params[:token]
        chat_id = params[:chat_id]

        uri = URI.parse("https://api.telegram.org/bot#{token}/unpinAllChatMessages")
        
        http = Net::HTTP.new(uri.host, uri.port)
        if params[:proxy]
          proxy_uri = URI.parse(params[:proxy])
          http = Net::HTTP.new(uri.host, uri.port, proxy_uri.host, proxy_uri.port, proxy_uri.user, proxy_uri.password)
        end
        http.use_ssl = true

        require 'net/http/post/multipart'
        request = Net::HTTP::Post::Multipart.new(uri, 
        { 
          "chat_id" => chat_id
        })

        response = http.request(request)
      end

      def self.description
        "Allows unpin messages in a telegram chat"
      end

      def self.authors
        ["dimariouz"]
      end

      def self.return_value
        response
      end

      def self.details
        "Allows unpin messages in a telegram chat"
      end

      def self.available_options
        [
                   FastlaneCore::ConfigItem.new(key: :token,
                                           env_name: "TELEGRAM_TOKEN",
                                        description: "A unique authentication token given when a bot is created",
                                           optional: false,
                                               type: String),
                   FastlaneCore::ConfigItem.new(key: :chat_id,
                                           env_name: "TELEGRAM_CHAT_ID",
                                        description: "Unique identifier for the target chat (not in the format @channel). For getting chat id you can send any message to your bot and get chat id from response https://api.telegram.org/botYOUR_TOKEN/getupdates",
                                           optional: false,
                                               type: String),
                   FastlaneCore::ConfigItem.new(key: :proxy,
                                           env_name: "TELEGRAM_PROXY",
                                        description: "Proxy URL to be used in network requests. Example: (https://123.45.67.89:80)",
                                           optional: true,
                                               type: String)
                ]
      end

      def self.is_supported?(platform)
        true
      end
    end
  end
end