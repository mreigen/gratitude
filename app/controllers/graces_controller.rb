class GracesController < ApplicationController
  before_action :load_day
  before_action :set_grace, only: [:show, :edit, :update, :destroy]

  # GET /graces
  # GET /graces.json
  def index
    @graces = @day.graces
  end

  # GET /graces/1
  # GET /graces/1.json
  def show
  end

  # GET /graces/new
  def new
    @grace = @day.graces.build
  end

  # GET /graces/1/edit
  def edit
  end

  # POST /graces
  # POST /graces.json
  def create
    @grace = @day.graces.build(grace_params)

    respond_to do |format|
      if @grace.save
        format.html { redirect_to [@day, @grace], notice: 'Grace was successfully created.' }
        format.json { render action: 'show', status: :created, location: @grace }
      else
        format.html { render action: 'new' }
        format.json { render json: @grace.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /graces/1
  # PATCH/PUT /graces/1.json
  def update
    respond_to do |format|
      if @grace.update(grace_params)
        format.html { redirect_to [@day, @grace], notice: 'Grace was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @grace.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /graces/1
  # DELETE /graces/1.json
  def destroy
    @grace.destroy
    respond_to do |format|
      format.html { redirect_to day_graces_url(@day) }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_grace
      @grace = @day.graces.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def grace_params
      params.require(:grace).permit(:description)
    end

    def load_day
      @day = Day.find(params[:day_id])
    end
end
