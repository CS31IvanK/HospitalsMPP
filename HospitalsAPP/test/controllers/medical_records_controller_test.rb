require "test_helper"

class MedicalRecordsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @medical_record = medical_records(:one)
  end

  test "should get index" do
    get medical_records_url
    assert_response :success
  end

  test "should get new" do
    get new_medical_record_url
    assert_response :success
  end

  test "should create medical_record" do
    assert_difference("MedicalRecord.count") do
      post medical_records_url, params: { medical_record: { date: @medical_record.date, doc_id: @medical_record.doc_id, mrec_id: @medical_record.mrec_id, pat_id: @medical_record.pat_id, problem: @medical_record.problem } }
    end

    assert_redirected_to medical_record_url(MedicalRecord.last)
  end

  test "should show medical_record" do
    get medical_record_url(@medical_record)
    assert_response :success
  end

  test "should get edit" do
    get edit_medical_record_url(@medical_record)
    assert_response :success
  end

  test "should update medical_record" do
    patch medical_record_url(@medical_record), params: { medical_record: { date: @medical_record.date, doc_id: @medical_record.doc_id, mrec_id: @medical_record.mrec_id, pat_id: @medical_record.pat_id, problem: @medical_record.problem } }
    assert_redirected_to medical_record_url(@medical_record)
  end

  test "should destroy medical_record" do
    assert_difference("MedicalRecord.count", -1) do
      delete medical_record_url(@medical_record)
    end

    assert_redirected_to medical_records_url
  end
end
