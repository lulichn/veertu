darwin_installer "https://d1efqjhnhbvc57.cloudfront.net/AnkaBuild-1.3.1.93.pkg" do
  remote_file true
  curl_option "-e https://veertu.com/download-anka-build/"
end