class Pod < ActiveRecord::Base
  belongs_to :cohort
  has_many :student_pods
  has_many :students, through: :student_pods
end
