angular.module("auction.controllers", []).controller("AppCtrl", ($scope) ->
).controller("AuctionsCtrl", ($scope,auctionSvc) ->
  $scope.auctions = auctionSvc.getAuctions()
  return
).controller "AuctionCtrl", ($scope, $stateParams, $ionicModal, auctionSvc) ->
  $scope.auction = auctionSvc.getAuction($stateParams['auctionId'])

  $ionicModal.fromTemplateUrl("/templates/bid.html",
    scope: $scope
    animation: "slide-in-up"
  ).then (modal) ->
    $scope.modal = modal
    return

  $scope.openModal = ->
    $scope.modal.show()
    return

  $scope.closeModal = ->
    $scope.modal.hide()
    return

  #Cleanup the modal when we're done with it!
  $scope.$on "$destroy", ->
    $scope.modal.remove()
    return

  $scope.placeBid = ->
    $scope.modal.remove()
    return
