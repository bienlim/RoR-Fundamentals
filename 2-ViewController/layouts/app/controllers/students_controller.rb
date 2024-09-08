class StudentsController < ApplicationController
  # only the index and the new action will be loaded through app/views/layouts/dojos.html.erb
  layout "dojos", only: [:profile, :info]
  
  def index
    # renders with app/views/layouts/students.html.erb
  end
  
  def new
    # renders with app/views/layouts/students.html.erb
  end
  
  def profile
    # renders with app/views/layouts/dojos.html.erb
  end
  
  def info
    # renders with app/views/layouts/dojos.html.erb  
  end
  
  def hello_world
    render layout: "application"
     # renders with app/views/layouts/application.html.erb
  end
end
