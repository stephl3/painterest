@boards.each do |board|
  json.set! board.id do
    json.partial! "api/boards/board", board: board
    if board.pins.length > 0
      json.firstPin do
        json.partial! "api/pins/pin", pin: board.pins[0]
      end
    end
  end
end