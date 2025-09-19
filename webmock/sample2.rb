require 'webmock'
include WebMock::API

WebMock.enable!

stub_request(:any, 'www.example.com')
  .with(query: { 'id' => '1' })
  .to_return(body: 'stubbed response')
stub_request(:any, 'www.example.com')
  .with(query: { 'id' => '2' })
  .to_return(body: 'stubbed response2')

p Net::HTTP.get('www.example.com', '/?id=1') # => "stubbed response"
p Net::HTTP.get('www.example.com', '/?id=2') # => "stubbed response2"
