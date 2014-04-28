angular.module("auction.services",[]).factory "auctionSvc", () ->
  _auctions = [
    {'id':1,
    'title':'Sombrero',
    'description':'Hey, it\'s a sombrero, what more do you need to know',
    'image_src':'/img/sombrero.jpg',
    'increment':5.00,
    'current_bid':25.0,
    'bids':5}
    ,
    {'id':2,
    'title':'Viking Warrior',
    'description':'I have it on good authority that this is what Ragnar Lothbrok really looked like',
    'image_src':'/img/viking_warrior.jpg',
    'increment':5.00,
    'current_bid':300.0,
    'bids':25}
    ,
    {'id':3,
    'title':'Large Dog',
    'description':'This is Tipper. We\'ll entertain all offers on this one.',
    'image_src':'/img/tipper.jpg',
    'increment':5.00,
    'current_bid':25.0,
    'bids':0}
    ,
    {'id':4,
    'title':'Small Dog',
    'description':'This is Rose. She is about to have puppies any day now. We think they will be cute.',
    'image_src':'/img/rose.jpg',
    'increment':10.00,
    'current_bid':250.0,
    'bids':15}
    ,
    {'id':5,
    'title':'Even Smaller Dog',
    'description':'This is Jack. He is about to become a dad for the first time. He is the nicest dog you will ever meet.',
    'image_src':'/img/jack.jpg',
    'increment':10.00,
    'current_bid':250.0,
    'bids':9}
  ]
  getAuctions: () ->
    _auctions

  getAuction: (id) ->
    x = _.find _auctions, (auction) -> auction.id is parseInt(id)
    x