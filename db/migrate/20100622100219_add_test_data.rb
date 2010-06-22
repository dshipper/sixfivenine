class AddTestData < ActiveRecord::Migration
  def self.up
    User.delete_all
    u = User.create(:first_name => "Dan", 
                :last_name => "Shipper", 
                :email => "dshipper@gmail.com",
                :password => "gremlin",
                :password_confirmation => "gremlin")
    u.save
    d = User.create(:first_name => "David", 
                :last_name => "Shipper", 
                :email => "ds@djshipper.com",
                :password => "arielle",
                :password_confirmation => "arielle")
    d.save
    i = User.create(:first_name => "Irwin", 
                :last_name => "Shipper", 
                :email => "ifshipper@aol.com",
                :password => "golfer",
                :password_confirmation => "golfer")
    i.save
    a = User.create(:first_name => "Arielle", 
                :last_name => "Shipper", 
                :email => "arielle.shipper@gmail.com",
                :password => "nicole",
                :password_confirmation => "nicole")
    a.save
  
  end

  def self.down
    User.delete_all
  end
end
