#attributes: name, category(mix, sound selection, musical, rythmic, other) description
#relationships: belongs_to a poll?

class AudioFile < ActiveRecord::Base
    belongs_to :user

    def total_votes
    end

   
end