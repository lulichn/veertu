darwin_installer node['AnkaBuildUrl'] do
  remote_file true
  curl_option "-e #{node['AnkaReferer']}"
end

# execute "Accept EULA" do
#   command "sudo anka license accept-eula"
# end

execute "Activate License" do
  command "sudo anka license activate #{node['AnkaBuildLicenseKey']}"
  not_if "anka license validate"
end
