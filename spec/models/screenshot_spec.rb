require 'spec_helper'

describe Screenshot do

	it { should respond_to :filename }
	it { should respond_to :project }

	it { should belong_to :project }
  
end
