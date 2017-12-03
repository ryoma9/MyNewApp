class DemografficsController < ApplicationController
  before_action :set_demograffic, only: [:show, :edit, :update, :destroy]

  # GET /demograffics
  # GET /demograffics.json
  def index
    @demograffics = Demograffic.all
  end

  # GET /demograffics/1
  # GET /demograffics/1.json
  def show
  end

  # GET /demograffics/new
  def new
    @demograffic = Demograffic.new
  end

  # GET /demograffics/1/edit
  def edit
  end

  # POST /demograffics
  # POST /demograffics.json
  def create
    @demograffic = Demograffic.new(demograffic_params)

    respond_to do |format|
      if @demograffic.save
        format.html { redirect_to @demograffic, notice: 'Demograffic was successfully created.' }
        format.json { render :show, status: :created, location: @demograffic }
      else
        format.html { render :new }
        format.json { render json: @demograffic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /demograffics/1
  # PATCH/PUT /demograffics/1.json
  def update
    respond_to do |format|
      if @demograffic.update(demograffic_params)
        format.html { redirect_to @demograffic, notice: 'Demograffic was successfully updated.' }
        format.json { render :show, status: :ok, location: @demograffic }
      else
        format.html { render :edit }
        format.json { render json: @demograffic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /demograffics/1
  # DELETE /demograffics/1.json
  def destroy
    @demograffic.destroy
    respond_to do |format|
      format.html { redirect_to demograffics_url, notice: 'Demograffic was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_demograffic
      @demograffic = Demograffic.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def demograffic_params
      params.require(:demograffic).permit(:name, :age)
    end
end
