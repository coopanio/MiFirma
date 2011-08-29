require 'test_helper'

class ProvinceTest < ActiveSupport::TestCase
  
	
	# Province has 2 municipalities
	test "has two" do
		madrid = provinces(:madrid)
  	assert madrid.municipalities.count == 2
	end
	
	# Provinces has not he same name
  test "Province is not valid without a unique name" do
    province = Province.new(:name => provinces(:madrid).name,
														:id_ine => provinces(:madrid).id_ine)
		assert !province.save
	end
end
