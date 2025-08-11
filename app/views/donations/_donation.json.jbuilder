json.extract! donation, :id, :name, :slug, :quantity, :description, :condition, :pictures, :claimed_at, :picked_up_at, :archived_at, :created_at, :updated_at
json.url donation_url(donation, format: :json)
json.description donation.description.to_s
json.pictures do
  json.array!(donation.pictures) do |picture|
    json.id picture.id
    json.url url_for(picture)
  end
end
