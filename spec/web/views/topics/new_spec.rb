require 'spec_helper'
require_relative '../../../../apps/web/views/topics/new'

describe Web::Views::Topics::New do
  let(:exposures) { Hash[foo: 'bar'] }
  let(:template)  { Hanami::View::Template.new('apps/web/templates/topics/new.html.erb') }
  let(:view)      { Web::Views::Topics::New.new(template, exposures) }
  let(:rendered)  { view.render }

  it 'exposes #foo' do
    view.foo.must_equal exposures.fetch(:foo)
  end
end
