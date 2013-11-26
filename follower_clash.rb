require 'rubygems'
require 'bundler/setup'
require_relative 'lib/user_comparer'

user1 = UserComparer::User.new('ornellasmike')
user2 = UserComparer::User.new('techpeace')
user3 = UserComparer::User.new('dsnadam')
puts user1.username
puts user2.username
puts "#{user1.username}'s follower count: #{user1.followers}"
puts "#{user2.username}'s follower count: #{user2.followers}"

