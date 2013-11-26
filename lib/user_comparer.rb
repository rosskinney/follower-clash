require 'rubygems'
require 'bundler/setup'
require 'twitter'

module UserComparer
  class User
    attr_accessor :username

    def initialize(username)
      @username = username
    end

    def followers

      client = Twitter::REST::Client.new do |config|
        config.consumer_key = ENV['CONSUMER_KEY']
        config.consumer_secret = ENV['CONSUMER_SECRET']
        config.access_token = ENV['OAUTH_TOKEN']
        config.access_token_secret = ENV['OAUTH_TOKEN_SECRET']
      end

      client.user(@username).followers_count
    end #puts @username
  end #end of User Class


  class Comparer
    attr_accessor :user1, :user2

    def initialize(user1, user2)
      @user1 = user1
      @user2 = user2
    end

    def compare
      if user1.followers > user2.followers
        user1.username
      elsif user2.followers > user1.followers
        user2.username
      else
        puts "How remarkable that their could be a tie"
      end
    end # end of compare method

  end # end of comparer Class
end # end of Module UserComparer