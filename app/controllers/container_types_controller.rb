class ContainerTypesController < ApplicationController
  before_action :set_container_type, only: [:show, :edit, :update, :destroy]
  # GET /container_types
  # GET /container_types.json
  def index
    @container_types = ContainerType.all
    @patient_infos = PatientInfo.all
    render_layout?
  end

  # GET /container_types/1
  # GET /container_types/1.json
  def show
    render_layout?
  end

  # GET /container_types/new
  def new
    @container_type = ContainerType.new
    render_layout?
  end

  # GET /container_types/1/edit
  def edit
    render_layout?
  end

  # POST /container_types
  # POST /container_types.json
  def create
    @container_type = ContainerType.new(container_type_params)
    @container_type.save_image(params[:container_type][:container_icon])
    respond_to do |format|
      if @container_type.save
        # 保存容器图片
        format.html { redirect_to @container_type, notice: 'Container type was successfully created.' }
        format.json { render :show, status: :created, location: @container_type }
      else
        format.html { render :new }
        format.json { render json: @container_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /container_types/1
  # PATCH/PUT /container_types/1.json
  def update
    respond_to do |format|
      if @container_type.update(container_type_params)
        @container_type.save_image(params[:container_type][:container_icon])
        @container_type.save
        format.html { redirect_to @container_type, notice: 'Container type was successfully updated.' }
        format.json { render :show, status: :ok, location: @container_type }
      else
        format.html { render :edit }
        format.json { render json: @container_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /container_types/1
  # DELETE /container_types/1.json
  def destroy
    @container_type.destroy
    respond_to do |format|
      format.html { redirect_to container_types_url, notice: 'Container type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_container_type
      @container_type = ContainerType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def container_type_params
      params.require(:container_type).permit(:container_catalog, :container_icon, :alia_name, :add_link_url)
    end
end
