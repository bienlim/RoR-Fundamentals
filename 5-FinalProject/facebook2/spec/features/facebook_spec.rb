require 'rails_helper'

feature "Facebook" do
    scenario "Cannot login if usernamepassword is blank" do
        visit "/"
        fill_in "email", with: "12345"
      click_button "Log In"
      expect(page).to have_content "Username/Password can't be blank"
    end
    scenario "Cannot create account without email" do
        visit "users/new"
        fill_in "first_name", with: "johnwick"
        fill_in "last_name", with: "wick"
        fill_in "password", with: "password"
        click_button "Create account"
      expect(page).to have_content "Email can't be blank"
    end
    scenario "Cannot create account without invalid email" do
        visit "users/new"
        fill_in "first_name", with: "johnwick"
        fill_in "last_name", with: "wick"
        fill_in "email", with: "prank"
        fill_in "password", with: "password"
        click_button "Create account"
      expect(page).to have_content "Email is invalid"
    end
    scenario "Successfully logged in" do
        User.create(first_name:"john",last_name:"wick",email:"john@email.com",password:"password")
        visit "/"
        fill_in "email", with: "john@email.com"
        fill_in "password", with: "password"
        click_button "Log In"
         expect(page).to have_content "Welcome"
         expect(page).to have_current_path("/users/index") 
    end
    # scenario "successful login" do
    #     visit "/"
    #     fill_in "username", with: "johnwick"
    #     click_button "Log in"
    #     expect(page).to have_content "Welcome"
    #     expect(page).to have_current_path("/blogs/index") 
    #   # We'll be redirecting to the user show page
    # end
    # scenario "not successful login" do
    #     visit "/"
    #     fill_in "username", with: "12345"
    #   click_button "Log in"
    #   expect(page).to have_content "Name is too short (minimum is 6 characters)"
    #   # We'll be redirecting to the user show page
    #   #expect(page).to have_current_path(user_path(User.last))    
    # end
    # scenario "successful create comment" do
    #     visit "/"
    #     fill_in "username", with: "johnwick"
    #     click_button "Log in"
    #     visit "blogs/index"
    #     fill_in "content", with: "12345678910"
    #   click_button "Comment"
    #   expect(page).to have_content "12345678910"
    #   # We'll be redirecting to the user show page
    # end
    # scenario "successful sign out" do
    #     visit "/"
    #     fill_in "username", with: "johnwick"
    #     click_button "Log in"
    #     visit "blogs/index"
    #     click_link('signout')
    #     expect(page).to have_current_path("/") 
    #   # We'll be redirecting to the user show page
    # end


end