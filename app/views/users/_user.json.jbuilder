json.extract! user, :id, :first_name, :first_name, :username, :password, :email, :phone, :created_at, :updated_at
json.url user_url(user, format: :json)
