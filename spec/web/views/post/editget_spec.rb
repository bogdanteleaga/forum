require 'spec_helper'
require_relative '../../../../apps/web/views/post/editget'

describe Web::Views::Post::Editget do
  let(:exposures) { Hash[foo: 'bar'] }
  let(:template)  { Hanami::View::Template.new('apps/web/templates/post/editget.html.erb') }
  let(:view)      { Web::Views::Post::Editget.new(template, exposures) }
  let(:rendered)  { view.render }

  it 'exposes #foo' do
    view.foo.must_equal exposures.fetch(:foo)
  end
end
