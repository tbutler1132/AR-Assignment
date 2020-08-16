
def run

"Welcome, would you like to sign up or log in"
input = gets.chomp

if input == "log in"
    puts "Please input your username"
    username_input = gets.chomp
    current_user = User.find_by username: username_input
    "Hello, #{current_user.name}, would you like to view your profile, create a poll, or vote on a poll"
    input = gets.chomp
    if input == "view profile"
        current_user.view_profile
    else input == "create a poll"
         puts "Please input the title of the first file you would like to add to the poll"
         tile_input = gets.chomp
         file_1 = AudioFile.find_by title: title_input
         puts "Please input the title of the second file you would like to add to the poll"
         tile_input = gets.chomp
         file_2 = AudioFile.find_by title: title_input
         puts "Please input a title for your poll"
         title_of_poll = gets.chomp
         new_poll = Poll.create(title: title_of_poll)
         new_poll.create_poll(file_1, file_2)

         
         


        