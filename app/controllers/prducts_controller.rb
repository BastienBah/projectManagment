class PrductsController < ApplicationController
  before_action :set_prduct, only: [:show, :edit, :update, :destroy]

  # GET /prducts
  # GET /prducts.json
  def index
    @prducts = Prduct.all
  end

  # GET /prducts/1
  # GET /prducts/1.json
  def show
  end

  # GET /prducts/new
  def new
    @prduct = Prduct.new
  end

  # GET /prducts/1/edit
  def edit
  end

  # POST /prducts
  # POST /prducts.json
  def create
    @prduct = Prduct.new(prduct_params)

    respond_to do |format|
      if @prduct.save
        format.html { redirect_to @prduct, notice: 'Prduct was successfully created.' }
        format.json { render :show, status: :created, location: @prduct }
      else
        format.html { render :new }
        format.json { render json: @prduct.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /prducts/1
  # PATCH/PUT /prducts/1.json
  def update
    respond_to do |format|
      if @prduct.update(prduct_params)
        format.html { redirect_to @prduct, notice: 'Prduct was successfully updated.' }
        format.json { render :show, status: :ok, location: @prduct }
      else
        format.html { render :edit }
        format.json { render json: @prduct.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prducts/1
  # DELETE /prducts/1.json
  def destroy
    @prduct.destroy
    respond_to do |format|
      format.html { redirect_to prducts_url, notice: 'Prduct was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prduct
      @prduct = Prduct.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def prduct_params
      params.require(:prduct).permit(:name, :product_type, :description, :manufacturer_id, :has_mib, :has_access, project_ids: [])
    end
end
