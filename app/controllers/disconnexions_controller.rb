class DisconnexionsController < ApplicationController
  before_action :set_disconnexion, only: [:show, :edit, :update, :destroy]

  # GET /disconnexions
  # GET /disconnexions.json
  def index
    @disconnexions = Disconnexion.all
  end

  # GET /disconnexions/1
  # GET /disconnexions/1.json
  def show
  end

  # GET /disconnexions/new
  def new
    @disconnexion = Disconnexion.new
  end

  # GET /disconnexions/1/edit
  def edit
  end

  # POST /disconnexions
  # POST /disconnexions.json
  def create
    @disconnexion = Disconnexion.new(disconnexion_params)

    respond_to do |format|
      if @disconnexion.save
        format.html { redirect_to @disconnexion, notice: 'Disconnexion was successfully created.' }
        format.json { render :show, status: :created, location: @disconnexion }
      else
        format.html { render :new }
        format.json { render json: @disconnexion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /disconnexions/1
  # PATCH/PUT /disconnexions/1.json
  def update
    respond_to do |format|
      if @disconnexion.update(disconnexion_params)
        format.html { redirect_to @disconnexion, notice: 'Disconnexion was successfully updated.' }
        format.json { render :show, status: :ok, location: @disconnexion }
      else
        format.html { render :edit }
        format.json { render json: @disconnexion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /disconnexions/1
  # DELETE /disconnexions/1.json
  def destroy
    @disconnexion.destroy
    respond_to do |format|
      format.html { redirect_to disconnexions_url, notice: 'Disconnexion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_disconnexion
      @disconnexion = Disconnexion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def disconnexion_params
      params.require(:disconnexion).permit(:collaborator, :cost_center_id, :charge, :date_admission, :observation, :company_initiative, :employee_initiative, :agreed_disconexion, :antecipation_contract, :contract_term, :date_notice, :readmission, :reason_not_readmission, :user_id, :status)
    end
end
