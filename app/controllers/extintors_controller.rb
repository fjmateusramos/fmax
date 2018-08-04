class ExtintorsController < ApplicationController
  before_action :set_extintor, only: [:show, :edit, :update, :destroy]

  # GET /extintors
  # GET /extintors.json
  def index
    @extintors = Extintor.all
  end

  # GET /extintors/1
  # GET /extintors/1.json
  def show
  end

  # GET /extintors/new
  def new
    @extintor = Extintor.new
  end

  # GET /extintors/1/edit
  def edit
  end

  # POST /extintors
  # POST /extintors.json
  def create
    @extintor = Extintor.new(extintor_params)

    respond_to do |format|
      if @extintor.save
        format.html { redirect_to @extintor, notice: 'Extintor was successfully created.' }
        format.json { render :show, status: :created, location: @extintor }
      else
        format.html { render :new }
        format.json { render json: @extintor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /extintors/1
  # PATCH/PUT /extintors/1.json
  def update
    respond_to do |format|
      if @extintor.update(extintor_params)
        format.html { redirect_to @extintor, notice: 'Extintor was successfully updated.' }
        format.json { render :show, status: :ok, location: @extintor }
      else
        format.html { render :edit }
        format.json { render json: @extintor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /extintors/1
  # DELETE /extintors/1.json
  def destroy
    @extintor.destroy
    respond_to do |format|
      format.html { redirect_to extintors_url, notice: 'Extintor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_extintor
      @extintor = Extintor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def extintor_params
      params.fetch(:extintor, {})
    end
end
