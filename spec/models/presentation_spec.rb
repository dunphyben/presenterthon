require 'spec_helper'

describe Presentation do 
	it { should have_and_belong_to_many :tracks }
	it { should have_and_belong_to_many :users }
end