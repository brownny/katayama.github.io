require 'test_helper'

class NamecardsControllerTest < ActionController::TestCase
  setup do
    @namecard = namecards(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:namecards)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create namecard" do
    assert_difference('Namecard.count') do
      post :create, namecard: { address: @namecard.address, birthday: @namecard.birthday, cardnumber: @namecard.cardnumber, company: @namecard.company, country: @namecard.country, date: @namecard.date, email: @namecard.email, name: @namecard.name, phone: @namecard.phone, position: @namecard.position, postcard: @namecard.postcard }
    end

    assert_redirected_to namecard_path(assigns(:namecard))
  end

  test "should show namecard" do
    get :show, id: @namecard
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @namecard
    assert_response :success
  end

  test "should update namecard" do
    patch :update, id: @namecard, namecard: { address: @namecard.address, birthday: @namecard.birthday, cardnumber: @namecard.cardnumber, company: @namecard.company, country: @namecard.country, date: @namecard.date, email: @namecard.email, name: @namecard.name, phone: @namecard.phone, position: @namecard.position, postcard: @namecard.postcard }
    assert_redirected_to namecard_path(assigns(:namecard))
  end

  test "should destroy namecard" do
    assert_difference('Namecard.count', -1) do
      delete :destroy, id: @namecard
    end

    assert_redirected_to namecards_path
  end
end
