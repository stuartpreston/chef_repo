# encoding: utf-8
# copyright: 2015, The Authors

control 'windows-rdp' do
  impact 1.0
  title 'Windows RDP Configured to Encrypt and Prompt for Password'
  describe registry_key('HKLM\SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services') do
    it { should exist }
    its('fPromptForPassword') { should eq 1 }
    its('MinEncryptionLevel') { should eq 3 }
  end
end
