if status is-interactive
  set -g _backup_cmd "rclone sync -PLu --exclude '.DS_Store' /Users/kenlimmj/Library/CloudStorage/GoogleDrive-kenlimmj@gmail.com/My\ Drive backup:Herring-Crunchy-Wavy-Narrow"
  set -g _ub_cmd "brew update && brew upgrade --no-ask && brew upgrade --cask --no-ask && brew cleanup && $_backup_cmd"

  alias backup "$_backup_cmd"
  alias ub "$_ub_cmd"

  abbr --add backup "$_backup_cmd"
  abbr --add ub "$_ub_cmd"
  abbr --add cat "bat"
  abbr --add nano "/opt/homebrew/bin/nano"
  abbr --add patch-drm "cp -R /Applications/Google\ Chrome.app/Contents/Frameworks/Google\ Chrome\ Framework.framework/Libraries/WidevineCdm /Applications/Chromium.app/Contents/Frameworks/Chromium\ Framework.framework/Libraries/WidevineCdm"
end
