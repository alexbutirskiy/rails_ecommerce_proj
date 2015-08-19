require 'rails_helper'

describe 'index page' do
  it 'should load index page', :js => true do
    visit main_index_path
    assert page.has_content?('SHOP ONE')
    assert current_path, '/'
    end

  it 'should have all click accessible links for unauthorized access' do
    visit main_index_path
<<<<<<< HEAD
    ['Склад', 'Новый продукт', 'Зарегистрироваться', 'Войти', 'Корзина'].each do |item|
=======
    ['About', 'Store', 'Sign in', 'Register'].each do |item|
>>>>>>> dev
      assert page.has_link?(item)
    end
  end

<<<<<<< HEAD
  it 'should do transition from index to store page' do
=======
  # it 'should have all click links' do
  #   visit main_index_path
  #   ['About', 'Store', 'New item', 'Sign in', 'Register', 'Cart'].each do |item|
  #     assert page.has_link?(item)
  #   end
  # end

  it 'should do transition from index to about page' do
>>>>>>> dev
    visit main_index_path
    find(:xpath, "html/body/header/div/ul[1]/li[1]/a").click
    assert current_path, '/products'
  end

<<<<<<< HEAD
  it 'should do transition from index to new item page' do
    visit main_index_path
    find(:xpath, "html/body/header/div/ul[1]/li[2]/a").click
    assert current_path, '/products/new'
  end
=======
  # it 'should do transition from index to new item creating menu' do
  #   visit main_index_path
  #   find(:xpath, "html/body/header/div/nav/ul[1]/li[3]/a").click
  #   assert current_path, '/products/new'
  # end
>>>>>>> dev

  it 'should do transition from index to sign in page' do
    visit main_index_path
    find(:xpath, "html/body/header/div/ul[2]/li[1]/a").click
    assert current_path, '/users/sign_up'
  end
  

  it 'should do transition from index to sign up page' do
    visit main_index_path
    find(:xpath, "html/body/header/div/ul[2]/li[2]/a").click
    assert current_path, '/users/sign_in'
  end

  it 'should do transition from index to sign up page' do
    visit main_index_path
    find(:xpath, "html/body/header/div/ul[2]/li[3]/a").click
    assert current_path, '/cart'
  end

end
