import React from "react";
import { connect } from "react-redux";

import { fetchBoard, updateBoard, deleteBoard } from "../../actions/board_actions";
import { closeModal } from "../../actions/modal_actions";
import BoardForm from "./board_form";


class EditBoardForm extends React.Component {
  componentDidMount() {
    this.props.fetchBoard(this.props.match.params.boardId);
  }

  render() {
    const { board, errors, formType, processForm } = this.props;

    return (!board) ? null : (
      <BoardForm
        board={board}
        errors={errors}
        formType={formType}
        processForm={processForm}
      />
    );
  }
}


const mapStateToProps = (state, ownProps) => ({
  board: state.entities.boards[ownProps.match.params.boardId],
  errors: state.errors.board,
  formType: "Edit your board"
});

const mapDispatchToProps = dispatch => ({
  fetchBoard: boardId => dispatch(fetchBoard(boardId)),
  processForm: board => dispatch(updateBoard(board)),
  deleteBoard: boardId => dispatch(deleteBoard(boardId)),
  closeModal: () => dispatch(closeModal())
});

export default connect(mapStateToProps, mapDispatchToProps)(EditBoardForm);