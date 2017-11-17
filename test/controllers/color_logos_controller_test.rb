require 'test_helper'

class ColorLogosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @color_logo = color_logos(:one)
  end

  test "should get index" do
    get color_logos_url
    assert_response :success
  end

  test "should get new" do
    get new_color_logo_url
    assert_response :success
  end

  test "should create color_logo" do
    assert_difference('ColorLogo.count') do
      post color_logos_url, params: { color_logo: { default: @color_logo.default, false}: @color_logo.false}, font_set: @color_logo.font_set, name: @color_logo.name, primary_color: @color_logo.primary_color, seconday_color: @color_logo.seconday_color, theme: @color_logo.theme, user_id: @color_logo.user_id } }
    end

    assert_redirected_to color_logo_url(ColorLogo.last)
  end

  test "should show color_logo" do
    get color_logo_url(@color_logo)
    assert_response :success
  end

  test "should get edit" do
    get edit_color_logo_url(@color_logo)
    assert_response :success
  end

  test "should update color_logo" do
    patch color_logo_url(@color_logo), params: { color_logo: { default: @color_logo.default, false}: @color_logo.false}, font_set: @color_logo.font_set, name: @color_logo.name, primary_color: @color_logo.primary_color, seconday_color: @color_logo.seconday_color, theme: @color_logo.theme, user_id: @color_logo.user_id } }
    assert_redirected_to color_logo_url(@color_logo)
  end

  test "should destroy color_logo" do
    assert_difference('ColorLogo.count', -1) do
      delete color_logo_url(@color_logo)
    end

    assert_redirected_to color_logos_url
  end
end
