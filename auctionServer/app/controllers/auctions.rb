AuctionServer::App.controllers :auctions do
  before do
    content_type :json

    #For Cross origin requests from the client
    # http://thibaultdenizet.com/tutorial/cors-with-angular-js-and-sinatra/
    headers 'Access-Control-Allow-Origin' => '*',
            'Access-Control-Allow-Methods' => ['OPTIONS', 'GET', 'POST'],
            'Access-Control-Allow-Headers' => 'Content-Type'
  end

  get :index do
    auctions = Auction.all

    auctions.to_json
  end

  get :show, :map => '/auctions/:id' do |id|
    auction = Auction.find(id)
    auction.to_json
  end

end
