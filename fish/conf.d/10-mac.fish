if status is-interactive
  abbr --add ub "brew update && brew upgrade && brew upgrade --cask && brew cleanup"
  abbr --add cat "bat"
  abbr --add nano "/opt/homebrew/bin/nano"
  abbr --add patch-drm "cp -R /Applications/Google\ Chrome.app/Contents/Frameworks/Google\ Chrome\ Framework.framework/Libraries/WidevineCdm /Applications/Chromium.app/Contents/Frameworks/Chromium\ Framework.framework/Libraries/WidevineCdm"
end
