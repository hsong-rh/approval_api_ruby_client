=begin
#Insights Service Approval APIs

#APIs to query approval service

OpenAPI spec version: 1.0.0
Contact: support@redhat.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 3.3.4

=end

require 'uri'

module ApprovalAPIClient
  class TemplateApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Return all templates
    # Return all templates
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit How many items to return at one time (max 1000) (default to 20)
    # @option opts [Integer] :offset Starting Offset (default to 0)
    # @return [TemplateOutCollection]
    def list_templates(opts = {})
      data, _status_code, _headers = list_templates_with_http_info(opts)
      data
    end

    # Return all templates
    # Return all templates
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit How many items to return at one time (max 1000)
    # @option opts [Integer] :offset Starting Offset
    # @return [Array<(TemplateOutCollection, Fixnum, Hash)>] TemplateOutCollection data, response status code and response headers
    def list_templates_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TemplateApi.list_templates ...'
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 100
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling TemplateApi.list_templates, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 20
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling TemplateApi.list_templates, must be greater than or equal to 20.'
      end

      if @api_client.config.client_side_validation && !opts[:'offset'].nil? && opts[:'offset'] < 0
        fail ArgumentError, 'invalid value for "opts[:"offset"]" when calling TemplateApi.list_templates, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/templates'

      # query parameters
      query_params = {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['APIKey_auth', 'Basic_auth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TemplateOutCollection')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TemplateApi#list_templates\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Return a template by given id
    # Return a template by given id
    # @param id Query by id
    # @param [Hash] opts the optional parameters
    # @return [TemplateOut]
    def show_template(id, opts = {})
      data, _status_code, _headers = show_template_with_http_info(id, opts)
      data
    end

    # Return a template by given id
    # Return a template by given id
    # @param id Query by id
    # @param [Hash] opts the optional parameters
    # @return [Array<(TemplateOut, Fixnum, Hash)>] TemplateOut data, response status code and response headers
    def show_template_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TemplateApi.show_template ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TemplateApi.show_template"
      end
      # resource path
      local_var_path = '/templates/{id}'.sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['APIKey_auth', 'Basic_auth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TemplateOut')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TemplateApi#show_template\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

  end
end
