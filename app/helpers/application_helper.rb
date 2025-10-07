module ApplicationHelper
  # Adds the html_attributes helper to views
  include BetterHtml::Helpers

  def donation_categories
    [ [ "Bedroom", "Bedroom" ], [ "Bathroom", "Bathroom" ], [ "Kitchen and Dining Room", "Kitchen and Dining Room" ], [ "Living Room", "Living Room" ], [ "Pets and Animals", "Pets and Animals" ] ]
  end
end
