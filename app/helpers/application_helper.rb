module ApplicationHelper

  def flash_class(level)
    case level
      when :notice then "is-success"
      when :success then "is-success"
      when :error then "is-error"
      when :alert then "is-error"
    end
  end
end
