angular.module('starter.services', [])

/**
 * A simple example service that returns some data.
 */
.factory('Friends', function() {
  // Might use a resource here that returns a JSON array

  // Some fake testing data
  var friends = [
    { id: 0, name: 'Scruff McGruff', age: 21 },
    { id: 1, name: 'G.I. Joe', age: 75 },
    { id: 2, name: 'Miss Frizzle', age: 32 },
    { id: 3, name: 'Ash Ketchum', age: 15 }
  ];

  return {
    all: function() {
      return friends;
    },
    get: function(friendId) {
      // Simple index lookup
      return friends[friendId];
    }
  }
});
