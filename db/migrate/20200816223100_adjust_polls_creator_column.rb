class AdjustPollsCreatorColumn < ActiveRecord::Migration[6.0]
  def change
    remove_column :polls, :creator
    add_column :polls, :creator_id, :integer
  end
end
