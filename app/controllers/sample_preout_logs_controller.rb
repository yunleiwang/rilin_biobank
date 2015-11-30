class SamplePreoutLogsController < ApplicationController
  before_action :set_sample_preout_log, only: [:show, :edit, :update, :destroy]
  #layout false
  # GET /sample_preout_logs
  # GET /sample_preout_logs.json
  def index
    @sample_preout_logs = SamplePreoutLog.all

  end

  # GET /sample_preout_logs/1
  # GET /sample_preout_logs/1.json
  def show
    sample_ids = @sample_preout_log.sample_ids.split(',')
    @samples = Sample.where("id in (?)",sample_ids)
    if request.headers['X-PJAX']
      render :layout => false
    else
      render :layout => 'blank_templet'
    end
  end

  # GET /sample_preout_logs/new
  def new
    @sample_preout_log = SamplePreoutLog.new

  end

  # GET /sample_preout_logs/1/edit
  def edit

  end

  # POST /sample_preout_logs
  # POST /sample_preout_logs.json
  def create
    @sample_preout_log = SamplePreoutLog.new(sample_preout_log_params)

    respond_to do |format|
      if @sample_preout_log.save
        format.html { redirect_to @sample_preout_log, notice: 'Sample preout log was successfully created.' }
        format.json { render :show, status: :created, location: @sample_preout_log }
      else
        format.html { render :new }
        format.json { render json: @sample_preout_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sample_preout_logs/1
  # PATCH/PUT /sample_preout_logs/1.json
  def update
    respond_to do |format|
      if @sample_preout_log.update(sample_preout_log_params)
        format.html { redirect_to @sample_preout_log, notice: 'Sample preout log was successfully updated.' }
        format.json { render :show, status: :ok, location: @sample_preout_log }
      else
        format.html { render :edit }
        format.json { render json: @sample_preout_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sample_preout_logs/1
  # DELETE /sample_preout_logs/1.json
  def destroy
    @sample_preout_log.destroy
    respond_to do |format|
      format.html { redirect_to sample_preout_logs_url, notice: 'Sample preout log was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sample_preout_log
      @sample_preout_log = SamplePreoutLog.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sample_preout_log_params
      params.require(:sample_preout_log).permit(:operator_name, :user_name, :status, :sample_ids)
    end
end
