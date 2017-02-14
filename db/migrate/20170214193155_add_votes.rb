class AddVotes < ActiveRecord::Migration[5.0]
  def change
    add_column :questions, :votes, :integer, :default => 0
  end
end
