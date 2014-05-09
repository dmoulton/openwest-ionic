angular.module("auction.controllers", []).controller("AppCtrl", ($scope) ->
).controller("AuctionsCtrl", ($scope,auctionSvc) ->
  auctionSvc.getAuctions().then (result) ->
    $scope.auctions = result.data
    return

).controller "AuctionCtrl", ($scope, $stateParams, $ionicModal, auctionSvc) ->
  auctionSvc.getAuction($stateParams['auctionId']).then (result) ->
    $scope.auction = result.data
    return

  # bid modal
  $ionicModal.fromTemplateUrl("/templates/bid.html",
    scope: $scope
    animation: "slide-in-up"
  ).then (modal) ->
    $scope.bidModal = modal
    return

  # share modal
  $ionicModal.fromTemplateUrl("/templates/share.html",
    scope: $scope
    animation: "slide-in-up"
  ).then (modal) ->
    $scope.shareModal = modal
    return

  #Control modals
  $scope.openModal = (m) ->
    switch m
      when "bid" then $scope.bidModal.show()
      when "share" then $scope.shareModal.show()
    return

  $scope.closeModal = (m) ->
    switch m
      when "bid" then $scope.bidModal.hide()
      when "share" then $scope.shareModal.hide()
    return

  $scope.$on "$destroy", ->
    $scope.bidModal.remove()
    $scope.shareModal.remove()
    return

  $scope.placeBid = ->
    $scope.bidModal.remove()
    return
