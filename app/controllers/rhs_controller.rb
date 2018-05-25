class RhsController < ApplicationController
  before_action :set_rh, only: [:show, :edit, :update, :destroy]

  # GET /rhs
  # GET /rhs.json
  def index
    @rhs = Rh.all
  end

  # GET /rhs/1
  # GET /rhs/1.json
  def show
  end

  # GET /rhs/new
  def new
    @rh = Rh.new
  end

  # GET /rhs/1/edit
  def edit
  end

  # POST /rhs
  # POST /rhs.json
  def create
    @rh = Rh.new(rh_params)

    respond_to do |format|
      if @rh.save
        format.html { redirect_to @rh, notice: 'Rh was successfully created.' }
        format.json { render :show, status: :created, location: @rh }
      else
        format.html { render :new }
        format.json { render json: @rh.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rhs/1
  # PATCH/PUT /rhs/1.json
  def update
    respond_to do |format|
      if @rh.update(rh_params)
        format.html { redirect_to @rh, notice: 'Rh was successfully updated.' }
        format.json { render :show, status: :ok, location: @rh }
      else
        format.html { render :edit }
        format.json { render json: @rh.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rhs/1
  # DELETE /rhs/1.json
  def destroy
    @rh.destroy
    respond_to do |format|
      format.html { redirect_to rhs_url, notice: 'Rh was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rh
      @rh = Rh.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rh_params
      params.require(:rh).permit(:name, :email)
    end
end
