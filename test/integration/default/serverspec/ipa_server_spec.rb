require "serverspec"

set :backend, :exec

describe service("ipa") do
  it { should_not be_enabled }
  it { should_not be_running }
end

describe command("ipa-server-install --version") do
  its(:exit_status) { should eq 0 }
end
