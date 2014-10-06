require 'spec_helper'

describe Presentation do 
	it { should have_and_belong_to_many :tracks }
	it { should have_and_belong_to_many :users }

  describe 'slugged' do
    it 'should add dashes between the presentation name' do
      test_presentation = Presentation.create({:name => 'My Awesome Presentation'})
      test_presentation.slug.should eq "my-awesome-presentation"
    end
  end
end