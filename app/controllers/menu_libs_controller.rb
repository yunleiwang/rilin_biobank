class MenuLibsController < ApplicationController
  before_action :set_menu_lib, only: [:show, :edit, :update, :destroy]

  # GET /menu_libs
  # GET /menu_libs.json
  def index
    @menu_libs = MenuLib.all
    # (0..5).each { |i|
    #   MenuLib.create(
    #            :name_zh=>nil,
    #            :menu_lib_id=>2,
    #            :link=>'#',
    #            :seq=>i
    #   )
    # }
  end

  # GET /menu_libs/1
  # GET /menu_libs/1.json
  def show
  end

  # GET /menu_libs/new
  def new
    @menu_lib = MenuLib.new
  end

  # GET /menu_libs/1/edit
  def edit
  end

  # POST /menu_libs
  # POST /menu_libs.json
  def create
    @menu_lib = MenuLib.new(menu_lib_params)

    respond_to do |format|
      if @menu_lib.save
        format.html { redirect_to @menu_lib, notice: 'Menu lib was successfully created.' }
        format.json { render :show, status: :created, location: @menu_lib }
      else
        format.html { render :new }
        format.json { render json: @menu_lib.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /menu_libs/1
  # PATCH/PUT /menu_libs/1.json
  def update
    respond_to do |format|
      if @menu_lib.update(menu_lib_params)
        format.html { redirect_to @menu_lib, notice: 'Menu lib was successfully updated.' }
        format.json { render :show, status: :ok, location: @menu_lib }
      else
        format.html { render :edit }
        format.json { render json: @menu_lib.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /menu_libs/1
  # DELETE /menu_libs/1.json
  def destroy
    @menu_lib.destroy
    respond_to do |format|
      format.html { redirect_to menu_libs_url, notice: 'Menu lib was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_menu_lib
      @menu_lib = MenuLib.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def menu_lib_params
      params.require(:menu_lib).permit(:name_zh, :menu_lib_id, :link, :seq)
    end
end
