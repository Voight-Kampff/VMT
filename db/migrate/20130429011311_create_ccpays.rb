class CreateCcpays < ActiveRecord::Migration
  def change
    create_table :ccpays do |t|

      t.timestamps
    end
  end
end
