class ResponseVotes < ActiveRecord::Migration[5.0]
  def change
    add_column :responses, :response_votes, :integer, :default => 0

  end
end
