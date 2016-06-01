class RemoveUselessModels < ActiveRecord::Migration
  def change
  	drop_table :ccpayments
  	drop_table :ticket
  end
end
