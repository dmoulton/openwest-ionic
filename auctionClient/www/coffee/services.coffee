angular.module("auction.services",[]).config(($httpProvider) ->
      delete $httpProvider.defaults.headers.common["X-Requested-With"]
      $httpProvider.defaults.useXDomain = true
      return
).factory "auctionSvc", ($http) ->

  getAuctions: () ->
    $http(
      method: "GET"
      url: "http://localhost:3000/auctions"
      cache: false
    ).error (data, status, headers, config) ->
      console.log "error " + status
      console.log "error: data " + data
      return

  getAuction: (id) ->
    $http(
      method: "GET"
      url: "http://localhost:3000/auctions/#{id}"
      cache: false
    ).error (data, status, headers, config) ->
      console.log "error " + status
      console.log "error: data " + data
      return
