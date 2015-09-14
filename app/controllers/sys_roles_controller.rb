class SysRolesController < ApplicationController
  before_action :set_sys_role, only: [:show, :edit, :update, :destroy]

  # GET /sys_roles
  # GET /sys_roles.json
  def index
    @sys_roles = SysRole.all
  end

  # GET /sys_roles/1
  # GET /sys_roles/1.json
  def show
  end

  # GET /sys_roles/new
  def new
    @sys_role = SysRole.new
  end

  # GET /sys_roles/1/edit
  def edit
  end

  # POST /sys_roles
  # POST /sys_roles.json
  def create
    @sys_role = SysRole.new(sys_role_params)

    respond_to do |format|
      if @sys_role.save
        format.html { redirect_to @sys_role, notice: 'Sys role was successfully created.' }
        format.json { render :show, status: :created, location: @sys_role }
      else
        format.html { render :new }
        format.json { render json: @sys_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sys_roles/1
  # PATCH/PUT /sys_roles/1.json
  def update
    respond_to do |format|
      if @sys_role.update(sys_role_params)
        format.html { redirect_to @sys_role, notice: 'Sys role was successfully updated.' }
        format.json { render :show, status: :ok, location: @sys_role }
      else
        format.html { render :edit }
        format.json { render json: @sys_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sys_roles/1
  # DELETE /sys_roles/1.json
  def destroy
    @sys_role.destroy
    respond_to do |format|
      format.html { redirect_to sys_roles_url, notice: 'Sys role was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sys_role
      @sys_role = SysRole.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sys_role_params
      params.require(:sys_role).permit(:name, :remark)
    end
end
