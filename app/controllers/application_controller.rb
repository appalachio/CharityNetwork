class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern

  # Track which user is responsible for changing a model
  # before_action :set_paper_trail_whodunnit
end
