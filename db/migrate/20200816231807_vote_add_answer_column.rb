class VoteAddAnswerColumn < ActiveRecord::Migration[6.0]
  def change
    add_column :votes, :answer, :integer
  end
end
