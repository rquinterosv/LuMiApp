require "application_system_test_case"

class RoutesTest < ApplicationSystemTestCase
  setup do
    @route = routes(:one)
  end

  test "visiting the index" do
    visit routes_url
    assert_selector "h1", text: "Routes"
  end

  test "should create route" do
    visit routes_url
    click_on "New route"

    fill_in "Category", with: @route.category
    fill_in "Country", with: @route.country_id
    fill_in "Date", with: @route.date
    fill_in "Grade", with: @route.grade
    fill_in "Lead climbing", with: @route.lead_climbing
    fill_in "Location", with: @route.location
    fill_in "Name", with: @route.name
    fill_in "Observation", with: @route.observation
    fill_in "Region", with: @route.region_id
    fill_in "Zone", with: @route.zone
    click_on "Create Route"

    assert_text "Route was successfully created"
    click_on "Back"
  end

  test "should update Route" do
    visit route_url(@route)
    click_on "Edit this route", match: :first

    fill_in "Category", with: @route.category
    fill_in "Country", with: @route.country_id
    fill_in "Date", with: @route.date
    fill_in "Grade", with: @route.grade
    fill_in "Lead climbing", with: @route.lead_climbing
    fill_in "Location", with: @route.location
    fill_in "Name", with: @route.name
    fill_in "Observation", with: @route.observation
    fill_in "Region", with: @route.region_id
    fill_in "Zone", with: @route.zone
    click_on "Update Route"

    assert_text "Route was successfully updated"
    click_on "Back"
  end

  test "should destroy Route" do
    visit route_url(@route)
    click_on "Destroy this route", match: :first

    assert_text "Route was successfully destroyed"
  end
end
