class MarketingManagersController < ApplicationController
  before_action :set_marketing_manager, only: [:show, :edit, :update, :destroy]
  before_action :confirm_logged_in

  layout 'admin'

  # GET /marketing_managers
  # GET /marketing_managers.json
  def index
    @marketing_managers = MarketingManager.all
  end

  # GET /marketing_managers/1
  # GET /marketing_managers/1.json
  def show
  end

  # GET /marketing_managers/new
  def new
    @marketing_manager = MarketingManager.new
  end

  # GET /marketing_managers/1/edit
  def edit
  end

  # POST /marketing_managers
  # POST /marketing_managers.json
  def create
    @marketing_manager = MarketingManager.new(marketing_manager_params)

    respond_to do |format|
      if @marketing_manager.save
        format.html { redirect_to @marketing_manager, notice: 'Marketing manager was successfully created.' }
        format.json { render :show, status: :created, location: @marketing_manager }
      else
        format.html { render :new }
        format.json { render json: @marketing_manager.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /marketing_managers/1
  # PATCH/PUT /marketing_managers/1.json
  def update
    respond_to do |format|
      if @marketing_manager.update(marketing_manager_params)
        format.html { redirect_to @marketing_manager, notice: 'Marketing manager was successfully updated.' }
        format.json { render :show, status: :ok, location: @marketing_manager }
      else
        format.html { render :edit }
        format.json { render json: @marketing_manager.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /marketing_managers/1
  # DELETE /marketing_managers/1.json
  def destroy
    @marketing_manager.destroy
    respond_to do |format|
      format.html { redirect_to marketing_managers_url, notice: 'Marketing manager was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_marketing_manager
      @marketing_manager = MarketingManager.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def marketing_manager_params
      params.require(:marketing_manager).permit(:first_name, :last_name, :username, :email, :password, :leads_per_hour)
    end
end
