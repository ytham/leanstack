class StackupsController < ApplicationController
  before_action :set_stackup, only: [:show, :edit, :update, :destroy]

  # GET /stackups
  # GET /stackups.json
  def index
    @stackups = Stackup.all
  end

  # GET /stackups/1
  # GET /stackups/1.json
  def show
  end

  # GET /stackups/new
  def new
    @stackup = Stackup.new
  end

  # GET /stackups/1/edit
  def edit
  end

  # POST /stackups
  # POST /stackups.json
  def create
    @stackup = Stackup.new(stackup_params)

    respond_to do |format|
      if @stackup.save
        format.html { redirect_to @stackup, notice: 'Stackup was successfully created.' }
        format.json { render action: 'show', status: :created, location: @stackup }
      else
        format.html { render action: 'new' }
        format.json { render json: @stackup.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stackups/1
  # PATCH/PUT /stackups/1.json
  def update
    respond_to do |format|
      if @stackup.update(stackup_params)
        format.html { redirect_to @stackup, notice: 'Stackup was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @stackup.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stackups/1
  # DELETE /stackups/1.json
  def destroy
    @stackup.destroy
    respond_to do |format|
      format.html { redirect_to stackups_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stackup
      @stackup = Stackup.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def stackup_params
      params[:stackup]
    end
end
