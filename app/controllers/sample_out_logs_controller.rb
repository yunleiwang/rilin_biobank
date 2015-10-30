class SampleOutLogsController < ApplicationController
  before_action :set_sample_out_log, only: [:show, :edit, :update, :destroy]

  # GET /sample_out_logs
  # GET /sample_out_logs.json
  def index
    @sample_out_logs = SampleOutLog.all
  end

  # GET /sample_out_logs/1
  # GET /sample_out_logs/1.json
  def show
  end

  # GET /sample_out_logs/new
  def new
    @sample_out_log = SampleOutLog.new
  end

  # GET /sample_out_logs/1/edit
  def edit
  end

  # POST /sample_out_logs
  # POST /sample_out_logs.json
  def create
    @sample_out_log = SampleOutLog.new(sample_out_log_params)

    respond_to do |format|
      if @sample_out_log.save
        format.html { redirect_to @sample_out_log, notice: 'Sample out log was successfully created.' }
        format.json { render :show, status: :created, location: @sample_out_log }
      else
        format.html { render :new }
        format.json { render json: @sample_out_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sample_out_logs/1
  # PATCH/PUT /sample_out_logs/1.json
  def update
    respond_to do |format|
      if @sample_out_log.update(sample_out_log_params)
        format.html { redirect_to @sample_out_log, notice: 'Sample out log was successfully updated.' }
        format.json { render :show, status: :ok, location: @sample_out_log }
      else
        format.html { render :edit }
        format.json { render json: @sample_out_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sample_out_logs/1
  # DELETE /sample_out_logs/1.json
  def destroy
    @sample_out_log.destroy
    respond_to do |format|
      format.html { redirect_to sample_out_logs_url, notice: 'Sample out log was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sample_out_log
      @sample_out_log = SampleOutLog.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sample_out_log_params
      params.require(:sample_out_log).permit(:sample_id, :sample_preout_log_id, :out_status, :remark)
    end
end
