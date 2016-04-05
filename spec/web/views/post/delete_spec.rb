require 'spec_helper'
require_relative '../../../../apps/web/views/post/delete'

describe Web::Views::Post::Delete do
  let(:exposures) { Hash[foo: 'bar'] }
  let(:template)  { Hanami::View::Template.new('apps/web/templates/post/delete.html.erb') }
  let(:view)      { Web::Views::Post::Delete.new(template, exposures) }
  let(:rendered)  { view.render }

  it 'exposes #foo' do
    view.foo.must_equal exposures.fetch(:foo)
  end
end
