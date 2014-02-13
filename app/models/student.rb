class Student < ActiveRecord::Base
  belongs_to :cohort
  has_many :student_pods
  has_many :pods, through: :student_pods
end
