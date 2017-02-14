class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.column :name, :string
      t.column :admin, :boolean, :default => false
      t.column :email, :string
      t.column :password_hash, :string
      t.column :password_salt, :string
    end
  end
end
