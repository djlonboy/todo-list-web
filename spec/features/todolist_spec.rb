require "capybara/rspec"

feature "Add Item:" do
  scenario "Should be able to add a todo item" do
    visit '/add-item'
    fill_in('item', :with => 'Buy stamps')
    click_button('submit')
    expect(page).to have_content 'Buy stamps'
  end
end

  feature "Complete item:" do
    scenario "Should be able to mark item complete" do
      visit '/add-item'
      fill_in('item', :with => 'Buy stamps')
      click_button('submit')
      visit "/mark-complete"
      fill_in('itemnumber', :with => '1')
      click_button('submit')
      expect(page).to have_content 'Buy stamps - Complete'
  end
end
