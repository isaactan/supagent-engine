json.extract! supaagent, :id, :applicationid, :name, :email, :idimage, :validation, :created_at, :updated_at :idnumber
json.url supaagent_url(supaagent, format: :json)