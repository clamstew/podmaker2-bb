class CreateCohorts < ActiveRecord::Migration
  def change
    create_table :cohorts do |t|
      t.date :date_start
      t.date :date_end
      t.integer :number

      t.timestamps
    end
  end
end
