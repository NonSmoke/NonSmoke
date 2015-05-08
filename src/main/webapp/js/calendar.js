
	app.controller("calendarController", function($scope, $http){
<<<<<<< HEAD
//		alert("calendarController");
=======
		
>>>>>>> 2f52c30ce77ad2d0f28f2e1fe63610f581259875
		var date = new Date();
		var zz = 0;
		$scope.cal = [];
		$scope.yy = null;
		$scope.mm = null;
		$scope.tt = _date(0,date.getDate()).getTime();
		$scope.ccc = ['#000000','#FFFFFF','#9ACD32','#BC8F8F','#E9967A','#D2B48C','#5F9EA0','#9370DB','#808080','#E6F6FA'];

		function _date(x1,x2){
			if(typeof x2 === "undefined") x2 = 1;
			return new Date(date.getFullYear(),date.getMonth()+x1,x2);
		}

		$scope._set_cal = function(n){

			n == 0 ? zz = 0 : zz+= n;

			$scope.cal = [];

			for(i=1;i<=42;i++){
				var qqq = _date(zz,i-_date(zz).getDay());
				$scope.cal.push({
					yy: qqq.getFullYear(),
					mm: qqq.getMonth(),
					dd: qqq.getDate(),
					tt: qqq.getTime(),
					e: null
				});
			}

			$scope.yy = _date(zz).getFullYear();
			$scope.mm = _date(zz).getMonth();

			$http.get("/calendar/" + $scope.cal[0].tt + "/" + $scope.cal[41].tt).success(function(data){
				for(i in $scope.cal){
					$scope.cal[i].e = _.where(data, {tt: $scope.cal[i].tt}); 
				}
			});

		}

		$scope._select = function(x){
			$scope.z = angular.copy(x);
			if(!$scope.z._id){
				$scope.z.color = $scope.ccc[0];
				$scope.z.background = $scope.ccc[1];
			}
		}

		$scope._deselect = function(){
			$scope.z = null;
		}

		$scope._add = function(){
			
			$http.post("/calendar", _.omit($scope.z, ["e"])).success(function(data){

				$scope._set_cal(null);
			});
			$scope.z = null;
			alert("등록되었습니다.....");
		}

		$scope._edit = function(){
			$http.put("/calendar/" + $scope.z._id, $scope.z).success(function(data){
				$scope._set_cal(null);
			});
			$scope.z = null;
		}

		$scope._delete = function(){
			alert("닫기");
			$http.Delete("/calendar/" + $scope.z._id).success(function(data){
				$scope._set_cal(null);
			});
			$scope.z = null;
		}


		$scope._set_cal(0);

	})