class SysTableColumnsController < ApplicationController
  before_action :set_sys_table_column, only: [:show, :edit, :update, :destroy]

  # GET /sys_table_columns
  # GET /sys_table_columns.json
  def index
    @sys_table_columns = SysTableColumn.all
  end

  # GET /sys_table_columns/1
  # GET /sys_table_columns/1.json
  def show
  end

  # GET /sys_table_columns/new
  def new
    @sys_table_column = SysTableColumn.new
  end

  # GET /sys_table_columns/1/edit
  def edit
  end

  # POST /sys_table_columns
  # POST /sys_table_columns.json
  def create
    @sys_table_column = SysTableColumn.new(sys_table_column_params)

    respond_to do |format|
      if @sys_table_column.save
        format.html { redirect_to @sys_table_column, notice: 'Sys table column was successfully created.' }
        format.json { render :show, status: :created, location: @sys_table_column }
      else
        format.html { render :new }
        format.json { render json: @sys_table_column.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sys_table_columns/1
  # PATCH/PUT /sys_table_columns/1.json
  def update
    respond_to do |format|
      if @sys_table_column.update(sys_table_column_params)
        format.html { redirect_to @sys_table_column, notice: 'Sys table column was successfully updated.' }
        format.json { render :show, status: :ok, location: @sys_table_column }
      else
        format.html { render :edit }
        format.json { render json: @sys_table_column.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sys_table_columns/1
  # DELETE /sys_table_columns/1.json
  def destroy
    @sys_table_column.destroy
    respond_to do |format|
      format.html { redirect_to sys_table_columns_url, notice: 'Sys table column was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  #收集字段
  def capture
    begin_parse = false
    File.open(File.join(Rails.root, "db/schema.rb")) do |f|
      tname_en=""
      while f.gets
        if $_.include?("create_table")
          tname_en=$_.split('"')[1].singularize
          begin_parse=true
          next
        end
        if $_.include?("end")&&begin_parse
          begin_parse=false
        end
        if begin_parse
          $_.delete!("\"")
          array = $_.split(" ")
          cname_en=array[1].split(",")[0]
          sys_table_column=SysTableColumn.find_by_tname_en_and_cname_en(tname_en,cname_en)
          if sys_table_column.blank?
            sys_table_column=SysTableColumn.new
            sys_table_column.tname_en=tname_en
            sys_table_column.cname_en=cname_en
            sys_table_column.save unless cname_en=="created_at"||cname_en=="updated_at"
          end
        end
      end
    end
    render :nothing => true
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sys_table_column
      @sys_table_column = SysTableColumn.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sys_table_column_params
      params.require(:sys_table_column).permit(:tname_zn, :tname_en, :cname_zn, :c_name_en, :order_no)
    end
end
