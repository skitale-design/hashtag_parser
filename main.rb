require_relative 'lib/hashtag_parser'

loop do
  puts "Введите строку для проверки (\"q\" для выхода):"
  user_input = STDIN.gets.chomp
  break if user_input == 'q'
  puts "Хештеги: #{HashtagParser.get_all_hashtags_from(user_input)}"
end
