json.extract! job, :id, :title, :description, :commitment, :location, :category, :remote, :created_at, :updated_at
json.url job_url(job, format: :json)
