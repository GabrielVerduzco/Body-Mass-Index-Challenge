module Login
  def login_user(user)
    visit '/users/sign_in'
    within("#new_user") do
      fill_in 'Email', with: user.email
      fill_in 'Password', with: user.password
    end
    click_button 'Log in'
    expect(page).to have_content 'Signed in successfully.'
  end
  #end
end
