require 'test_helper'

class AdminsLoginTest < ActionDispatch::IntegrationTest
  def post_admin_login(username)
    # Flash
    assert page.has_text?('Signed in successfully.')

    # Successful login -> home page
    assert page.has_css?('title', text: full_title(''), visible: false)
    assert page.has_css?('h1', text: 'Home')

    # Special message on home page
    assert page.has_text?("You are logged in as an admin (#{username}).")
  end

  test 'User login page provides access to admin login page' do
    visit root_path
    click_on 'Login'
    assert page.has_link?('Admin Login', href: new_admin_session_path)
  end

  test 'Admin login page has expected content' do
    visit new_admin_session_path
    assert page.has_css?('title', text: full_title('Admin Login'), visible: false)
    assert page.has_css?('h1', text: 'Admin Login')
  end

  test 'Unsuccessful super admin login, no remembering' do
    login_admin('ewoods', 'Yale Law School', false)
    assert page.has_text?('Invalid Username or password.')
  end

  test 'Unsuccessful regular admin login, with remembering' do
    login_admin('ewoods', 'Yale Law School', true)
    assert page.has_text?('Invalid Username or password.')
  end

  test 'Successful super admin login and logout, no remembering' do
    login_admin('ewoods', 'endorphins', false)
    post_admin_login('ewoods')
    click_on 'Logout'
    assert page.has_text?('Signed out successfully.')
  end

  test 'Successful regular admin login and logout, no remembering' do
    login_admin('pbonafonte', "Neptune's Beauty Nook", false)
    post_admin_login('pbonafonte')
    click_on 'Logout'
    assert page.has_text?('Signed out successfully.')
  end

  test 'Successful super admin login and logout, with remembering' do
    login_admin('ewoods', 'endorphins', true)
    post_admin_login('ewoods')
    click_on 'Logout'
    assert page.has_text?('Signed out successfully.')
  end

  test 'Successful regular admin login and logout, with remembering' do
    login_admin('pbonafonte', "Neptune's Beauty Nook", true)
    post_admin_login('pbonafonte')
    click_on 'Logout'
    assert page.has_text?('Signed out successfully.')
  end
end
