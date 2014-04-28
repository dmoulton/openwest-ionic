# Ionic Starter App

# angular.module is a global place for creating, registering and retrieving Angular modules
# 'starter' is the name of this angular module example (also set in a <body> attribute in index.html)
# the 2nd parameter is an array of 'requires'
# 'starter.controllers' is found in controllers.js

# org.apache.cordova.statusbar required
angular.module("auction", [
  "ionic"
  "auction.controllers"
  "auction.services"
]).run(($ionicPlatform) ->
  $ionicPlatform.ready ->
    StatusBar.styleDefault()  if window.StatusBar
    return

  return
).config ($stateProvider, $urlRouterProvider) ->
  $stateProvider.state("app",
    url: "/app"
    abstract: true
    templateUrl: "templates/menu.html"
    controller: "AppCtrl"
  ).state("app.about",
    url: "/about"
    views:
      menuContent:
        templateUrl: "templates/search.html"
  ).state("app.auctions",
    url: "/auctions"
    views:
      menuContent:
        templateUrl: "templates/auctions.html"
        controller: "AuctionsCtrl"
  ).state "app.single",
    url: "/auctions/:auctionId"
    views:
      menuContent:
        templateUrl: "templates/auction.html"
        controller: "AuctionCtrl"


  # if none of the above states are matched, use this as the fallback
  $urlRouterProvider.otherwise "/app/auctions"
  return
