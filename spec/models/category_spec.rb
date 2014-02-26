require 'spec_helper'

describe Category do

	context 'create a category' do

		it 'has no name' do
			category = FactoryGirl.create( :category, name: '')
			expect(category.name).to be_empty
		end


		it 'has name' do
			category = FactoryGirl.create( :category )
			expect(category.name).to_not be_empty
		end



	end
end
