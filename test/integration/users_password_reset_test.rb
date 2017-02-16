require 'test_helper'

class UsersPasswordResetTest < ActionDispatch::IntegrationTest
  test 'user password reset page is accessible' do
    visit root_path
    click_on 'Login'
    assert page.has_link?('Forgot your password?', href: new_user_password_path)
  end

  test 'user password reset page has the expected content' do
    visit root_path
    click_on 'Login'
    click_on 'Forgot your password?'
    assert page.has_css?('title', text: full_title('User: Reset Forgotten Password'), visible: false)
    assert page.has_css?('h1', text: 'User: Reset Forgotten Password')
  end

  test 'successfully resets user password' do
    begin_user_password_reset('sean_connery@example.com')
    assert page.has_text?('instructions on how to reset your password')

    # Open and follow instructions
    open_email('sean_connery@example.com')
    current_email.click_link 'Change my password'
    clear_emails # Clear the message queue

    # Provide new password and log in
    assert page.has_css?('title', text: full_title('User: Change Your Password'),
                                  visible: false)
    assert page.has_css?('h1', text: 'User: Change Your Password')
    assert page.has_text?('password management program')
    assert page.has_text?('create much better passwords')
    assert page.has_link?('KeePassX', href: 'http://www.keepassx.org')
    fill_in('user_password', with: 'James Bond')
    fill_in('user_password_confirmation', with: 'James Bond')
    click_on 'Change my password'
    assert page.has_text?('Your password has been changed successfully.')
    assert page.has_text?('You are now signed in.')
    assert page.has_text?('You are logged in as a user (sconnery).')
    click_on 'Logout'

    # Log in under the normal method
    login_user('sconnery', 'James Bond', false)
    click_on 'Logout'
  end
end
