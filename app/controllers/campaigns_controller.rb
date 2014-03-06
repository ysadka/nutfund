class CampaignsController < ApplicationController
  def homepage
    
  end

  def index
    @campaigns = Campaign.all
  end

  def new
    @campaign = Campaign.new
  end

  def create
    campaign = Campaign.new(campaign_params)
    if campaign.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @campaign = Campaign.find_by(id: params[:id])
  end

  def update
    
  end

  def edit
    
  end

  def destroy
    campaign = Campaign.find_by(id: params[:id])
    campaign.destroy
    redirect_to root_path
  end

  private

  def campaign_params
    params.require(:campaign).permit(:name, :end_date, :funds_raised, :description)
  end
end
