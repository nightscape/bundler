require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')
require File.expand_path(File.dirname(__FILE__) + '/../../lib/bundler/source')
describe "GitSource" do
  describe "#git_project_name" do
    ["git://github.com/rails/rails.git","git@github.com:rails/rails.git","git@github.com:rails/rails","git@github.com:rails"].each do |git_uri|
      it "should recognize Git URIs like #{git_uri.inspect}" do
         Bundler::GitSource.new(:uri=>git_uri).git_project_name.should == "rails"
      end
    end
  end
end