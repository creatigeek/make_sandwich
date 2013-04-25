require 'spec_helper'

describe "Sandwichpost pages" do

  subject { page }

  let(:user) { FactoryGirl.create(:user) }
  before { valid_signin(user) }

  describe "sandwichpost creation" do
    before { visit root_path }

    describe "with invalid information" do

      it "should not create a sandwichpost" do
        expect { click_button "Request" }.not_to change(Sandwichpost, :count)
      end

      describe "error messages" do
        before { click_button "Request" }
        it { should have_content('error') } 
      end
    end

    describe "with valid information" do

      before do
        fill_in 'sandwichpost_sandwich_type', with: "meaty"
        fill_in 'sandwichpost_quote',         with: "this is a quote"   
      end
      it "should create a sandwichpost" do
        expect { click_button "Request" }.to change(Sandwichpost, :count).by(1)
      end
    end
  end
end