require 'rails_helper'

class SensorTypeTest < ActiveSupport::TestCase
    test "should not save a sensor_type without name" do
     sensor_type = SensorType.new
      assert_not sensor_type.save, "Saved sensor without name"
    end
end
