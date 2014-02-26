require 'spec_helper'

describe Color do

	context	'create a color' do

		it 'has no name' do
			color = FactoryGirl.create( :color, name: '' )
			expect(color.name).to be_empty
		end

		it 'has name' do
			color = FactoryGirl.create( :color )
			expect(color.name).to_not be_empty
		end

	end
end
