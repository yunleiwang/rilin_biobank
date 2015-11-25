class FramesController < ApplicationController
  before_action :set_frame, only: [:show, :edit, :update, :destroy]

  # GET /frames
  # GET /frames.json
  def index
    @frames = Frame.all
  end

  # GET /frames/1
  # GET /frames/1.json
  def show
    render_layout?
  end

  # GET /frames/new
  def new
    frame_storage = FrameStorage.find(params[:frame_storage_id])
    @container_type = frame_storage.container.container_type # 用于判断容器类型
    @frame = Frame.new
    render layout: 'blank_templet'
  end

  # GET /frames/1/edit
  def edit
  end

  # POST /frames
  # POST /frames.json
  def create
    @frame = Frame.new(frame_params)
    frame_storage = FrameStorage.find(params[:frame_storage_id].to_i)
    begin
      Frame.transaction do
        @frame.save
        frame_storage.update_attributes(:frame_id=>@frame.id)
        @frame.batch_create_boxer_storage
      end
      redirect_to @frame, notice: 'Container was successfully created.'
    rescue
      puts '创建架子规格及存储架子的空间出错!'
      render :new
    end

  end

  # PATCH/PUT /frames/1
  # PATCH/PUT /frames/1.json
  def update
    respond_to do |format|
      if @frame.update(frame_params)
        format.html { redirect_to @frame, notice: 'Frame was successfully updated.' }
        format.json { render :show, status: :ok, location: @frame }
      else
        format.html { render :edit }
        format.json { render json: @frame.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /frames/1
  # DELETE /frames/1.json
  def destroy
    @frame.destroy
    respond_to do |format|
      format.html { redirect_to frames_url, notice: 'Frame was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_frame
      @frame = Frame.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def frame_params
      params.require(:frame).permit(:frame_seq, :frame_name, :frame_type, :code_order, :horizontal_direction, :vertiacal_direction, :frame_rows, :frame_columns)
    end
end
