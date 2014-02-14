class ApiController < ApplicationController
  def students
    render json: Student.all
  end
end
