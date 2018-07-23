darwin_installer node['AnkaBuildUrl'] do
  remote_file true
  curl_option "-e #{node['AnkaReferer']}"
end