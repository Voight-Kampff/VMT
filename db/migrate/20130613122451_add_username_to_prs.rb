class AddUsernameToPrs < ActiveRecord::Migration
  def change
    add_column :prs, :username, :string
  end
end
