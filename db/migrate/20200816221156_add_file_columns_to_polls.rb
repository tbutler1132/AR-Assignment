class AddFileColumnsToPolls < ActiveRecord::Migration[6.0]
  def change
    add_column :polls, :audio_file_a_id, :integer
    add_column :polls, :audio_file_b_id, :integer
  end
end
