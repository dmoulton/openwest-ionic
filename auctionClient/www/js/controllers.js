angular.module('auction.controllers', [])

.controller('AppCtrl', function($scope) {
})

.controller('AuctionsCtrl', function($scope) {
  $scope.auctions = [
    { title: 'Sombrero', id: 1 },
    { title: 'Rats', id: 2 },
    { title: 'Big Dog', id: 3 },
    { title: 'Small Dog', id: 4 },
    { title: 'Even Smaller Dog', id: 5 },
    { title: 'Ponies', id: 6 }
  ];
})

.controller('AuctionCtrl', function($scope, $stateParams) {
})
