require 'rails_helper'
feature "guest user creates an account" do
  scenario "successfully creates a new user account" do
    visit new_user_path
    fill_in "user_first_name", with: "shane"
    fill_in "user_last_name", with: "chang"
    fill_in "user_email", with: "schang@codingdojo.com"
    click_button "Create User"
    expect(page).to have_content "User successfully created"
  end
end

feature "User log in" do
    before(:each) do 
      visit new_user_path
    end
    scenario "successfully logged in" do
      fill_in "username", with: "hacker_hero"
      fill_in "password", with: "12345"
      click_button "Log In"
      expect(page).to have_content "Welcome, HackerHero!"
      # We'll be redirecting to the user show page
      expect(page).to have_current_path(user_path(User.last))    
    end
    scenario "doesn't fill out username field" do 
      fill_in "password", with: "12345"
      click_button "Log In"
      expect(page).to have_content "Username can't be blank"
    end
    scenario "doesn't fill out password field" do 
        fill_in "username", with: "hacker_hero"
        click_button "Log In"
        expect(page).to have_content "Password can't be blank"
    end
    scenario "unsuccessfully logged in with non-matching data" do 
        fill_in "username", with: "hacker_hero"
        fill_in "password", with: "54321"
        click_button "Log In"
        expect(page).to have_content "Username/Password invalid"
    end
end