require 'test_helper'

class NumberRecordTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "only intergers should be valid values" do
    valid_number_record = NumberRecord.new(value: 1)
    invalid_number_record = NumberRecord.new(value: 1.9)
    assert valid_number_record.valid?
    assert invalid_number_record.invalid?
  end

  test "only integers 1-10 should be valid" do
    valid_number_record = NumberRecord.new(value: 9)
    invalid_number_record = NumberRecord.new(value: 0)
    assert valid_number_record.valid?
    assert invalid_number_record.invalid?
  end
end
