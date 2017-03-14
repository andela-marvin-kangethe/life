class LifelessesController < ApplicationController
  before_action :set_lifeless, only: [:show, :edit, :update, :destroy]

  # GET /lifelesses
  # GET /lifelesses.json
  def index
    @lifelesses = Lifeless.all
  end

  # GET /lifelesses/1
  # GET /lifelesses/1.json
  def show
  end

  # GET /lifelesses/new
  def new
    @lifeless = Lifeless.new
  end

  # GET /lifelesses/1/edit
  def edit
  end

  # POST /lifelesses
  # POST /lifelesses.json
  def create
    @lifeless = Lifeless.new(lifeless_params)

    respond_to do |format|
      if @lifeless.save
        format.html { redirect_to @lifeless, notice: 'Lifeless was successfully created.' }
        format.json { render :show, status: :created, location: @lifeless }
      else
        format.html { render :new }
        format.json { render json: @lifeless.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lifelesses/1
  # PATCH/PUT /lifelesses/1.json
  def update
    respond_to do |format|
      if @lifeless.update(lifeless_params)
        format.html { redirect_to @lifeless, notice: 'Lifeless was successfully updated.' }
        format.json { render :show, status: :ok, location: @lifeless }
      else
        format.html { render :edit }
        format.json { render json: @lifeless.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lifelesses/1
  # DELETE /lifelesses/1.json
  def destroy
    @lifeless.destroy
    respond_to do |format|
      format.html { redirect_to lifelesses_url, notice: 'Lifeless was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lifeless
      @lifeless = Lifeless.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lifeless_params
      params.fetch(:lifeless, {})
    end
end
