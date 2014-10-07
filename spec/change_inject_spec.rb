require 'change_inject'

describe Array do

	it 'should return the sum of the elements in the array' do
		expect([1,2,3,4,5].steves_method_improved_further_again(0) {|sum, element| sum+element}).to eq(15)
	end

	it 'should return the product of the elements in the array' do
		expect([1,2,3,4,5].steves_method_improved_further_again(1) {|product, element| product*element}).to eq(120)
	end

	it 'should return the sum of the elements in the array' do
		expect([1,2,3,4,5].steves_method_improved_further_again {|sum, element| sum+element}).to eq(15)
	end

	it 'should return the product of the elements in the array' do
		expect([1,2,3,4,5].steves_method_improved_further_again {|product, element| product*element}).to eq(120)
	end

	it 'should return the sum of the elements in the array' do
		expect([1,2,3,4,5].steves_method_improved_further_again(:+)).to eq(15)
	end

	it 'should return the products of the elements in the array' do
		expect([1,2,3,4,5].steves_method_improved_further_again(:*)).to eq(120)
	end

	it 'should return the sum of the elements in the array' do
		expect([1,2,3,4,5].steves_method_improved_further_again(2, :+)).to eq(17)
	end

	it 'should return the products of the elements in the array' do
		expect([1,2,3,4,5].steves_method_improved_further_again(2, :*)).to eq(240)
	end	

end