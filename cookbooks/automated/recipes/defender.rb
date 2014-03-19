#
# Cookbook Name:: automated
# Recipe:: defender
#

include_recipe "encrypted_volume"

# create a test user
chef_gem "ruby-shadow"
user "defender" do
  supports :manage_home => true
  uid 1234
  gid "users"
  home "/home/defender"
  shell "/bin/bash"
  # "defender"
  password "$1$DudJgXcD$MT4SDZnYM2ZjZD6nti3xd/"
end

# create simple loopback filesystem
bash "create_test_volume" do
  code <<-EOH
   dd if=/dev/zero of=/raw_test_volume.img bs=1024k count=100
  EOH
  not_if { File.exists?('/raw_test_volume.img') }
end

encrypted_volume "/encrypted" do
  volume      "/raw_test_volume.img"
  fstype      "ext3"
  passphrase  "something"
end
