export const fetchAllBoardsPins = () => (
  $.ajax({
    method: "GET",
    url: `/api/boards_pins`
  })
);

export const createBoardPin = boardPin => (
  $.ajax({
    method: "POST",
    url: `/api/boards_pins`,
    data: { boardPin }
  })
);

export const deleteBoardPin = boardPinId => (
  $.ajax({
    method: "DELETE",
    url: `/api/boards_pins/${boardPinId}`
  })
);
