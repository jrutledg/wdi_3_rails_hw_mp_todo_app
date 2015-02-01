json.array!(@notes) do |note|
  json.extract! note, :id, :body, :important, :task_id
  json.url note_url(note, format: :json)
end