class OffersController < ApplicationController

  before_action :set_offer, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [ :index, :show ]

  def index
    @offers = Offer.all
  end

  def new
    @offer = Offer.new
  end

  def show
    #set_offer
    #@offer = Offer.find(params[:id])
  end

  def edit
  end

  def create
    @offer = Offer.new(offer_params)
    @offer.user = current_user
    if @offer.save
      redirect_to user_offers_path
    else
      render 'new'
    end
    # @offer = Offer.new(offer_params)

    # respond_to do |format|
    #   if @offer.save
    #     format.html { redirect_to @offer, notice: 'Offer was successfully created.' }
    #     format.json { render :show, status: :created, location: @offer }
    #   else
    #     format.html { render :new }
    #     format.json { render json: @offer.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  def update
    @offer.update(offer_params)
    redirect_to offer_path(@offer)

    # respond_to do |format|
    #   if @offer.update(offer_params)
    #     format.html { redirect_to @offer, notice: 'offer was successfully updated.' }
    #     format.json { head :no_content }
    #   else
    #     format.html { render action: 'edit' }
    #     format.json { render json: @offer.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  def destroy
    @offer.destroy
    redirect_to offers_path
  end

  private

  def set_offer
    @offer = Offer.find(params[:id])
  end

  def offer_params
    params.require(:offer).permit(:name, :description, :price, :category_id)
  end
end
