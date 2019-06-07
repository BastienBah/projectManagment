require 'test_helper'

class PrductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @prduct = prducts(:one)
  end

  test "should get index" do
    get prducts_url
    assert_response :success
  end

  test "should get new" do
    get new_prduct_url
    assert_response :success
  end

  test "should create prduct" do
    assert_difference('Prduct.count') do
      post prducts_url, params: { prduct: { description: @prduct.description, name: @prduct.name, type: @prduct.type } }
    end

    assert_redirected_to prduct_url(Prduct.last)
  end

  test "should show prduct" do
    get prduct_url(@prduct)
    assert_response :success
  end

  test "should get edit" do
    get edit_prduct_url(@prduct)
    assert_response :success
  end

  test "should update prduct" do
    patch prduct_url(@prduct), params: { prduct: { description: @prduct.description, name: @prduct.name, type: @prduct.type } }
    assert_redirected_to prduct_url(@prduct)
  end

  test "should destroy prduct" do
    assert_difference('Prduct.count', -1) do
      delete prduct_url(@prduct)
    end

    assert_redirected_to prducts_url
  end
end
