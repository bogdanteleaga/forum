require 'spec_helper'
require_relative '../../../../apps/web/views/users/logout'

describe Web::Views::Users::Logout do
  let(:exposures) { Hash[foo: 'bar'] }
  let(:template)  { Hanami::View::Template.new('apps/web/templates/users/logout.html.erb') }
  let(:view)      { Web::Views::Users::Logout.new(template, exposures) }
  let(:rendered)  { view.render }

  it 'exposes #foo' do
    view.foo.must_equal exposures.fetch(:foo)
  end
end
