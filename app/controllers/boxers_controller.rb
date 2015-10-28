class BoxersController < ApplicationController
  before_action :set_boxer, only: [:show, :edit, :update, :destroy]

  # GET /boxers
  # GET /boxers.json
  def index
    @boxers = Boxer.all
  end

  # GET /boxers/1
  # GET /boxers/1.json
  def show
  end

  # GET /boxers/new
  def new
    @boxer = Boxer.new
    render :layout => 'blank_templet'
  end

  # GET /boxers/1/edit
  def edit
  end

  # POST /boxers
  # POST /boxers.json
  def create
    @boxer = Boxer.new(boxer_params)
    boxer_storage = BoxerStorage.find(params[:boxer_storage_id].to_i)

    begin
      Boxer.transaction do
        @boxer.save
        boxer_storage.update_attributes(:boxer_id=>@boxer.id)
        @boxer.batch_create_sample_storage
      end
      redirect_to @boxer, notice: 'Container was successfully created.'
    rescue
      puts '创建盒子规格及存储盒子的空间出错!'
      render :new
    end

  end

  # PATCH/PUT /boxers/1
  # PATCH/PUT /boxers/1.json
  def update
    respond_to do |format|
      if @boxer.update(boxer_params)
        format.html { redirect_to @boxer, notice: 'Boxer was successfully updated.' }
        format.json { render :show, status: :ok, location: @boxer }
      else
        format.html { render :edit }
        format.json { render json: @boxer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /boxers/1
  # DELETE /boxers/1.json
  def destroy
    @boxer.destroy
    respond_to do |format|
      format.html { redirect_to boxers_url, notice: 'Boxer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_boxer
      @boxer = Boxer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def boxer_params
      params.require(:boxer).permit(:box_name, :box_seq, :box_row, :box_column, :remark)
    end
end
