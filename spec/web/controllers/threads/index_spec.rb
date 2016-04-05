require 'spec_helper'
require_relative '../../../../apps/web/controllers/threads/index'

describe Web::Controllers::Threads::Index do
  let(:action) { Web::Controllers::Threads::Index.new }
  let(:params) { Hash[] }

  it 'is successful' do
    response = action.call(params)
    response[0].must_equal 200
  end
end
