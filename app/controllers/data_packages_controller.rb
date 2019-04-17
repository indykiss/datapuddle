class DataPackagesController < ApplicationController
  before_action :set_data_package, only: [:show, :edit, :update, :destroy]

  # GET /data_packages
  # GET /data_packages.json
  def index
    @data_packages = DataPackage.all
  end

  # GET /data_packages/1
  # GET /data_packages/1.json
  def show
  end

  # GET /data_packages/new
  def new
    @data_package = DataPackage.new
  end

  # GET /data_packages/1/edit
  def edit
  end

  # POST /data_packages
  # POST /data_packages.json
  def create
    @data_package = DataPackage.new(data_package_params)

    respond_to do |format|
      if @data_package.save
        format.html { redirect_to @data_package, notice: 'Data package was successfully created.' }
        format.json { render :show, status: :created, location: @data_package }
      else
        format.html { render :new }
        format.json { render json: @data_package.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /data_packages/1
  # PATCH/PUT /data_packages/1.json
  def update
    respond_to do |format|
      if @data_package.update(data_package_params)
        format.html { redirect_to @data_package, notice: 'Data package was successfully updated.' }
        format.json { render :show, status: :ok, location: @data_package }
      else
        format.html { render :edit }
        format.json { render json: @data_package.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /data_packages/1
  # DELETE /data_packages/1.json
  def destroy
    @data_package.destroy
    respond_to do |format|
      format.html { redirect_to data_packages_url, notice: 'Data package was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_data_package
      @data_package = DataPackage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def data_package_params
      params.fetch(:data_package, {})
    end
end
