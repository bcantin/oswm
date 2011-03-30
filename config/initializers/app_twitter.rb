
if Rails.env.production?
  Twitter.configure do |config|
    config.consumer_key = "aT0kvH4QavIm4VEEkbKacQ"
    config.consumer_secret = "AZNCzPaIZxiCt4CncYDlXHE2xdMdWJIv1iSwp4pywXk"
    config.oauth_token = "272150678-e7gNIzK3MZS84EGe6K06pWR5VJ31EdAWM3t0Wcur"
    config.oauth_token_secret = "49MdieLxl7XqEHthMzJNimYmkbqw0wALS2jEGQcsSk"
    config.proxy = "twitterapigeeaddress"
  end
else
  Twitter.configure do |config|
    config.consumer_key = "aT0kvH4QavIm4VEEkbKacQ"
    config.consumer_secret = "AZNCzPaIZxiCt4CncYDlXHE2xdMdWJIv1iSwp4pywXk"
    config.oauth_token = "272150678-e7gNIzK3MZS84EGe6K06pWR5VJ31EdAWM3t0Wcur"
    config.oauth_token_secret = "49MdieLxl7XqEHthMzJNimYmkbqw0wALS2jEGQcsSk"
  end
end