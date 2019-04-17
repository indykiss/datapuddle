require "application_system_test_case"

class DataPackagesTest < ApplicationSystemTestCase
  setup do
    @data_package = data_packages(:one)
  end

  test "visiting the index" do
    visit data_packages_url
    assert_selector "h1", text: "Data Packages"
  end

  test "creating a Data package" do
    visit data_packages_url
    click_on "New Data Package"

    click_on "Create Data package"

    assert_text "Data package was successfully created"
    click_on "Back"
  end

  test "updating a Data package" do
    visit data_packages_url
    click_on "Edit", match: :first

    click_on "Update Data package"

    assert_text "Data package was successfully updated"
    click_on "Back"
  end

  test "destroying a Data package" do
    visit data_packages_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Data package was successfully destroyed"
  end
end
