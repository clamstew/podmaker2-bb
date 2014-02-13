class StudentPod < ActiveRecord::Base
  belongs_to :student
  belongs_to :pod
end
