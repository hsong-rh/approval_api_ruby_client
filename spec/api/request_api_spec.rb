=begin
#Insights Service Approval APIs

#APIs to query approval service

The version of the OpenAPI document: 1.0.0
Contact: support@redhat.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.2.2

=end

require 'spec_helper'
require 'json'

# Unit tests for ApprovalApiClient::RequestApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'RequestApi' do
  before do
    # run before each test
    @api_instance = ApprovalApiClient::RequestApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of RequestApi' do
    it 'should create an instance of RequestApi' do
      expect(@api_instance).to be_instance_of(ApprovalApiClient::RequestApi)
    end
  end

  # unit tests for create_request
  # Add an approval request by given parameters
  # Add an approval request by given parameters, available to anyone
  # @param request_in Parameters need to create a request
  # @param [Hash] opts the optional parameters
  # @return [Request]
  describe 'create_request test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_requests
  # Return an array of requester made approval requests, available to anyone
  # The result depends on the x-rh-persona header (approval/admin, approval/requseter, or approval/approver). Program generated child requests are not included.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_rh_persona Current login user&#39;s persona
  # @option opts [Integer] :limit How many items to return at one time (max 1000)
  # @option opts [Integer] :offset Starting Offset
  # @option opts [Object] :filter Filter for querying collections.
  # @return [RequestCollection]
  describe 'list_requests test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_requests_by_request
  # Return an array of child requests of a given request id
  # Return an array of child requests of a given request id. The result depends on the x-rh-persona header (approval/admin, approval/requseter, or approval/approver).
  # @param request_id Id of request
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_rh_persona Current login user&#39;s persona
  # @return [RequestCollection]
  describe 'list_requests_by_request test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for show_request
  # Return an approval request by given id
  # Return an approval request by given id, available to anyone who can access the request
  # @param id Query by id
  # @param [Hash] opts the optional parameters
  # @return [Request]
  describe 'show_request test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for show_request_content
  # Return request content of a given request id
  # Return request content of a given request id, available to all
  # @param request_id Id of request
  # @param [Hash] opts the optional parameters
  # @return [Object]
  describe 'show_request_content test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
