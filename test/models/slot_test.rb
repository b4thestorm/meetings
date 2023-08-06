# == Schema Information
#
# Table name: slots
#
#  id         :bigint           not null, primary key
#  start_time :datetime
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  coach_id   :bigint
#  student_id :bigint
#  end_time   :datetime
#
require "test_helper"

class SlotTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
