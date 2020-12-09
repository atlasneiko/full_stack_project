import React from "react";
import { Link } from "react-router-dom";
export default ({ user }) => (
	<li>
		<Link to={`/users/${user.id}`}>{user.username}</Link>
	</li>
);
