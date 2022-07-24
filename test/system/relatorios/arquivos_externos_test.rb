require "application_system_test_case"

class Relatorios::ArquivosExternosTest < ApplicationSystemTestCase
  setup do
    @relatorios_arquivos_externo = relatorios_arquivos_externos(:one)
  end

  test "visiting the index" do
    visit relatorios_arquivos_externos_url
    assert_selector "h1", text: "Arquivos externos"
  end

  test "should create arquivos externo" do
    visit relatorios_arquivos_externos_url
    click_on "New arquivos externo"

    fill_in "Nome", with: @relatorios_arquivos_externo.nome
    fill_in "Status", with: @relatorios_arquivos_externo.status
    click_on "Create Arquivos externo"

    assert_text "Arquivos externo was successfully created"
    click_on "Back"
  end

  test "should update Arquivos externo" do
    visit relatorios_arquivos_externo_url(@relatorios_arquivos_externo)
    click_on "Edit this arquivos externo", match: :first

    fill_in "Nome", with: @relatorios_arquivos_externo.nome
    fill_in "Status", with: @relatorios_arquivos_externo.status
    click_on "Update Arquivos externo"

    assert_text "Arquivos externo was successfully updated"
    click_on "Back"
  end

  test "should destroy Arquivos externo" do
    visit relatorios_arquivos_externo_url(@relatorios_arquivos_externo)
    click_on "Destroy this arquivos externo", match: :first

    assert_text "Arquivos externo was successfully destroyed"
  end
end
