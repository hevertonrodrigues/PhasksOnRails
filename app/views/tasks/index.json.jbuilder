json.array!(@tasks) do |task|
  json.extract! task, :id, :task, :description, :status, :collaborator_id
  json.url task_url(task, format: :json)
end
