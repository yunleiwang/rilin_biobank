class PatientCasesController < ApplicationController
  before_action :set_patient_case, only: [:show, :edit, :update, :destroy]
  before_filter :set_patient_info, only: [:new]
  # GET /patient_cases
  # GET /patient_cases.json
  def index
    @patient_cases = PatientCase.all.order('id desc')
  end

  # GET /patient_cases/1
  # GET /patient_cases/1.json
  def show
  end

  # GET /patient_cases/new
  def new
    @patient_case = PatientCase.new
    @samples = []
    @sample = Sample.new
    render :layout => 'templet_form'
  end

  # GET /patient_cases/1/edit
  def edit
    session[:patient_info_id]=@patient_case.patient_info_id
    @samples = @patient_case.samples.order('id asc')
    if params[:sample_id]
      @sample = @samples.find{|sample|sample.id==params[:sample_id].to_i}
    else
      @sample = @samples[0]
    end
    render :layout => 'templet_form'
  end

  # POST /patient_cases
  # POST /patient_cases.json
  def create
    @patient_case = PatientCase.new(patient_case_params)
    @patient_case.patient_info_id = session[:patient_info_id]
    @patient_case.save
    # 如果params[:batch_add_num].nil? 默认添加一个样本
    params[:batch_add_num] ||= 1
    params.permit!
    begin
      @patient_case.batch_create_sample(params[:batch_add_num].to_i,params)
    rescue
      puts '批量添加失败！'
    end
    redirect_to action: 'edit', id: @patient_case.id

  end

  # PATCH/PUT /patient_cases/1
  # PATCH/PUT /patient_cases/1.json
  def update
    # 如果sample_no=='0',为添加样本，需判断添加的个数（默认为添加一个）
    # 如果sample_no!='0',为编辑某个样本
    params.permit!
    @patient_case.update(patient_case_params)
    if params[:sample][:sample_no]=='0'
      params[:batch_add_num]=1 if params[:batch_add_num].empty?
      @patient_case.batch_create_sample(params[:batch_add_num].to_i,params)
      redirect_to action: 'edit', id: @patient_case.id
    else
      sample = Sample.find_by(sample_no: params[:sample][:sample_no])
      sample.update(params.require(:sample))
      redirect_to action: 'edit', id: @patient_case.id, sample_id: sample.id
    end

  end

  # DELETE /patient_cases/1
  # DELETE /patient_cases/1.json
  def destroy
    @patient_case.destroy
    respond_to do |format|
      format.html { redirect_to patient_cases_url, notice: 'Patient case was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_patient_case
      @patient_case = PatientCase.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def patient_case_params
      params.require(:patient_case).permit(:case_number, :patient_info_id)
    end


end
