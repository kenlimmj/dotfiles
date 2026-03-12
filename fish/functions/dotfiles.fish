function dotfiles --description "Sync dotfiles to chezmoi and push to GoB"
    set -l chezmoi_bin (command -v chezmoi; or echo "$HOME/.local/bin/chezmoi")

    if not test -x "$chezmoi_bin"
        echo "❌ chezmoi not found"
        return 1
    end

    set -l source_dir ($chezmoi_bin source-path)

    if test (count $argv) -gt 0
        echo "📦 Adding files to chezmoi..."
        for f in $argv
            $chezmoi_bin add $f
            echo "  + $f"
        end
    end

    set -l diff ($chezmoi_bin diff 2>/dev/null)
    if test -n "$diff"
        echo "⚠️  chezmoi diff is non-empty — run 'chezmoi apply' or 'chezmoi add' first"
        $chezmoi_bin diff
        return 1
    end

    set -l changes (git -C $source_dir status --porcelain)
    if test -z "$changes"
        echo "✅ Nothing to commit — already in sync."
        return 0
    end

    echo ""
    echo "📋 Changes:"
    git -C $source_dir status --short
    echo ""

    read -P "Commit message (enter to skip): " msg
    if test -z "$msg"
        echo "⏭️  Skipped."
        return 0
    end

    git -C $source_dir add -A
    git -C $source_dir commit -m "$msg"
    git -C $source_dir push origin main

    echo ""
    echo "🏁 Dotfiles synced and pushed."
end
