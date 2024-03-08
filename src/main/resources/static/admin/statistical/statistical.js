app.controller("statistical", function($scope, $http) {

	const plugins = [ChartDataLabels];

	$scope.xValues1 = [];
	$scope.yValues1 = [];

	$scope.xValues = [];
	$scope.yValues = [];

	$scope.initialize = () => {

		$http.get("/dataStatisticaOrder").then(resp => {

			resp.data.forEach(function(item) {
				$scope.xValues1.push(item.status);
				$scope.yValues1.push(item.count);
				console.log("data", $scope.xValues1);
				console.log("data", $scope.yValues1);
			});
			createChart();
		});


		$http.get("/total-year").then(resp => {

			resp.data.forEach(function(item) {

				$scope.xValues.push(item.year);
				$scope.yValues.push(item.total);
			});
			chartYear();
		});

		//createChart();
		//chartYear();

	}

	$scope.initialize();

	function createChart() {
		var xValues1 = $scope.xValues1;
		var yValues1 = $scope.yValues1;
		// setup 
		const dataUser = {
			labels: xValues1,
			datasets: [{
				label: 'My First Dataset',
				data: yValues1,
				backgroundColor: [
					'rgb(255, 99, 132)',
					'rgb(54, 162, 235)',
					'rgb(255, 205, 86)',
					'rgba(255, 26, 104, 1)',
					'rgba(54, 162, 235, 1)',
					'rgba(255, 206, 86, 1)',
					'rgba(75, 192, 192, 1)',
					'rgba(153, 102, 255, 1)',
					'rgba(255, 159, 64, 1)',
					'rgba(0, 0, 0, 1)'
				],
				hoverOffset: 4
			}]
		};

		// config 
		const config = {
			type: 'pie',
			data: dataUser,
			plugins: [ChartDataLabels]
		};


		const myChartUser = new Chart(
			document.getElementById('myChartUser'),
			config
		);
	}

	///////////////////////////////////////////////////////////////



	function chartYear() {
		var xValues = $scope.xValues;
	var yValues = $scope.yValues;
		const data = {
			labels: xValues,
			datasets: [{
				label: 'Doanh thu theo năm',
				data: yValues,
				backgroundColor: [
					'rgba(255, 26, 104, 0.2)',
					'rgba(54, 162, 235, 0.2)',
					'rgba(255, 206, 86, 0.2)',
					'rgba(75, 192, 192, 0.2)',
					'rgba(153, 102, 255, 0.2)',
					'rgba(255, 159, 64, 0.2)',
					'rgba(0, 0, 0, 0.2)'
				],
				borderColor: [
					'rgba(255, 26, 104, 1)',
					'rgba(54, 162, 235, 1)',
					'rgba(255, 206, 86, 1)',
					'rgba(75, 192, 192, 1)',
					'rgba(153, 102, 255, 1)',
					'rgba(255, 159, 64, 1)',
					'rgba(0, 0, 0, 1)'
				],
				borderWidth: 1
			}]
		};

		// config 
		const config1 = {
			type: 'bar',
			data,
			options: {
				scales: {
					y: {
						beginAtZero: true
					}
				}
			},
			plugins: [ChartDataLabels]
		};

		// render init block
		const myChart = new Chart(
			document.getElementById('myChart'),
			config1
		);
	}

});
