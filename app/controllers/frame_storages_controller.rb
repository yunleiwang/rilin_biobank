class FrameStoragesController < ApplicationController
  before_action :set_frame_storage, only: [:show, :edit, :update, :destroy]
  #layout 'rilin_freezer'
  # GET /frame_storages
  # GET /frame_storages.json
  def index
    @container = Container.find(params[:container_id])
    @frame_storages = FrameStorage.where(:container_id => params[:container_id]).order('id asc')
    render_layout?
  end

  # GET /frame_storages/1
  # GET /frame_storages/1.json
  def show
    render_layout?
  end

  # GET /frame_storages/new
  def new
    @frame_storage = FrameStorage.new
    render_layout?
  end

  # GET /frame_storages/1/edit
  def edit
    render_layout?
  end

  # POST /frame_storages
  # POST /frame_storages.json
  def create
    @frame_storage = FrameStorage.new(frame_storage_params)

    respond_to do |format|
      if @frame_storage.save
        format.html { redirect_to @frame_storage, notice: 'Frame storage was successfully created.' }
        format.json { render :show, status: :created, location: @frame_storage }
      else
        format.html { render :new }
        format.json { render json: @frame_storage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /frame_storages/1
  # PATCH/PUT /frame_storages/1.json
  def update
    respond_to do |format|
      if @frame_storage.update(frame_storage_params)
        format.html { redirect_to @frame_storage, notice: 'Frame storage was successfully updated.' }
        format.json { render :show, status: :ok, location: @frame_storage }
      else
        format.html { render :edit }
        format.json { render json: @frame_storage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /frame_storages/1
  # DELETE /frame_storages/1.json
  def destroy
    @frame_storage.destroy
    respond_to do |format|
      format.html { redirect_to frame_storages_url, notice: 'Frame storage was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_frame_storage
      @frame_storage = FrameStorage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def frame_storage_params
      params.require(:frame_storage).permit(:position_index, :frame_id, :container_id)
    end
end
