import React from "react";

class EditBoardForm extends React.Component {
  componentDidMount() {
    this.props.fetchBoard(this.props.match.params.boardId);
  }

  render() {
    const { board, errors, formType, processForm } = this.props;

    return (!board) ? null : (
      <div>
        hm
      </div>
    );
  }
}

export default EditBoardForm;