require './validator.rb'
require 'test/unit'

class TestValidator < Test::Unit::TestCase

	def test_validator_file
		result ="PASS PASS FAIL PASS PASS FAIL FAIL PASS".split
		validator= Validator.new("input")
		assert_equal( result, validator.file_email_validate )
	end

	def test_email_validate
		validator = Validator.new
		assert_equal( "FAIL", validator.email_validate("@add@address.com") )
	end

end