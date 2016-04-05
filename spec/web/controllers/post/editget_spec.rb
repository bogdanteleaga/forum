require 'spec_helper'
require_relative '../../../../apps/web/controllers/post/editget'

describe Web::Controllers::Post::Editget do
  let(:action) { Web::Controllers::Post::Editget.new }
  let(:params) { Hash[] }

  it 'is successful' do
    response = action.call(params)
    response[0].must_equal 200
  end
end
