require "application_system_test_case"

class ExtintorsTest < ApplicationSystemTestCase
  setup do
    @extintor = extintors(:one)
  end

  test "visiting the index" do
    visit extintors_url
    assert_selector "h1", text: "Extintors"
  end

  test "creating a Extintor" do
    visit extintors_url
    click_on "New Extintor"

    click_on "Create Extintor"

    assert_text "Extintor was successfully created"
    click_on "Back"
  end

  test "updating a Extintor" do
    visit extintors_url
    click_on "Edit", match: :first

    click_on "Update Extintor"

    assert_text "Extintor was successfully updated"
    click_on "Back"
  end

  test "destroying a Extintor" do
    visit extintors_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Extintor was successfully destroyed"
  end
end
