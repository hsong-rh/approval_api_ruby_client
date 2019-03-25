=begin
#Insights Service Approval APIs

#APIs to query approval service

OpenAPI spec version: 1.0.0
Contact: support@redhat.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 3.3.4

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for ApprovalApiClient::ActionIn
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ActionIn' do
  before do
    # run before each test
    @instance = ApprovalApiClient::ActionIn.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ActionIn' do
    it 'should create an instance of ActionIn' do
      expect(@instance).to be_instance_of(ApprovalApiClient::ActionIn)
    end
  end
  describe 'test attribute "processed_by"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "operation"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["approve", "deny", "notify", "memo", "skip"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.operation = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "comments"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
