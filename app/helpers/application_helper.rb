module ApplicationHelper
  include SessionsHelper
  
  def active_navigate(column_name, &block)
    if column_name == @navigate_id
      content_tag(:li, :class => 'active', &block)
    else
      content_tag(:li, &block)
    end
  end
  
end
