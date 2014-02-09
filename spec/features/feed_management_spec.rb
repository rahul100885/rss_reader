require "spec_helper"

feature "Feed management" do
  scenario "Add feed" do
    # TODO write mock
    visit "/rss_feeds/new"
    fill_in "Feed url", :with => "http://feeds.feedburner.com/PaulDixExplainsNothing"
    click_button "Create Rss feed"

    expect(page).to have_text("Rss feed was successfully created.")
  end

  scenario "Edit feed" do
  end

  scenario "delete feed" do
  end
end
