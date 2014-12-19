require 'test_helper'

class FilmsControllerTest < ActionController::TestCase
  setup do
    @film = films(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:films)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create film" do
    assert_difference('Film.count') do
      post :create, film: { description: @film.description, image_url: @film.image_url, title: @film.title }
    end

    assert_redirected_to film_path(assigns(:film))
  end

  test "should show film" do
    get :show, id: @film
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @film
    assert_response :success
  end

  test "should update film" do
    patch :update, id: @film, film: { description: @film.description, image_url: @film.image_url, title: @film.title }
    assert_redirected_to film_path(assigns(:film))
  end

  test "should destroy film" do
    assert_difference('Film.count', -1) do
      delete :destroy, id: @film
    end

    assert_redirected_to films_path
  end
end
