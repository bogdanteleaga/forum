require 'spec_helper'
require_relative '../../../../apps/web/controllers/topics/create'

describe Web::Controllers::Topics::Create do
  let(:action) { Web::Controllers::Topics::Create.new }
  let(:params) { Hash[] }

  it 'is successful' do
    response = action.call(params)
    response[0].must_equal 200
  end
end
