# title, file_one_votes, file_two_votes
# related to two audio files

class Poll < ActiveRecord::Base
    has_many :votes
    has_many :users, through: :votes
   

   def creator
    User.find(self.creator_id)
   end

   def current_score
    votes = self.votes.map do |vote|
        vote.answer
    end
    vote_for_a = votes.filter do |vote|
        vote == 1
    end.count
    vote_for_b = votes.filter do |vote|
        vote == 2
    end.count
    if vote_for_a > vote_for_b
        puts "Choice one leads " + vote_for_a.to_s + " to " + vote_for_b.to_s 
    elsif vote_for_a < vote_for_b
        puts "Choice two leads " + vote_for_b.to_s + " to " + vote_for_a.to_s
    else
        puts "It is tied " + vote_for_a.to_s + " to " + vote_for_b.to_s
    end

   end


        
end