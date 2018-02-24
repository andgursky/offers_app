class OffersController < ApplicationController
  def index
    @offers = Offer.all
  end

  def show
    @my_offers = User.find(params["id"]).offers.as_json
    render :show
  end

  def create
    binding.pry
    user = User.find params["user_id"]
    offer = user.offers.create(name: params["name"],
                               advertiser: params["advertiser"],
                               payout: params["payout"])
    @offers << offer
  end

  def update
  end
end
