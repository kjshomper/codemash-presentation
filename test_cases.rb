# Test each resource
{test: 'response_code_test', method: :get, resource: '/oauth', data: 'GET_REQUEST', validation: 200}
{test: 'custom_capture_test', method: :get, resource: '/oauth', data: 'GET_REQUEST', validation: 200, capture: "{'$custom_message' => JSON.parse(@response.body)['user']}"}
{test: 'response_code_test', method: :options, resource: '/jsontoxml', data: 'JSON', validation: 200}
{test: 'response_code_test', method: :post, resource: '/jsontoxml', data: 'JSON', validation: 200}
{test: 'response_code_test', method: :post, resource: '/hardjsontoxml', data: 'JSON', validation: 200}
{test: 'response_code_test', method: :post, resource: '/pathchaining', data: 'CUSTOM_MESSAGE', validation: 200}
{test: 'response_code_test', method: :post, resource: '/async', data: 'PATH_CHAINING', validation: 200}
{test: 'response_code_test', method: :post, resource: '/proxychaining', data: 'PROXY_CHAINING', validation: 200}

# Test apigee policies
{test: 'api_key_test', method: :get, resource: '/oauth', data: 'GET_REQUEST', validation: 401}
{test: 'oauth_test', method: :get, resource: '/oauth', data: 'GET_REQUEST', validation: 401}

# Error condition tests
{test: 'response_code_test', method: :get, resource: '/', data: 'NO_CONTENT_TYPE', validation: 400}
{test: 'substring_test', method: :get, resource: '/', data: 'NO_CONTENT_TYPE', validation: 'Content-Type Header is missing'}

# Pass in data from object - restassured_spec.rb
{test: 'response_code_test', method: :post, resource: '/pathchaining', data: 'DYNAMIC_DATA', validation: 200}
{test: 'response_code_test', method: :post, resource: '/pathchaining', data: 'BAD_AUTH_HEADER', validation: 500}
{test: 'header_test', method: :options, resource: '/jsontoxml', data: 'JSON', validation: 'Connection', equals: 'Keep-Alive'}
{test: 'header_test', method: :options, resource: '/jsontoxml', data: 'JSON', validation: 'Access-Control-Allow-Methods', equals: 'GET, PUT, POST, OPTIONS'}
{test: 'nested_key_test', method: :post, resource: '/jsontoxml', data: 'JSON', validation: 'postalAddress.city', equals: 'Waverly'}

# Unit tests - RESTassured errors
{test: 'response_code_test', method: :hello, resource: '/', data: 'NO_CONTENT_TYPE', validation: 400}
{test: 'response_code_test', method: :get, resource: '/oauth', data: 'UNDEFINED_DATA', validation: 400}
{test: 'response_code_test', method: :get, data: 'NO_CONTENT_TYPE', validation: 400}
{test: 'fake_method', method: :get, resource: '/', data: 'NO_CONTENT_TYPE', validation: 400}
{}
