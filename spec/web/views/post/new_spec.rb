require 'spec_helper'
require_relative '../../../../apps/web/views/post/new'

describe Web::Views::Post::New do
  let(:exposures) { Hash[foo: 'bar'] }
  let(:template)  { Hanami::View::Template.new('apps/web/templates/post/new.html.erb') }
  let(:view)      { Web::Views::Post::New.new(template, exposures) }
  let(:rendered)  { view.render }

  it 'exposes #foo' do
    view.foo.must_equal exposures.fetch(:foo)
  end
end