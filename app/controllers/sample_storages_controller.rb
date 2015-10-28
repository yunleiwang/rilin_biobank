class SampleStoragesController < ApplicationController
  before_action :set_sample_storage, only: [:show, :edit, :update, :destroy]

  # GET /sample_storages
  # GET /sample_storages.json
  def index
    @boxer = Boxer.find(params[:boxer_id])
    boxer_storage = @boxer.boxer_storages.first
    @frame = boxer_storage.frame
    @boxer_storages = @frame.boxer_storages
    frame_storage = @frame.frame_storages.first
    @container = frame_storage.container
    @frame_storages = @container.frame_storages.order('id asc')
    @sample_storages = SampleStorage.where('boxer_id = ?',@boxer.id).order('id asc')
  end

  # GET /sample_storages/1
  # GET /sample_storages/1.json
  def show
  end

  # GET /sample_storages/new
  def new
    @sample_storage = SampleStorage.new
  end

  # GET /sample_storages/1/edit
  def edit
  end

  # POST /sample_storages
  # POST /sample_storages.json
  def create
    @sample_storage = SampleStorage.new(sample_storage_params)

    respond_to do |format|
      if @sample_storage.save
        format.html { redirect_to @sample_storage, notice: 'Sample storage was successfully created.' }
        format.json { render :show, status: :created, location: @sample_storage }
      else
        format.html { render :new }
        format.json { render json: @sample_storage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sample_storages/1
  # PATCH/PUT /sample_storages/1.json
  def update
    respond_to do |format|
      if @sample_storage.update(sample_storage_params)
        format.html { redirect_to @sample_storage, notice: 'Sample storage was successfully updated.' }
        format.json { render :show, status: :ok, location: @sample_storage }
      else
        format.html { render :edit }
        format.json { render json: @sample_storage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sample_storages/1
  # DELETE /sample_storages/1.json
  def destroy
    @sample_storage.destroy
    respond_to do |format|
      format.html { redirect_to sample_storages_url, notice: 'Sample storage was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sample_storage
      @sample_storage = SampleStorage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sample_storage_params
      params.require(:sample_storage).permit(:position_index, :boxer_id, :sample_id)
    end
end
