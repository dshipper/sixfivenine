class UpdateUsers < ActiveRecord::Migration
  def self.up
    remove_column   :users, :login 
    add_column      :users, :first_name, :string
    add_column      :users, :last_name, :string
  end

  def self.down
    add_column      :users, :login, :string, :limit => 40
    remove_column   :users, :first_name
    remove_column    :users, :last_name
  end
end
