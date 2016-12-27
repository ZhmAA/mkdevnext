require 'rails_helper'
require 'support/helpers/login_helper.rb'
include LoginHelper

describe 'active admin access' do
  
  before do
    create(:user)
    create(:admin_user, email: 'admin@user.com')
    visit root_path
  end

  it 'denied, if user not admin' do
    sign_in('test@test.com', '12345', 'Войти')
    visit admin_root_path
    expect(page).to have_content 'You have not access to this page'
  end

  it 'confirmed, if user admin' do
    sign_in('admin@user.com', '12345', 'Войти')
    visit admin_root_path
    expect(page).to have_content 'Dashboard'
  end
end
