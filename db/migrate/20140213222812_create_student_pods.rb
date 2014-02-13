class CreateStudentPods < ActiveRecord::Migration
  def change
    create_table :student_pods do |t|
      t.references :student, index: true
      t.references :pod, index: true
      t.integer :week_num

      t.timestamps
    end
  end
end
