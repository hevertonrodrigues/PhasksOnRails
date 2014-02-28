json.array!(@tasks_lists) do |tasks_list|
  json.extract! tasks_list, :id, :name, :description
  json.url tasks_list_url(tasks_list, format: :json)
end
