class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :image_url
      t.string :f_name
      t.string :l_name
      t.string :github
      t.string :twitter
      t.string :email
      t.references :cohort, index: true

      t.timestamps
    end
  end
end
