json.extract! charity, :id, :name, :slug, :description, :logo, :contact_email, :archived_at, :created_at, :updated_at
json.url charity_url(charity, format: :json)
json.description charity.description.to_s
json.logo url_for(charity.logo)
