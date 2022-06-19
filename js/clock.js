const todayDate = document.getElementById('todayDate');

var clockFormat = '';

function displayClock() {
	var clock = moment().format(clockFormat);
	todayDate.innerHTML = clock;
	setTimeout(displayClock, 1000);
}

$(document).ready(function () {
	const ClockFormatList = [
		'HH:mm:ss A',
		'HH:mm A',
		'DD/M/YYYY',
		'M/DD/YYYY',
		'Do MMM YYYY',
		'MMM Do YYYY',
		'D. MMMM YYYY',
	];
	clockFormat = ClockFormatList[0];
	displayClock();

	var count = 0;
	todayDate.addEventListener('click', function (e) {
		count = count + 1;
		if (count === ClockFormatList.length) count = 0;
		clockFormat = ClockFormatList[count];
		displayClock();
	});
});
