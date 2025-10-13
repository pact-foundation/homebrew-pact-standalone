class PactStandalone < Formula
  desc "Standalone pact CLI executable using the Ruby Pact impl and Traveling Ruby"
  homepage "https://github.com/pact-foundation/pact-standalone"
  version "2.5.3"
  on_macos do
    on_intel do
      url "https://github.com/pact-foundation/pact-standalone/releases/download/v2.5.3/pact-2.5.3-osx-x86_64.tar.gz"
      sha256 "5c131151bdb668371fd1bdadb4a12e7b98e3cb83da316a55ceecdee8098dd8be"
    end
    on_arm do
      url "https://github.com/pact-foundation/pact-standalone/releases/download/v2.5.3/pact-2.5.3-osx-arm64.tar.gz"
      sha256 "0b95ab7957fab80c7e0a125620d6efcec7c6e836764a034a7dba565962418cf5"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/pact-foundation/pact-standalone/releases/download/v2.5.3/pact-2.5.3-linux-x86_64.tar.gz"
      sha256 "8e9cd0dbe0a257094a4f1e2f245799ed3e83dca8bfc143cee353a61492a6263d"
    end
    on_arm do
      url "https://github.com/pact-foundation/pact-standalone/releases/download/v2.5.3/pact-2.5.3-linux-arm64.tar.gz"
      sha256 "713fe9866c6dd37cedcddedd30d3fccf102452be1fb5dd7765ac63d3814c7026"
    end
  end

  def install
    # pact-standalone
    bin.install Dir["bin/*"]
    lib.install Dir["lib/*"]
    puts "# Run 'pact-mock-service --help' (see https://github.com/pact-foundation/pact-standalone/releases/)"
  end

  test do
    system "#{bin}/pact", "help"
    system "#{bin}/pact-broker", "help"
    system "#{bin}/pact-message", "help"
    system "#{bin}/pact-plugin-cli", "help"
    system "#{bin}/pact-mock-service", "help"
    system "#{bin}/pact-provider-verifier", "help"
    system "#{bin}/pact-stub-service", "help"
    system "#{bin}/pactflow", "help"
  end
end
