require 'spec_helper'

describe Sandwichpost do

  let(:user) { FactoryGirl.create(:user) }
  before { @sandwichpost = user.sandwichposts.build(sandwich_type: "meaty", quote: "Lorem ipsum") }

  subject { @sandwichpost }

  it { should respond_to(:sandwich_type) }
  it { should respond_to(:user_id) }
  it { should respond_to(:quote) }
  it { should respond_to(:user) }
  its(:user) { should == user }
  
  it { should be_valid }

  describe "accessible attributes" do
    it "should not allow access to user_id" do
      expect do
        Sandwichpost.new(user_id: user.id)
      end.to raise_error(ActiveModel::MassAssignmentSecurity::Error)
    end    
  end
  
  describe "when user_id is not present" do
    before { @sandwichpost.user_id = nil }
    it { should_not be_valid }
  end

  describe "with blank sandwich_type" do
    before { @sandwichpost.sandwich_type = " " }
    it { should_not be_valid }
  end

  describe "with blank quote" do
    before { @sandwichpost.quote = " " }
    it { should_not be_valid }
  end

end