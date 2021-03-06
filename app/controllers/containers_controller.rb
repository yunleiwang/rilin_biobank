class ContainersController < ApplicationController
  before_action :set_container, only: [:show, :edit, :update, :destroy]

  # GET /containers
  # GET /containers.json
  def index
    @containers = Container.all
  end

  # GET /containers/1
  # GET /containers/1.json
  def show
  end

  # GET /containers/new
  def new
    #@container_type = ContainerType.find(params[:container_type_id].to_i)
    @container = Container.new
  end

  # GET /containers/1/edit
  def edit

  end

  # POST /containers
  # POST /containers.json
  def create
    @container = Container.new(container_params)
    respond_to do |format|
      if @container.save
        if @container.container_type.container_catalog == ContainerType::YEDANGUAN
          @container.batch_create_liquid_frame_storage
        else
          @container.batch_create_frame_storage
        end
        format.html { redirect_to :controller => 'frame_storages', :action=>'index',:container_id=>@container.id , notice: 'Container was successfully created.'}
      else
        format.html { render :new }
        format.json { render json: @container.errors, status: :unprocessable_entity }
      end
    end

  end

  # PATCH/PUT /containers/1
  # PATCH/PUT /containers/1.json
  def update
    respond_to do |format|
      if @container.update(container_params)
        format.html { redirect_to @container, notice: 'Container was successfully updated.' }
        format.json { render :show, status: :ok, location: @container }
      else
        format.html { render :edit }
        format.json { render json: @container.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /containers/1
  # DELETE /containers/1.json
  def destroy
    @container.destroy
    respond_to do |format|
      format.html { redirect_to containers_url, notice: 'Container was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def select_container

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_container
      @container = Container.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def container_params
      params.require(:container).permit(:container_name, :container_type_id, :code_style, :frame_num, :container_rows, :container_columns)
    end
end
