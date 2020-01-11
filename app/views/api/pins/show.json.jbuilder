json.pins do
  json.set! @pin.id do
    json.partial! "api/pins/pin", pin: @pin
    json.boardTitle @pin.boards.pluck(:title)[0]
    json.username @pin.user.username
    json.userPhoto @pin.user.photo
    json.firstName @pin.user.first_name
    json.lastName @pin.user.last_name
  end
end