class ChangeFunctionsController < ApplicationController
  before_action :set_change_function, only: [:show, :edit, :update, :destroy]

  # GET /change_functions
  # GET /change_functions.json
  def index
    @change_functions = ChangeFunction.all
  end

  # GET /change_functions/1
  # GET /change_functions/1.json
  def show
  end

  # GET /change_functions/new
  def new
    @change_function = ChangeFunction.new
  end

  # GET /change_functions/1/edit
  def edit
  end

  # POST /change_functions
  # POST /change_functions.json
  def create
    @change_function = ChangeFunction.new(change_function_params)

    respond_to do |format|
      if @change_function.save
        format.html { redirect_to @change_function, notice: 'Change function was successfully created.' }
        format.json { render :show, status: :created, location: @change_function }
      else
        format.html { render :new }
        format.json { render json: @change_function.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /change_functions/1
  # PATCH/PUT /change_functions/1.json
  def update
    respond_to do |format|
      if @change_function.update(change_function_params)
        format.html { redirect_to @change_function, notice: 'Change function was successfully updated.' }
        format.json { render :show, status: :ok, location: @change_function }
      else
        format.html { render :edit }
        format.json { render json: @change_function.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /change_functions/1
  # DELETE /change_functions/1.json
  def destroy
    @change_function.destroy
    respond_to do |format|
      format.html { redirect_to change_functions_url, notice: 'Change function was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_change_function
      @change_function = ChangeFunction.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def change_function_params
      params.require(:change_function).permit(:branch_id, :collaborator, :cost_center_id, :current_position, :new_position, :date_change, :status, :user_id)
    end
end
