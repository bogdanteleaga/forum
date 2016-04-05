require 'spec_helper'
require_relative '../../../../apps/web/views/post/create'

describe Web::Views::Post::Create do
  let(:exposures) { Hash[foo: 'bar'] }
  let(:template)  { Hanami::View::Template.new('apps/web/templates/post/create.html.erb') }
  let(:view)      { Web::Views::Post::Create.new(template, exposures) }
  let(:rendered)  { view.render }

  it 'exposes #foo' do
    view.foo.must_equal exposures.fetch(:foo)
  end
end
