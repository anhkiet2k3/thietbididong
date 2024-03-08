app = angular.module("admin-app", ["ngRoute"]);
    app.config(function ($routeProvider) {
        $routeProvider
            .when("/home", { templateUrl: "/admin/home-admin.html" })
            .when("/authorizing", { templateUrl: "/admin/authority/index.html", controller: "authority-ctrl" })
            .when("/product", { templateUrl: "/admin/product/product.html" , controller: "product-ctrl"})
            .when("/subjectlist", { templateUrl: "subjectlist.html", controller: "subjectlist" })
            .when("/orderall", { templateUrl: "/admin/order/allorder.html", controller: "orderall" })
 			.when("/statistical", { templateUrl: "/admin/statistical/statistical.html", controller: "statistical" })
			.when("/order-detail/:idOrder", { templateUrl: "/admin/order/orderdetail.html", controller: "orderdetail" })
            .otherwise({ templateUrl: "home.html" })
    });