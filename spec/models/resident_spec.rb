require 'spec_helper'

describe Resident do
  def setUp
    Resident.destroy_all
  end
  it "should have a name" do
    name = 'Proco' 
    resident = Resident.sample(:name => name)
    resident.name.should == name
  end

  it "should have a unique name" do
    name = 'Proco' 
    r1 = Resident.create(:name => name)
    r1.errors.count.should == 0
    r1_id = r1.id
    r2 = Resident.create(:name => name)
    r2.errors.count.should == 1
    residents = Resident.find(:all)
    residents.count.should == 1
    residents.first.id.should == r1_id 
    residents.last.id.should == r1_id 
  end
end
