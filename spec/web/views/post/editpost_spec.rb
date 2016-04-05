require 'spec_helper'
require_relative '../../../../apps/web/views/post/editpost'

describe Web::Views::Post::Editpost do
  let(:exposures) { Hash[foo: 'bar'] }
  let(:template)  { Hanami::View::Template.new('apps/web/templates/post/editpost.html.erb') }
  let(:view)      { Web::Views::Post::Editpost.new(template, exposures) }
  let(:rendered)  { view.render }

  it 'exposes #foo' do
    view.foo.must_equal exposures.fetch(:foo)
  end
end
