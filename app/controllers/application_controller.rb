class ApplicationController < ActionController::Base
  def after_sign_in_path_for(resource)
    if resource.is_a?(Student)
      home_student_path(resource.id)
    elsif resource.is_a?(Admin)
      home_admin_path(resource.id)
    else
      super
    end
  end
end
