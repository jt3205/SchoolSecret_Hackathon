function Back(argument) {
	router.push("Main");
}

function Select(argument) {
	router.push("SelectPeople");
}

module.exports = {
	Back:Back,
	Select:Select
};