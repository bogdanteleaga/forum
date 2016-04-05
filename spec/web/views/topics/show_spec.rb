require 'spec_helper'
require_relative '../../../../apps/web/views/topics/show'

describe Web::Views::Topics::Show do
  let(:exposures) { Hash[foo: 'bar'] }
  let(:template)  { Hanami::View::Template.new('apps/web/templates/topics/show.html.erb') }
  let(:view)      { Web::Views::Topics::Show.new(template, exposures) }
  let(:rendered)  { view.render }

  it 'exposes #foo' do
    view.foo.must_equal exposures.fetch(:foo)
  end
end
