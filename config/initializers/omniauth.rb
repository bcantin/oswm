Rails.application.config.middleware.use OmniAuth::Builder do  
  provider :github, '64605d9665ac2fd14464', '86bd94a327149a21a1b2cf040deba8f5db5106f9'  
end