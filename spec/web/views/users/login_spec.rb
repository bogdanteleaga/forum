require 'spec_helper'
require_relative '../../../../apps/web/views/users/login'

describe Web::Views::Users::Login do
  let(:exposures) { Hash[foo: 'bar'] }
  let(:template)  { Hanami::View::Template.new('apps/web/templates/users/login.html.erb') }
  let(:view)      { Web::Views::Users::Login.new(template, exposures) }
  let(:rendered)  { view.render }

  it 'exposes #foo' do
    view.foo.must_equal exposures.fetch(:foo)
  end
end
