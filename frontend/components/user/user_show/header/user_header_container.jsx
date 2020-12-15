import React from "react";
import { connect } from "react-redux";
import UserHeader from "./user_header";
const mSTP = (state, ownProps) => {
	// console.log(state);
	// console.log(ownProps);
	return {
		history: ownProps.history,
		user: state.entities.users[ownProps.match.params.userId],
	};
};

const mDTP = (dispatch) => ({});

export default connect(mSTP, mDTP)(UserHeader);
