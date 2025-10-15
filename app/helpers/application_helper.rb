module ApplicationHelper
  # Adds the html_attributes helper to views
  include BetterHtml::Helpers

  def donation_categories
    [
    [ "Bedroom", "Bedroom" ],

    [ "Beds – all sizes EXCEPT KINGSIZE (mattresses / box springs, full frames)", "Beds – all sizes EXCEPT KINGSIZE (mattresses / box springs, full frames)" ],
    [ "Freshly cleaned bedding and linens", "Freshly cleaned bedding and linens" ],
    [ "Dressers", "Dressers" ],
    [ "Wardrobes / armoires", "Wardrobes / armoires" ],
    [ "Mirrors", "Mirrors" ],
    [ "Night tables", "Night tables" ],
    [ "Chairs", "Chairs" ],
    [ "Bookcases", "Bookcases" ],
    [ "Curtains and rods (5 yrs. or newer)", "Curtains and rods (5 yrs. or newer)" ],



    [ "Bathroom", "Bathroom" ],

    [ "Towels", "Towels" ],
    [ "Facecloths", "Facecloths" ],
    [ "Bath mats", "Bath mats" ],
    [ "New or well cleaned shower curtains and hooks", "New or well cleaned shower curtains and hooks" ],



    [ "Kitchen and Dining room", "Kitchen and Dining room" ],

    [ "Kitchen and dining room tables", "Kitchen and dining room tables" ],
    [ "Chairs (kitchen, dining, office)", "Chairs (kitchen, dining, office)" ],
    [ "Serving carts", "Serving carts" ],
    [ "Small appliances that are clean and in good working order", "Small appliances that are clean and in good working order" ],
    [ "Microwave", "Microwave" ],
    [ "Plates, cups, saucers, bowls", "Plates, cups, saucers, bowls" ],
    [ "Serving dishes/bowls forks, knives, spoons", "Serving dishes/bowls forks, knives, spoons" ],
    [ "Kitchen utensils", "Kitchen utensils" ],
    [ "Pots and pans", "Pots and pans" ],
    [ "Serving dishes and new Tupperware", "Serving dishes and new Tupperware" ],
    [ "Buffets / sideboard / hutches (maximum size 48 “x 24”) – (Wooden shelves only)", "Buffets / sideboard / hutches (maximum size 48 “x 24”) – (Wooden shelves only)" ],
    [ "Tablecloths and placemats", "Tablecloths and placemats" ],



    [ "Living Room", "Living Room" ],

    [ "Couches / sofas / love seats", "Couches / sofas / love seats" ],
    [ "Armchairs and ottomans", "Armchairs and ottomans" ],
    [ "Book cases / shelving units", "Book cases / shelving units" ],
    [ "Coffee tables and end tables", "Coffee tables and end tables" ],
    [ "Lamps", "Lamps" ],
    [ "Televisions newer flat all sizes (we do not take older tube televisions)", "Televisions newer flat all sizes (we do not take older tube televisions)" ],
    [ "TV stands / small entertainment units (maximum size 48 “x 24”)", "TV stands / small entertainment units (maximum size 48 “x 24”)" ],
    [ "Clean area rugs", "Clean area rugs" ],
    [ "Pictures / art work Other", "Pictures / art work Other" ],
    [ "Vacuum cleaners (working)", "Vacuum cleaners (working)" ],
    [ "Sewing machines (working)", "Sewing machines (working)" ],
    [ "Clean functional garbage pails", "Clean functional garbage pails" ],
    [ "Room fans", "Room fans" ],
    [ "Humidifiers / dehumidifiers (working)", "Humidifiers / dehumidifiers (working)" ],
    [ "Desks (maximum size 48” x 24”)", "Desks (maximum size 48” x 24”)" ],
    [ "Carpets (apartment size)", "Carpets (apartment size)" ],
    [ "Computers (working)", "Computers (working)" ],
    [ "Small bar fridge", "Small bar fridge" ]
    ]
  end

  def donation_categories_headings
    [ "Bedroom", "Bathroom", "Kitchen and Dining room", "Living Room" ]
  end
end
