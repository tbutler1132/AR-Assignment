#attributes: username (s), reputation (i)
#relationships: polls, audio files, other users?

class User < ActiveRecord::Base
    has_many :votes
    has_many :polls, through: :votes

    def create_poll(new_title, file_one, file_two)
        Poll.create(title: new_title, audio_file_a_id: file_one.id, audio_file_b_id: file_two.id, creator_id: self.id)
    end

    def owned_polls
        Poll.all.select do |poll|
            poll.creator_id == self.id
        end
    end

    def vote_on_poll(chosen_poll, choice)
            Vote.create(user_id: self.id, poll_id: chosen_poll.id, answer: choice)
    end

end