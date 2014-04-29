AuctionServer::App.controllers :auctions do
  before do
    content_type :json

    #For Cross origin requests from the client
    # http://thibaultdenizet.com/tutorial/cors-with-angular-js-and-sinatra/
    headers 'Access-Control-Allow-Origin' => '*',
            'Access-Control-Allow-Methods' => ['OPTIONS', 'GET', 'POST'],
            'Access-Control-Allow-Headers' => 'Content-Type'
  end

  # get :index, :map => '/foo/bar' do
  #   session[:foo] = 'bar'
  #   render 'index'
  # end

  # get :sample, :map => '/sample/url', :provides => [:any, :js] do
  #   case content_type
  #     when :js then ...
  #     else ...
  # end

  # get :foo, :with => :id do
  #   'Maps to url '/foo/#{params[:id]}''
  # end

  # get '/example' do
  #   'Hello world!'
  # end

  get :index do
    auctions = Auction.all

    auctions.to_json
  end

  get :show, :map => '/auctions/:id' do |id|
    auction = Auction.find(id)
    auction.to_json
  end

end
