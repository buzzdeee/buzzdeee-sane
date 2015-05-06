require 'spec_helper'
describe 'sane' do

  context 'with defaults for all parameters' do
    it { should contain_class('sane') }
  end
end
