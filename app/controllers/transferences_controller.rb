class TransferencesController < ApplicationController
  before_action :set_transference, only: [:show, :edit, :update, :destroy]

  # GET /transferences
  # GET /transferences.json
  def index
    @transferences = Transference.all
  end

  # GET /transferences/1
  # GET /transferences/1.json
  def show
  end

  # GET /transferences/new
  def new
    @transference = Transference.new
  end

  # GET /transferences/1/edit
  def edit
  end

  # POST /transferences
  # POST /transferences.json
  def create
    @transference = Transference.new(transference_params)

    respond_to do |format|
      if @transference.save
        format.html { redirect_to @transference, notice: 'Transference was successfully created.' }
        format.json { render :show, status: :created, location: @transference }
      else
        format.html { render :new }
        format.json { render json: @transference.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /transferences/1
  # PATCH/PUT /transferences/1.json
  def update
    respond_to do |format|
      if @transference.update(transference_params)
        format.html { redirect_to @transference, notice: 'Transference was successfully updated.' }
        format.json { render :show, status: :ok, location: @transference }
      else
        format.html { render :edit }
        format.json { render json: @transference.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /transferences/1
  # DELETE /transferences/1.json
  def destroy
    @transference.destroy
    respond_to do |format|
      format.html { redirect_to transferences_url, notice: 'Transference was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_transference
      @transference = Transference.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def transference_params
      params.require(:transference).permit(:new_cost_center, :old_cost_center, :cost_center_id, :status, :who_ask, :user_id, :collaborator, :new_branch, :old_branch, :branch_id, :new_company, :old_company, :company_id, :tranference_date, :old_city, :new_city)
    end
end
