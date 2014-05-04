require 'spec_helper'

describe Project do
  
	it { should respond_to(:url) }
	it { should respond_to(:name) }
	it { should respond_to(:description) }

	it { should validate_presence_of(:url) }
	it { should validate_presence_of(:name) }
	it { should validate_presence_of(:description) }

end
