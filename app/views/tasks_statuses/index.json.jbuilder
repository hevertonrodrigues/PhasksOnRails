json.array!(@tasks_statuses) do |tasks_status|
  json.extract! tasks_status, :id, :name
  json.url tasks_status_url(tasks_status, format: :json)
end
