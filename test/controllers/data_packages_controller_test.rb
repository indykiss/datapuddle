require 'test_helper'

class DataPackagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @data_package = data_packages(:one)
  end

  test "should get index" do
    get data_packages_url
    assert_response :success
  end

  test "should get new" do
    get new_data_package_url
    assert_response :success
  end

  test "should create data_package" do
    assert_difference('DataPackage.count') do
      post data_packages_url, params: { data_package: {  } }
    end

    assert_redirected_to data_package_url(DataPackage.last)
  end

  test "should show data_package" do
    get data_package_url(@data_package)
    assert_response :success
  end

  test "should get edit" do
    get edit_data_package_url(@data_package)
    assert_response :success
  end

  test "should update data_package" do
    patch data_package_url(@data_package), params: { data_package: {  } }
    assert_redirected_to data_package_url(@data_package)
  end

  test "should destroy data_package" do
    assert_difference('DataPackage.count', -1) do
      delete data_package_url(@data_package)
    end

    assert_redirected_to data_packages_url
  end
end
