require 'spec_helper'
require_relative '../../../../apps/web/controllers/post/delete'

describe Web::Controllers::Post::Delete do
  let(:action) { Web::Controllers::Post::Delete.new }
  let(:params) { Hash[] }

  it 'is successful' do
    response = action.call(params)
    response[0].must_equal 200
  end
end
