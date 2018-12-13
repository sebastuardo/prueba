require "application_system_test_case"

class OnboardingsTest < ApplicationSystemTestCase
  setup do
    @onboarding = onboardings(:one)
  end

  test "visiting the index" do
    visit onboardings_url
    assert_selector "h1", text: "Onboardings"
  end

  test "creating a Onboarding" do
    visit onboardings_url
    click_on "New Onboarding"

    fill_in "Datail", with: @onboarding.datail
    fill_in "Description", with: @onboarding.description
    fill_in "Name", with: @onboarding.name
    fill_in "Offers", with: @onboarding.offers_id
    click_on "Create Onboarding"

    assert_text "Onboarding was successfully created"
    click_on "Back"
  end

  test "updating a Onboarding" do
    visit onboardings_url
    click_on "Edit", match: :first

    fill_in "Datail", with: @onboarding.datail
    fill_in "Description", with: @onboarding.description
    fill_in "Name", with: @onboarding.name
    fill_in "Offers", with: @onboarding.offers_id
    click_on "Update Onboarding"

    assert_text "Onboarding was successfully updated"
    click_on "Back"
  end

  test "destroying a Onboarding" do
    visit onboardings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Onboarding was successfully destroyed"
  end
end
