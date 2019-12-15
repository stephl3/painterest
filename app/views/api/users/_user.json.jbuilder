json.extract! user, :id, :username, :first_name, :last_name, :email, :location, :description
json.photo url_for(user.photo) if user.photo.attached?





