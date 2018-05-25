class ChangeSalariesController < ApplicationController
  before_action :set_change_salary, only: [:show, :edit, :update, :destroy]

  # GET /change_salaries
  # GET /change_salaries.json
  def index
    @change_salaries = ChangeSalary.all
  end

  # GET /change_salaries/1
  # GET /change_salaries/1.json
  def show
  end

  # GET /change_salaries/new
  def new
    @change_salary = ChangeSalary.new
  end

  # GET /change_salaries/1/edit
  def edit
  end

  # POST /change_salaries
  # POST /change_salaries.json
  def create
    @change_salary = ChangeSalary.new(change_salary_params)

    respond_to do |format|
      if @change_salary.save
        format.html { redirect_to @change_salary, notice: 'Change salary was successfully created.' }
        format.json { render :show, status: :created, location: @change_salary }
      else
        format.html { render :new }
        format.json { render json: @change_salary.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /change_salaries/1
  # PATCH/PUT /change_salaries/1.json
  def update
    respond_to do |format|
      if @change_salary.update(change_salary_params)
        format.html { redirect_to @change_salary, notice: 'Change salary was successfully updated.' }
        format.json { render :show, status: :ok, location: @change_salary }
      else
        format.html { render :edit }
        format.json { render json: @change_salary.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /change_salaries/1
  # DELETE /change_salaries/1.json
  def destroy
    @change_salary.destroy
    respond_to do |format|
      format.html { redirect_to change_salaries_url, notice: 'Change salary was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_change_salary
      @change_salary = ChangeSalary.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def change_salary_params
      params.require(:change_salary).permit(:company_id, :collaborator, :cost_center_id, :salary_current, :new_salary, :date_change, :reason_change, :user_id, :status)
    end
end
