import * as BoardPinAPIUtil from "../util/board_pin_api_util";

// action types
export const RECEIVE_ALL_BOARDS_PINS = "RECEIVE_ALL_BOARDS_PINS";
export const RECEIVE_BOARD_PIN = "RECEIVE_BOARD_PIN";
export const REMOVE_BOARD_PIN = "REMOVE_BOARD_PIN";
export const RECEIVE_BOARD_PIN_ERRORS = "RECEIVE_BOARD_PIN_ERRORS";

// action creators
const receiveAllBoardsPins = boardsPins => ({
  type: RECEIVE_ALL_BOARDS_PINS,
  boardsPins
});

const receiveBoardPin = boardPin => ({
  type: RECEIVE_BOARD_PIN,
  boardPin
});

const removeBoardPin = boardPinId => ({
  type: REMOVE_BOARD_PIN,
  boardPinId
});

const receiveBoardPinErrors = errors => ({
  type: RECEIVE_BOARD_PIN_ERRORS,
  errors
})

// thunk action creators
export const fetchAllBoardsPins = () => dispatch => (
  BoardPinAPIUtil.fetchAllBoardsPins().then(
    boardsPins => dispatch(receiveAllBoardsPins(boardsPins))
  )
);

export const createBoardPin = boardPin => dispatch => (
  BoardPinAPIUtil.createBoardPin(boardPin).then(
    board => dispatch(receiveBoardPin(boardPin)),
    err => dispatch(receiveBoardPinErrors(err.responseJSON))
  )
);

export const deleteBoardPin = boardPinId => dispatch => (
  BoardPinAPIUtil.deleteBoardPin(boardPinId).then(
    boardPin => dispatch(removeBoardPin(boardPin.id)),
  )
);