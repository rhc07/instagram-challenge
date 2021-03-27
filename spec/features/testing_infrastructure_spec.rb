require 'rails_helper'

RSpec.feature "Posts page", type: :feature do 
    scenario "Can view the posts page" do
        visit "/posts"
        expect(page).to have_content("Hello rails!")
    end
end