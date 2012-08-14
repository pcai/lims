require 'test_helper'

class CertsControllerTest < ActionController::TestCase
  setup do
    @cert = certs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:certs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cert" do
    assert_difference('Cert.count') do
      post :create, cert: { category: @cert.category, comments: @cert.comments, course_id: @cert.course_id, date_expires: @cert.date_expires, date_issued: @cert.date_issued, id_number: @cert.id_number, instructor_id: @cert.instructor_id, level: @cert.level, person_id: @cert.person_id, status: @cert.status }
    end

    assert_redirected_to cert_path(assigns(:cert))
  end

  test "should show cert" do
    get :show, id: @cert
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cert
    assert_response :success
  end

  test "should update cert" do
    put :update, id: @cert, cert: { category: @cert.category, comments: @cert.comments, course_id: @cert.course_id, date_expires: @cert.date_expires, date_issued: @cert.date_issued, id_number: @cert.id_number, instructor_id: @cert.instructor_id, level: @cert.level, person_id: @cert.person_id, status: @cert.status }
    assert_redirected_to cert_path(assigns(:cert))
  end

  test "should destroy cert" do
    assert_difference('Cert.count', -1) do
      delete :destroy, id: @cert
    end

    assert_redirected_to certs_path
  end
end
