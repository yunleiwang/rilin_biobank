class BoxerStoragesController < ApplicationController
  before_action :set_boxer_storage, only: [:show, :edit, :update, :destroy]

  # GET /boxer_storages
  # GET /boxer_storages.json
  def index
    @frame = Frame.find(params[:frame_id])
    frame_storage = @frame.frame_storages.first
    @container = frame_storage.container
    @frame_storages = @container.frame_storages
    @boxer_storages = BoxerStorage.all.where(:frame_id => params[:frame_id].to_i)
  end

  # GET /boxer_storages/1
  # GET /boxer_storages/1.json
  def show
  end

  # GET /boxer_storages/new
  def new
    @boxer_storage = BoxerStorage.new
  end

  # GET /boxer_storages/1/edit
  def edit
  end

  # POST /boxer_storages
  # POST /boxer_storages.json
  def create
    @boxer_storage = BoxerStorage.new(boxer_storage_params)

    respond_to do |format|
      if @boxer_storage.save
        format.html { redirect_to @boxer_storage, notice: 'Boxer storage was successfully created.' }
        format.json { render :show, status: :created, location: @boxer_storage }
      else
        format.html { render :new }
        format.json { render json: @boxer_storage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /boxer_storages/1
  # PATCH/PUT /boxer_storages/1.json
  def update
    respond_to do |format|
      if @boxer_storage.update(boxer_storage_params)
        format.html { redirect_to @boxer_storage, notice: 'Boxer storage was successfully updated.' }
        format.json { render :show, status: :ok, location: @boxer_storage }
      else
        format.html { render :edit }
        format.json { render json: @boxer_storage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /boxer_storages/1
  # DELETE /boxer_storages/1.json
  def destroy
    @boxer_storage.destroy
    respond_to do |format|
      format.html { redirect_to boxer_storages_url, notice: 'Boxer storage was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_boxer_storage
      @boxer_storage = BoxerStorage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def boxer_storage_params
      params.require(:boxer_storage).permit(:position_index, :boxer_id, :frame_id)
    end
end
