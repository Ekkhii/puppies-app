class AddRandomStringToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :random_string, :string
  end
end
