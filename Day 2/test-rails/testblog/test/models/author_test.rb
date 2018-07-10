require 'test_helper'

class AuthorTest < ActiveSupport::TestCase

    test "name should be present and within range" do 
        user = User.new(surname: 'witam', age: 12)
        assert_not user.valid?
    end

end