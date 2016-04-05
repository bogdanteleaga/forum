require 'spec_helper'
require_relative '../../../../apps/web/controllers/users/logout'

describe Web::Controllers::Users::Logout do
  let(:action) { Web::Controllers::Users::Logout.new }
  let(:params) { Hash[] }

  it 'is successful' do
    response = action.call(params)
    response[0].must_equal 200
  end
end
