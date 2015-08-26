class PatientInfosController < ApplicationController
  before_action :set_patient_info, only: [:show, :edit, :update, :destroy]

  # GET /patient_infos
  # GET /patient_infos.json
  def index
    @patient_infos = PatientInfo.all
  end

  # GET /patient_infos/1
  # GET /patient_infos/1.json
  def show
  end

  # GET /patient_infos/new
  def new
    @patient_info = PatientInfo.new
  end

  # GET /patient_infos/1/edit
  def edit
  end

  # POST /patient_infos
  # POST /patient_infos.json
  def create
    @patient_info = PatientInfo.new(patient_info_params)

    respond_to do |format|
      if @patient_info.save
        format.html { redirect_to @patient_info, notice: 'Patient info was successfully created.' }
        format.json { render :show, status: :created, location: @patient_info }
      else
        format.html { render :new }
        format.json { render json: @patient_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /patient_infos/1
  # PATCH/PUT /patient_infos/1.json
  def update
    respond_to do |format|
      if @patient_info.update(patient_info_params)
        format.html { redirect_to @patient_info, notice: 'Patient info was successfully updated.' }
        format.json { render :show, status: :ok, location: @patient_info }
      else
        format.html { render :edit }
        format.json { render json: @patient_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /patient_infos/1
  # DELETE /patient_infos/1.json
  def destroy
    @patient_info.destroy
    respond_to do |format|
      format.html { redirect_to patient_infos_url, notice: 'Patient info was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_patient_info
      @patient_info = PatientInfo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def patient_info_params
      params.require(:patient_info).permit(:patient_id, :patient_name, :gender, :birthday, :cell_phone, :home_phone, :other_phone, :zip_code, :address, :company_name, :company_phone, :company_zip, :company_address, :relationship_first, :relative_name_first, :relative_phone1_first, :relative_phone2_first, :relationship_second, :relative_name_second, :relative_phone1_second, :relative_phone2_second, :relationship_third, :relative_name_third, :relative_phone1_third, :relative_phone2_third)
    end
end
