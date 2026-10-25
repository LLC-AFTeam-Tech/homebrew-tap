cask "denny-for-agents" do
  version "0.4.0"
  sha256 "c9de5bfed4aeaf55478b4a8e540959f76b3bdb669c1add995561be3919580e37"

  url "https://github.com/LLC-AFTeam-Tech/denny-for-agents/releases/download/v#{version}/denny-agents-#{version}-mac-arm64.dmg"
  name "Denny Agents"
  desc "Notch companion for Claude Code and Codex"
  homepage "https://afteam.tech/denny/agents/"

  depends_on arch: :arm64
  depends_on macos: ">= :ventura"

  app "Denny Agents.app"

  uninstall quit: "com.denny.agents"

  zap trash: [
    "~/.denny-for-agents",
    "~/Library/Preferences/tech.afteam.denny-for-agents.plist",
  ]

  caveats <<~EOS
    Denny Agents requires an Apple Silicon Mac and macOS 13 or later.
    This release is not notarized by Apple. See the installation instructions:
      https://github.com/LLC-AFTeam-Tech/denny-for-agents/blob/main/README.md
  EOS
end
