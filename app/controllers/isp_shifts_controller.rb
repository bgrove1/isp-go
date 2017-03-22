class IspShiftsController < ApplicationController

  layout 'admin'

  before_action :confirm_logged_in
  
  def index
    @isp_shifts = IspShift.sorted
  end

  def show
    @isp_shift = IspShift.find(params[:id])
  end

  def new
    @isp_shift = IspShift.new
  end

  def create
    @isp_shift = IspShift.new(isp_shift_params)
    if @isp_shift.save
      flash[:notice] = "Shift added successfully."
      redirect_to(isp_shifts_path)
    else
      render('new')
    end
  end

  def edit
      @isp_shift = IspShift.find(params[:id])
  end

  def update
    @isp_shift = IspShift.find(params[:id])
    if @isp_shift.update_attributes(isp_shift_params)
      flash[:notice] = "Shift updated successfully."
      redirect_to(isp_shift_path(@isp_shift))
    else
      render('edit')
    end
  end

  def delete
    @isp_shift = IspShift.find(params[:id])
  end

  def destroy
    @isp_shift = IspShift.find(params[:id])
    @isp_shift.destroy
    flash[:notice] = "Shift Removed"
    redirect_to(isp_shifts_path)
  end

  private

  def isp_shift_params
    params.require(:isp_shift).permit(:in_store_promoter_id, :time_in, :time_out, :date, :store_number, :prospects_approached, :presentations_given, :leads )
  end
end
