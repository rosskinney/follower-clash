require_relative 'lib/user_comparer'

user1 = UserComparer::User.new('run4kelly')
user2 = UserComparer::User.new('dsnadam')
puts "#{user1.username}'s follower count: #{user1.followers}"
puts "#{user2.username}'s follower count: #{user2.followers}"
comparer = UserComparer::Comparer.new(user1, user2)
puts "And the user with the most followers is #{comparer.compare}"