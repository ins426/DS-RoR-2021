require "application_system_test_case"

class CoveetsTest < ApplicationSystemTestCase
  setup do
    @coveet = coveets(:one)
  end

  test "visiting the index" do
    visit coveets_url
    assert_selector "h1", text: "Coveets"
  end

  test "creating a Coveet" do
    visit coveets_url
    click_on "New Coveet"

    fill_in "Cuerpo", with: @coveet.cuerpo
    fill_in "Likes", with: @coveet.likes
    fill_in "Usuario", with: @coveet.usuario_id
    click_on "Create Coveet"

    assert_text "Coveet was successfully created"
    click_on "Back"
  end

  test "updating a Coveet" do
    visit coveets_url
    click_on "Edit", match: :first

    fill_in "Cuerpo", with: @coveet.cuerpo
    fill_in "Likes", with: @coveet.likes
    fill_in "Usuario", with: @coveet.usuario_id
    click_on "Update Coveet"

    assert_text "Coveet was successfully updated"
    click_on "Back"
  end

  test "destroying a Coveet" do
    visit coveets_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Coveet was successfully destroyed"
  end
end
