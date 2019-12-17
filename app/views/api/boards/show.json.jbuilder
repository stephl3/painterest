json.boards do
  json.set! @board.id do
    json.partial! "api/boards/board", board: @board
    json.pinIds @board.pins.pluck(:id)
  end
end

json.pins do
  @board.pins.each do |pin|
    json.set! pin.id do
      json.partial! "api/pins/pin", pin: pin
    end
  end
end