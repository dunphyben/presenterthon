require 'spec_helper'

# RSpec.describe Host, :type => :model do
#   pending "add some examples to (or delete) #{__FILE__}"
# end

describe Host do 
	it { should have_many :events }
	# it { should have_many :host_users } # change to just users
end