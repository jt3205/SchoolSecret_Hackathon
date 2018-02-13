function Logout(argument) {
	router.push("Login");
}

function Option(argument) {
	router.push("Option");
}

function Add(argument) {
	router.push("Add");
}

module.exports = {
	Logout:Logout,
	Option:Option,
	Add:Add
};