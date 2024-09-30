module ApplicationHelper
  def active_class(controller_name)
    'active' if controller_name == params[:controller]
  end
end
