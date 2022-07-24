require "test_helper"

class Relatorios::ArquivosExternosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @relatorios_arquivos_externo = relatorios_arquivos_externos(:one)
  end

  test "should get index" do
    get relatorios_arquivos_externos_url
    assert_response :success
  end

  test "should get new" do
    get new_relatorios_arquivos_externo_url
    assert_response :success
  end

  test "should create relatorios_arquivos_externo" do
    assert_difference("Relatorios::ArquivosExterno.count") do
      post relatorios_arquivos_externos_url, params: { relatorios_arquivos_externo: { nome: @relatorios_arquivos_externo.nome, status: @relatorios_arquivos_externo.status } }
    end

    assert_redirected_to relatorios_arquivos_externo_url(Relatorios::ArquivosExterno.last)
  end

  test "should show relatorios_arquivos_externo" do
    get relatorios_arquivos_externo_url(@relatorios_arquivos_externo)
    assert_response :success
  end

  test "should get edit" do
    get edit_relatorios_arquivos_externo_url(@relatorios_arquivos_externo)
    assert_response :success
  end

  test "should update relatorios_arquivos_externo" do
    patch relatorios_arquivos_externo_url(@relatorios_arquivos_externo), params: { relatorios_arquivos_externo: { nome: @relatorios_arquivos_externo.nome, status: @relatorios_arquivos_externo.status } }
    assert_redirected_to relatorios_arquivos_externo_url(@relatorios_arquivos_externo)
  end

  test "should destroy relatorios_arquivos_externo" do
    assert_difference("Relatorios::ArquivosExterno.count", -1) do
      delete relatorios_arquivos_externo_url(@relatorios_arquivos_externo)
    end

    assert_redirected_to relatorios_arquivos_externos_url
  end
end
