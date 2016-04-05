require 'spec_helper'
require_relative '../../../../apps/web/controllers/topics/new'

describe Web::Controllers::Topics::New do
  let(:action) { Web::Controllers::Topics::New.new }
  let(:params) { Hash[] }

  it 'is successful' do
    response = action.call(params)
    response[0].must_equal 200
  end
end
