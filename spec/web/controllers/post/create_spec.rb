require 'spec_helper'
require_relative '../../../../apps/web/controllers/post/create'

describe Web::Controllers::Post::Create do
  let(:action) { Web::Controllers::Post::Create.new }
  let(:params) { Hash[] }

  it 'is successful' do
    response = action.call(params)
    response[0].must_equal 200
  end
end
