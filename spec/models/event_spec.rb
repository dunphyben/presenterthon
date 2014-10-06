require 'spec_helper'

# RSpec.describe Event, :type => :model do
#   pending "add some examples to (or delete) #{__FILE__}"

#   it 'should belong to host' do 

# end

  describe Event do 
	it { should have_many :tracks }
	it { should belong_to :host } # change to User

  describe 'slugged' do
    it 'should add dashes between the event name' do
      test_event = Event.create({:name => 'My Awesome Event'})
      test_event.slug.should eq "my-awesome-event"
    end
  end

end