class CoveetsController < ApplicationController
  before_action :set_coveet, only: %i[ show edit update destroy ]

  # GET /coveets or /coveets.json
  def index
    @coveets = Coveet.all
  end

  # GET /coveets/1 or /coveets/1.json
  def show
  end

  # GET /coveets/new
  def new
    @coveet = Coveet.new
  end

  # GET /coveets/1/edit
  def edit
  end

  # POST /coveets or /coveets.json
  def create
    @coveet = Coveet.new(coveet_params)

    respond_to do |format|
      if @coveet.save
        format.html { redirect_to @coveet, notice: "Coveet was successfully created." }
        format.json { render :show, status: :created, location: @coveet }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @coveet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /coveets/1 or /coveets/1.json
  def update
    respond_to do |format|
      if @coveet.update(coveet_params)
        format.html { redirect_to @coveet, notice: "Coveet was successfully updated." }
        format.json { render :show, status: :ok, location: @coveet }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @coveet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /coveets/1 or /coveets/1.json
  def destroy
    @coveet.destroy
    respond_to do |format|
      format.html { redirect_to coveets_url, notice: "Coveet was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_coveet
      @coveet = Coveet.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def coveet_params
      params.require(:coveet).permit(:cuerpo, :likes, :usuario_id)
    end
end
