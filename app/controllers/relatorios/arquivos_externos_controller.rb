class Relatorios::ArquivosExternosController < ApplicationController
  before_action :set_relatorios_arquivos_externo, only: %i[ show edit update destroy ]

  # GET /relatorios/arquivos_externos or /relatorios/arquivos_externos.json
  def index
    @relatorios_arquivos_externos = Relatorios::ArquivosExterno.all
  end

  # GET /relatorios/arquivos_externos/1 or /relatorios/arquivos_externos/1.json
  def show
  end

  # GET /relatorios/arquivos_externos/new
  def new
    @relatorios_arquivos_externo = Relatorios::ArquivosExterno.new
  end

  # GET /relatorios/arquivos_externos/1/edit
  def edit
  end

  # POST /relatorios/arquivos_externos or /relatorios/arquivos_externos.json
  def create
    @relatorios_arquivos_externo = Relatorios::ArquivosExterno.new(relatorios_arquivos_externo_params)

    respond_to do |format|
      if @relatorios_arquivos_externo.save
        format.html { redirect_to relatorios_arquivos_externo_url(@relatorios_arquivos_externo), notice: "Arquivos externo was successfully created." }
        format.json { render :show, status: :created, location: @relatorios_arquivos_externo }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @relatorios_arquivos_externo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /relatorios/arquivos_externos/1 or /relatorios/arquivos_externos/1.json
  def update
    respond_to do |format|
      if @relatorios_arquivos_externo.update(relatorios_arquivos_externo_params)
        format.html { redirect_to relatorios_arquivos_externo_url(@relatorios_arquivos_externo), notice: "Arquivos externo was successfully updated." }
        format.json { render :show, status: :ok, location: @relatorios_arquivos_externo }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @relatorios_arquivos_externo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /relatorios/arquivos_externos/1 or /relatorios/arquivos_externos/1.json
  def destroy
    @relatorios_arquivos_externo.destroy

    respond_to do |format|
      format.html { redirect_to relatorios_arquivos_externos_url, notice: "Arquivos externo was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_relatorios_arquivos_externo
      @relatorios_arquivos_externo = Relatorios::ArquivosExterno.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def relatorios_arquivos_externo_params
      params.require(:relatorios_arquivos_externo).permit(:nome, :arquivo, :status)
    end
end
