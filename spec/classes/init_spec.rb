require 'spec_helper'
describe 'pagespeed' do

  context 'with default values for all parameters' do
    it { should contain_class('pagespeed') }
  end
end
