require 'spec_helper'
require_relative '../../../../apps/web/controllers/topics/show'

describe Web::Controllers::Topics::Show do
  let(:action) { Web::Controllers::Topics::Show.new }
  let(:params) { Hash[] }

  it 'is successful' do
    response = action.call(params)
    response[0].must_equal 200
  end
end
