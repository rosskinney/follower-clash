require 'rubygems'
require 'bundler/setup'
require 'twitter'

module UserComparer
  class User
    attr_reader :username

    def initialize(username)
      @username = username
    end
  end
  class Comparer
    def initialize(user1, user2)
      @user1 = user1
      @user2 = user2

      if user1.followers_count  > user2.followers_count
      	puts "user 1 have more followers than user 2"
      	
      elsif user2.followers_count > user1.followers_count
      	puts "user 2 has more followers than user 1"
      	
      else
      	puts "How remarkable that their could be a tie"
      end
    end

    def followers

      client = Twitter::REST::Client.new do |config|
        config.consumer_key = ENV['CONSUMER_KEY']
        config.consumer_secret = ENV['CONSUMER_SECRET']
        config.access_token = ENV['OAUTH_TOKEN']
        config.access_token_secret = ENV['OAUTH_TOKEN_SECRET']
      end

      client.user(@username).followers_count
      #puts @username
    end
  end
end