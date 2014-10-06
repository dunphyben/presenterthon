require 'spec_helper'

describe Track do 

	it { should have_many :presentations }
	# it { should belong_to :host through: => :presentations} # change to user
	# this is a join table. do this when you're sober

  describe 'slugged' do
    it 'should add dashes between the track name' do
      test_track = Track.create({:name => 'My Awesome Track'})
      test_track.slug.should eq "my-awesome-track"
    end
  end

end