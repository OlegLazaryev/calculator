require_relative 'spec_helper'
require_relative 'calculator'

RSpec.describe Calculator do
	let(:calculator) { Calculator.new }

	

	describe '#add' do
		before(:each) do
			calculator.reset		
		end

		it "adds two numbers" do
			# puts 'Before assert'
			expect(calculator.add(2,2)).to eq(4)
		end

		it "adds two numbers" do
			# puts 'Before assert'
			expect(calculator.add(5,100)).to eq(105)
		end
	end


	describe '#sub' do

		it 'substracts' do
			expect(calculator.sub(2,2)).to eq(0)
		end
	end
	
	describe '#divide' do

		context 'no zero number' do
			it 'divides' do
				expect(calculator.divide(2,2)).to eq(1)
			end	
		end

		context 'zero number' do

			it 'does not allow to divide by zero' do
				expect{ calculator.divide(2, 0)}.not_to raise_error
			end

			it 'returns a description' do
				expect(calculator.divide(2, 0)).to eq("Not allowed")
			end
		end
	end
end