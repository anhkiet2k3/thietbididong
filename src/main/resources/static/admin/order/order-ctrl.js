app.controller("orderall", function($scope, $http) {

	$scope.order = [];

	$scope.initialize = function() {
		$http.get("/rest/orders/order-all").then(resp => {
			$scope.order = resp.data;
			console.log($scope.order);
		});
	}

	$scope.initialize();

});



app.controller("orderdetail", function($scope, $http, $routeParams, $window) {
	
	$scope.account = {};
	$scope.order = {};
	$scope.orderdetail = [];


	$scope.initialize = function() {

		$scope.idOrder = $routeParams.idOrder;
		console.log($scope.idOrder);

		$http.get("/rest/accounts/accountByIdOrder/" + $scope.idOrder).then(resp => {
			$scope.account = resp.data;
			console.log($scope.account);
		});


		$http.get("/rest/orders/order-by-id/" + $scope.idOrder).then(resp => {
			$scope.order = resp.data;
			console.log($scope.order);
		});

		$http.get("/rest/orders/order-detail/" + $scope.idOrder).then(resp => {
			$scope.orderdetail = resp.data;
			console.log($scope.orderdetail);
		});
		
	}

	$scope.status = (idOrder, status) =>{
		
		$http.get("/rest/orders/update-status/"+idOrder+"/"+status).then(resp => {
			 $window.location.reload();
		});
		
	};
	
	
	$scope.initialize();

});