class InStorePromotersController < ApplicationController

  layout 'admin'

  before_action :confirm_logged_in

  def index
    @in_store_promoters = InStorePromoter.sorted
  end

  def show
    @in_store_promoter = InStorePromoter.find(params[:id])
  end

  def new
    @in_store_promoter = InStorePromoter.new({:firstname => 'Default'})
  end

  def create
    Rails.logger.debug in_store_promoter_params.inspect
    @in_store_promoter = InStorePromoter.new(in_store_promoter_params)
    if @in_store_promoter.save
      flash[:notice] = "in_store_promoter created successfully."
      redirect_to(in_store_promoters_path)
    else
      render('new')
    end
  end

  def edit
    @in_store_promoter = InStorePromoter.find(params[:id])
  end

  def update
    @in_store_promoter = InStorePromoter.find(params[:id])
    if @in_store_promoter.update_attributes(in_store_promoter_params)
      flash[:notice] = "in_store_promoter updated successfully."
      redirect_to(in_store_promoter_path(@in_store_promoter))
    else
      render('edit')
    end
  end

  def delete
    @in_store_promoter = InStorePromoter.find(params[:id])
  end

  def destroy
    @in_store_promoter = InStorePromoter.find(params[:id])
    @in_store_promoter.destroy
    flash[:notice] = "ISP '#{@in_store_promoter.firstname} #{@in_store_promoter.lastname}' removed from database forever"
    redirect_to(in_store_promoters_path)
  end

  private

  def in_store_promoter_params
    params.require(:in_store_promoter).permit(:firstname, :lastname, :territory_id, :marketing_manager_id, :leads_per_hour)
  end

end
