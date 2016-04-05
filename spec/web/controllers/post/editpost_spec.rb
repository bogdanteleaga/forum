require 'spec_helper'
require_relative '../../../../apps/web/controllers/post/editpost'

describe Web::Controllers::Post::Editpost do
  let(:action) { Web::Controllers::Post::Editpost.new }
  let(:params) { Hash[] }

  it 'is successful' do
    response = action.call(params)
    response[0].must_equal 200
  end
end
