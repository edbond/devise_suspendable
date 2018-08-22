require File.dirname(__FILE__) + '/spec_helper'

describe "DeviseSuspendable" do
  it 'cannot run tests here' do
    pending "copy this file to your project as /spec/models/suspendable_user_spec.rb and run as part of your project's specs. The spec code depends on FactoryGirl gem and a valid :user factory defined."
  end
  
  it 'is not in suspended state when created fresh' do
    user = Factory(:user)
    user.should_not be_suspended
    user.should be_active_for_authentication 
  end

  it 'can be suspended' do
    user = Factory(:user)
    user.suspend!("has too many 'family members'")
    user.should be_suspended
    user.should_not be_active_for_authentication 
  end

  it 'can be unsuspended' do
    user = Factory(:user, :suspended_at => 1.day.ago)
    user.should be_suspended
    user.should_not be_active_for_authentication 
    
    user.unsuspend!

    user.should_not be_suspended
    user.should be_active_for_authentication 
  end

end
