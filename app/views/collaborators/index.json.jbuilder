json.array!(@collaborators) do |collaborator|
  json.extract! collaborator, :id, :name, :email, :role_id
  json.url collaborator_url(collaborator, format: :json)
end
