require 'spec_helper'
require_relative '../../../../apps/web/views/threads/index'

describe Web::Views::Threads::Index do
  let(:exposures) { Hash[foo: 'bar'] }
  let(:template)  { Hanami::View::Template.new('apps/web/templates/threads/index.html.erb') }
  let(:view)      { Web::Views::Threads::Index.new(template, exposures) }
  let(:rendered)  { view.render }

  it 'exposes #foo' do
    view.foo.must_equal exposures.fetch(:foo)
  end
end
