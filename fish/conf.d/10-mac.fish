if status is-interactive
  abbr --add backup "rclone sync -PLu --exclude '.DS_Store' /Users/kenlimmj/Library/CloudStorage/GoogleDrive-kenlimmj@gmail.com/My\ Drive backup:Herring-Crunchy-Wavy-Narrow"
  abbr --add ub "brew update && brew upgrade --no-ask && brew upgrade --cask --no-ask && brew cleanup && rclone sync -PLu --exclude '.DS_Store' /Users/kenlimmj/Library/CloudStorage/GoogleDrive-kenlimmj@gmail.com/My\ Drive backup:Herring-Crunchy-Wavy-Narrow"
  abbr --add cat "bat"
  abbr --add nano "/opt/homebrew/bin/nano"
  abbr --add patch-drm "cp -R /Applications/Google\ Chrome.app/Contents/Frameworks/Google\ Chrome\ Framework.framework/Libraries/WidevineCdm /Applications/Chromium.app/Contents/Frameworks/Chromium\ Framework.framework/Libraries/WidevineCdm"
end
