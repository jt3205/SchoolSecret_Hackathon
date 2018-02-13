var Observable = require("FuseJS/Observable");
var data = Observable();
var curpage = 0;

fetch("http://192.168.43.79:3242/secret?page=" + curpage)
	.then(function (response) { return response.json(); })
	.then(function (responseObject) {
		data.replaceAll(responseObject);
	});

module.exports = {
	dataSource: data
};