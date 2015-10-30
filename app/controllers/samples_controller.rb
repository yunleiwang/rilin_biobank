class SamplesController < ApplicationController
  before_action :set_sample, only: [:show, :edit, :update, :destroy]

  # GET /samples
  # GET /samples.json
  def index
    @samples = Sample.all
  end

  # GET /samples/1
  # GET /samples/1.json
  def show
  end

  # GET /samples/new
  def new
    @sample = Sample.new
  end

  # GET /samples/1/edit
  def edit
    if !params[:sample_preout_log_id].blank?
      render :layout => 'blank_templet'
    end
  end

  # POST /samples
  # POST /samples.json
  def create
    @sample = Sample.new(sample_params)

    respond_to do |format|
      if @sample.save
        format.html { redirect_to @sample, notice: 'Sample was successfully created.' }
        format.json { render :show, status: :created, location: @sample }
      else
        format.html { render :new }
        format.json { render json: @sample.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /samples/1
  # PATCH/PUT /samples/1.json
  def update
    respond_to do |format|
      if @sample.update(sample_params)
        format.html { redirect_to @sample, notice: 'Sample was successfully updated.' }
        format.json { render :show, status: :ok, location: @sample }
      else
        format.html { render :edit }
        format.json { render json: @sample.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /samples/1
  # DELETE /samples/1.json
  def destroy
    @sample.destroy
    respond_to do |format|
      format.html { redirect_to samples_url, notice: 'Sample was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  # 根据sample_no获取当前sample的信息
  def sample_info
    @sample = Sample.find_by(sample_no: params[:sample_no])
    respond_to do |format|
      format.js
    end
  end

  #样本预出库
  def samples_pre_out
    params.permit!
    samples_preout_log = SamplePreoutLog.new(params[:sample_preout_log])
    str_sample_ids = params[:sample_preout_log][:sample_ids]
    sample_ids = str_sample_ids.split(',').map{|sample_id|sample_id.to_i}
    samples = Sample.where("id in (?)",sample_ids)
    #修改样本状态为预出库
    SamplePreoutLog.transaction do
      samples.each do |sample|
        sample.storage_status= Sample::STATUS_PRE_OUT
        sample.save
      end
      samples_preout_log.sys_user_id = session[:sys_user_id]
      samples_preout_log.status = Sample::STATUS_PRE_OUT
      samples_preout_log.save
    end

    redirect_to :controller => 'search_info', :action => 'search_today'
  end

  #样本最终确认出库
  def samples_out
    sample_preout_log = SamplePreoutLog.find(params[:sample_preout_log_id])
    sample = Sample.find(params[:id])
    Sample.transaction do
      #如为出库为100%，则为完全出库，更改样本状态，否则不更改状态
      if sample_preout_log.proportpion.to_i==100
        sample.current_sample_volume=0
        sample.storage_status = Sample::STATUS_OUT  # 有问题
        sample.clear_sample_storage
      elsif(sample.freezing_thawing_times && sample.freezing_thawing_times>sample.sample_out_logs.count)
        sample.current_sample_volume = (sample.current_sample_volume-(sample_preout_log.proportpion.to_i/100.0))
        sample.storage_status = Sample::STATUS_IN  # 改为在库
      else #冻存次数超过预定
        sample.current_sample_volume = (sample.current_sample_volume-(sample_preout_log.proportpion.to_i/100.0))
        sample.storage_status = Sample::STATUS_OUT  # 有问题
      end
      #此处判断标准有问题
      sample.save
      #添加出库记录
      sample_out_log = SampleOutLog.new
      sample_out_log.sample_preout_log_id= sample_preout_log.id
      sample_out_log.sample_id= sample.id
      sample_out_log.out_status= SampleOutLog::OUT_STATUS_SUCCESS
      sample_out_log.save

      sample_preout_log.update_status
    end
    redirect_to :controller => 'sample_preout_logs', :action => 'show', :id=>sample_preout_log.id
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sample
      @sample = Sample.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sample_params
      params.require(:sample).permit(:sample_no, :sample_seq, :user_id, :storage_status, :freezing_thawing_times, :initial_sample_volume, :current_sample_volume, :patient_case_id)
    end
end
