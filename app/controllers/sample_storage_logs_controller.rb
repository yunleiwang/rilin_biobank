class SampleStorageLogsController < ApplicationController
  before_action :set_sample_storage_log, only: [:show, :edit, :update, :destroy]

  # GET /sample_storage_logs
  # GET /sample_storage_logs.json
  def index
    @sample_storage_logs = SampleStorageLog.all
  end

  # GET /sample_storage_logs/1
  # GET /sample_storage_logs/1.json
  def show
  end

  # GET /sample_storage_logs/new
  def new
    @sample_storage_log = SampleStorageLog.new
  end

  # GET /sample_storage_logs/1/edit
  def edit
  end

  # POST /sample_storage_logs
  # POST /sample_storage_logs.json
  def create
    @sample_storage_log = SampleStorageLog.new(sample_storage_log_params)

    respond_to do |format|
      if @sample_storage_log.save
        format.html { redirect_to @sample_storage_log, notice: 'Sample storage log was successfully created.' }
        format.json { render :show, status: :created, location: @sample_storage_log }
      else
        format.html { render :new }
        format.json { render json: @sample_storage_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sample_storage_logs/1
  # PATCH/PUT /sample_storage_logs/1.json
  def update
    respond_to do |format|
      if @sample_storage_log.update(sample_storage_log_params)
        format.html { redirect_to @sample_storage_log, notice: 'Sample storage log was successfully updated.' }
        format.json { render :show, status: :ok, location: @sample_storage_log }
      else
        format.html { render :edit }
        format.json { render json: @sample_storage_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sample_storage_logs/1
  # DELETE /sample_storage_logs/1.json
  def destroy
    @sample_storage_log.destroy
    respond_to do |format|
      format.html { redirect_to sample_storage_logs_url, notice: 'Sample storage log was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sample_storage_log
      @sample_storage_log = SampleStorageLog.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sample_storage_log_params
      params.require(:sample_storage_log).permit(:sample_id, :user_name, :out_percent, :left_volume, :out_use_for)
    end
end
