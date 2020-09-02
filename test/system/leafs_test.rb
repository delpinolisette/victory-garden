require "application_system_test_case"

class LeafsTest < ApplicationSystemTestCase
  setup do
    @leaf = leafs(:one)
  end

  test "visiting the index" do
    visit leafs_url
    assert_selector "h1", text: "Leafs"
  end

  test "creating a Leaf" do
    visit leafs_url
    click_on "New Leaf"

    fill_in "Body", with: @leaf.body
    fill_in "Img url", with: @leaf.img_url
    fill_in "Title", with: @leaf.title
    fill_in "User", with: @leaf.user_id
    click_on "Create Leaf"

    assert_text "Leaf was successfully created"
    click_on "Back"
  end

  test "updating a Leaf" do
    visit leafs_url
    click_on "Edit", match: :first

    fill_in "Body", with: @leaf.body
    fill_in "Img url", with: @leaf.img_url
    fill_in "Title", with: @leaf.title
    fill_in "User", with: @leaf.user_id
    click_on "Update Leaf"

    assert_text "Leaf was successfully updated"
    click_on "Back"
  end

  test "destroying a Leaf" do
    visit leafs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Leaf was successfully destroyed"
  end
end
