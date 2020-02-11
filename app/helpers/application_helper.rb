module ApplicationHelper
  def active_class?(test_path)
    if request.path == test_path
      return 'tab-underlined active'
    else
      return 'tab-underlined'
    end
  end
end
