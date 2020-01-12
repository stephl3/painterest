@boards.each do |board|
  json.set! board.id do
    json.partial! "api/boards/board", board: board
    json.firstPin do
      json.partial! "api/pins/pin", pin: board.pins[0]
    end
  end
end