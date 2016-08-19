class CrittersController < ApplicationController
  before_action :set_critter, only: [:show, :edit, :update, :destroy]

  # GET /critters
  # GET /critters.json
  def index
    @critters = Critter.all
  end

  # GET /critters/1
  # GET /critters/1.json
  def show
  end

  # GET /critters/new
  def new
    @critter = Critter.new
  end

  # GET /critters/1/edit
  def edit
  end

  # POST /critters
  # POST /critters.json
  def create
    @critter = Critter.new(critter_params)

    respond_to do |format|
      if @critter.save
        format.html { redirect_to @critter, notice: 'Weeeee! ' + @critter.name + ' has been added to the critter canasta.' }
        format.json { render :show, status: :created, location: @critter }
      else
        format.html { render :new }
        format.json { render json: @critter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /critters/1
  # PATCH/PUT /critters/1.json
  def update
    respond_to do |format|
      if @critter.update(critter_params)

        format.html { redirect_to @critter, notice: 'Success! '+ @critter.name + "'s record has been updated." }
        format.json { render :edit, status: :ok, location: @critter }
      else
        format.html { render :edit }
        format.json { render json: @critter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /critters/1
  # DELETE /critters/1.json
  def destroy
    @critter.destroy
    respond_to do |format|
      format.html { redirect_to critters_url, notice: 'Critter was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  def surprise
    if params[:has_collar] == "true"
      render :surprise_has_collar
    else
      render :surprise_no_collar
    end
  end #surprise

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_critter
      @critter = Critter.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def critter_params
      params.require(:critter).permit(:name, :age, :date_last_seen, :color, :has_collar)
    end
end
