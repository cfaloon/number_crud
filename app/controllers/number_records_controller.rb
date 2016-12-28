class NumberRecordsController < ApplicationController
  before_action :set_number_record, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  
  # GET /number_records
  # GET /number_records.json
  def index
    @number_records = NumberRecord.all
  end

  # GET /number_records/1
  # GET /number_records/1.json
  def show
  end

  # GET /number_records/new
  def new
    @number_record = NumberRecord.new
  end

  # GET /number_records/1/edit
  def edit
  end

  # POST /number_records
  # POST /number_records.json
  def create
    @number_record = NumberRecord.new(number_record_params)

    respond_to do |format|
      if @number_record.save
        format.html { redirect_to @number_record, notice: 'Number record was successfully created.' }
        format.json { render :show, status: :created, location: @number_record }
      else
        format.html { render :new }
        format.json { render json: @number_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /number_records/1
  # PATCH/PUT /number_records/1.json
  def update
    respond_to do |format|
      if @number_record.update(number_record_params)
        format.html { redirect_to @number_record, notice: 'Number record was successfully updated.' }
        format.json { render :show, status: :ok, location: @number_record }
      else
        format.html { render :edit }
        format.json { render json: @number_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /number_records/1
  # DELETE /number_records/1.json
  def destroy
    @number_record.destroy
    respond_to do |format|
      format.html { redirect_to number_records_url, notice: 'Number record was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_number_record
      @number_record = NumberRecord.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def number_record_params
      params.require(:number_record).permit(:value)
    end
end
