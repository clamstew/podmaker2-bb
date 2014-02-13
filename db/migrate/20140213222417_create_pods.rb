class CreatePods < ActiveRecord::Migration
  def change
    create_table :pods do |t|
      t.string :building
      t.integer :slot_num
      t.references :cohort, index: true

      t.timestamps
    end
  end
end
