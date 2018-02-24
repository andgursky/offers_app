class OffersController < ApplicationController
  respond_to :html, :json

  def index
    @offers = Offer.all
  end

  def show
    @my_offers = User.find(params["id"]).offers
    render :show
  end

  def create
    if params["offers"]
      user = User.find params["id"]
      offer = user.offers.create(name: params["offers"]["name"],
                                 advertiser: params["offers"]["advertiser"],
                                 payout: params["offers"]["payout"])
      redirect_to action: :show
    else
      render :create
    end
  end

  def update
    @offer = Offer.find(params["id"])
    @offer.update_attributes(offer_params)
    respond_with @offer
  end

  private

  def offer_params
    params.require(:offer).permit(:name, :advertiser, :payout)
  end
end
