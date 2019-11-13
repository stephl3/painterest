@boardsPins.each do |boardPin|
  json.set! boardPin.id do
    json.partial "api/boards_pins/board_pin", boardPin: boardPin
  end
end