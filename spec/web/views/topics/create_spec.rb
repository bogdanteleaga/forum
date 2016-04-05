require 'spec_helper'
require_relative '../../../../apps/web/views/topics/create'

describe Web::Views::Topics::Create do
  let(:exposures) { Hash[foo: 'bar'] }
  let(:template)  { Hanami::View::Template.new('apps/web/templates/topics/create.html.erb') }
  let(:view)      { Web::Views::Topics::Create.new(template, exposures) }
  let(:rendered)  { view.render }

  it 'exposes #foo' do
    view.foo.must_equal exposures.fetch(:foo)
  end
end
