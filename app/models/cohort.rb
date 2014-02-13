class Cohort < ActiveRecord::Base
  has_many :pods
  has_many :students
end
