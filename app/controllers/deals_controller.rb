class DealsController < ApplicationController

  def create
    @offer = Offer.find(params[:offer_id])
    @deal = Deal.new
    @deal.user = current_user
    @deal.offer = @offer
    if @deal.save
      flash[:notice] = "Compra efetuada"
      redirect_to offer_path(@offer)
    else
      render 'offers/show'
    end
  end
end


