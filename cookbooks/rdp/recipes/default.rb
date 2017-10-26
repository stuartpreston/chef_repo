#
# Cookbook:: rdp
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

registry_key 'HKLM\Software\Policies\Microsoft\Windows NT\Terminal Services' do
  values [{ name: 'fPromptForPassword', type: :dword, data: 1 },
          { name: 'MinEncryptionLevel', type: :dword, data: 3 },
  ]
  recursive true
  action :create
end
