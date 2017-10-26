# # encoding: utf-8

# Inspec test for recipe rdp::default

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

control 'windows-rdp' do
  impact 1.0
  title 'Windows RDP Configured to Encrypt and Prompt for Password'
  describe registry_key('HKLM\SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services') do
    it { should exist }
    its('fPromptForPassword') { should eq 1 }
    its('MinEncryptionLevel') { should eq 3 }
  end
end
