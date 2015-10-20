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
    sample_ids = params[:sample_ids].map{|sample_id|sample_id.to_i}
    samples = Sample.where("id in (?)",sample_ids)
    samples.each do |sample|
      sample.storage_status= Sample::STATUS_PRE_OUT
      sample.save
    end
  end

  #样本最终确认出库
  def samples_out

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
