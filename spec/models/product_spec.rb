require 'rails_helper'

describe Product do

  # Without factorygirl config
  # let(:product) { FactoryGirl.build(:product, price: 100) }

  # With factorygirl config. Refer rails_helper.rb
  let(:product) { build(:product, price: 100) }

  describe "validations" do
    it { should validate_presence_of(:name) }
    it { should ensure_length_of(:name).is_at_least(2) }

    it { should validate_presence_of(:description) }
    it { should ensure_length_of(:description).is_at_least(10).is_at_most(500) }

    it { should validate_presence_of(:price) }
    it { should validate_numericality_of(:price) }
  end

  describe "#discounted_price" do
    cases = {"less than 0" => -1, "greater than 0" => 105, "non numeric" => "abcd"}

    cases.each do |key, value|
      context "when discount % #{key} " do
        it "should return nil" do
          expect(product.discounted_price(value)).to be_nil
        end
      end
    end

    context "when discount % is valid (0-100)" do
      it "should return discounted price" do
        expect(product.discounted_price(0)).to eq(100)
        expect(product.discounted_price(100)).to eq(0)
        expect(product.discounted_price(2.5)).to eq(97.5)
        expect(product.discounted_price(0.005)).to eq(99.995)
      end
    end
  end

  # #Example - 1 (Before/After)
  # #Runs once for the current block
  # before(:all) do
  #   puts "Runs once"
  # end
  #
  # #Runs before each assertion/spec in the current block. i.e before each 'it' block
  # before(:each) do
  #   puts "Runs before specs"
  # end
  #
  # #Runs once for the current block
  # after(:all) do
  #   puts "Runs once at the end"
  # end
  #
  # #Runs before each assertion/spec in the current block. i.e after each 'it' block
  # after(:each) do
  #   puts "Runs after specs"
  # end
  #
  # # Example 2 (expect)
  # #
  # #rspec 'expect' expectation syntax
  # describe 'it should validate using rspec expect' do
  #   product = FactoryGirl.build(:product, description: "hello world")
  #   it { expect(product).to be_valid }
  # end
  #
  # # Example 3 (Implicit Subject)
  # #
  # #rspec implicit subject.
  # describe 'it should validate using implicit subject' do
  #
  #   it { should_not be_valid }  #implicit subject
  # end
  #
  # # Example 4 (Explicit subject, let, subject)
  # #
  # # rspec explicit subject. Also displays let,subject functionality
  # describe 'it should validate using explicit subject' do
  #   let(:prod_name) { "Fancy Hat" }
  #   subject { FactoryGirl.build(:product) }
  #
  #   it { should be_valid } #explicit subject ie product1
  #   its(:name) { should eq(prod_name) }
  # end


  # # Example 5 (focus)
  # # Use focus to run only selected tests. Find settings in spec_helper.rb
  # describe "validations", :focus => true do
  # end
  #


  # rspec 'should' expectation syntax. This is disabled from rspec config (see spec_helper.rb)
  # describe 'it should validate using rspec should' do
  #   it { FactoryGirl.build(:product, description: "hello world").should be_valid }
  # end

end
