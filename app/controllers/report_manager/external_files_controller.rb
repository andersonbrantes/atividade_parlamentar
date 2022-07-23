class ReportManager::ExternalFilesController < ApplicationController
  before_action :set_report_manager_external_file, only: %i[ show edit update destroy ]

  # GET /report_manager/external_files or /report_manager/external_files.json
  def index
    @report_manager_external_files = ReportManager::ExternalFile.all
  end

  # GET /report_manager/external_files/1 or /report_manager/external_files/1.json
  def show
  end

  # GET /report_manager/external_files/new
  def new
    @report_manager_external_file = ReportManager::ExternalFile.new
  end

  # GET /report_manager/external_files/1/edit
  def edit
  end

  # POST /report_manager/external_files or /report_manager/external_files.json
  def create
    @report_manager_external_file = ReportManager::ExternalFile.new(report_manager_external_file_params)

    respond_to do |format|
      if @report_manager_external_file.save
        format.html { redirect_to report_manager_external_file_url(@report_manager_external_file), notice: "External file was successfully created." }
        format.json { render :show, status: :created, location: @report_manager_external_file }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @report_manager_external_file.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /report_manager/external_files/1 or /report_manager/external_files/1.json
  def update
    respond_to do |format|
      if @report_manager_external_file.update(report_manager_external_file_params)
        format.html { redirect_to report_manager_external_file_url(@report_manager_external_file), notice: "External file was successfully updated." }
        format.json { render :show, status: :ok, location: @report_manager_external_file }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @report_manager_external_file.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /report_manager/external_files/1 or /report_manager/external_files/1.json
  def destroy
    @report_manager_external_file.destroy

    respond_to do |format|
      format.html { redirect_to report_manager_external_files_url, notice: "External file was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_report_manager_external_file
      @report_manager_external_file = ReportManager::ExternalFile.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def report_manager_external_file_params
      params.require(:report_manager_external_file).permit(:name, :file)
    end
end
