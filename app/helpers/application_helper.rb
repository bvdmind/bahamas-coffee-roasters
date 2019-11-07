module ApplicationHelper

  def flash_class(level)
    case level
    when "notice" then "is-notice"
    when "success" then "is-success"
    when "error" then "is-error"
    when "alert" then "is-error"
    end
  end

  def copyright_helper
    "\u00A9 Copyright Bahamas Coffee Roasters " + Time.now.year.to_s + ". All rights reserved."
  end

  def active? path
    "is-active" if current_page? path
  end
end
