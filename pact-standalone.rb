class PactStandalone < Formula
  desc "Standalone pact CLI executable using the Ruby Pact impl and Traveling Ruby"
  homepage "https://github.com/pact-foundation/pact-standalone"
  version "2.5.0"
  on_macos do
    on_intel do
      url "https://github.com/pact-foundation/pact-standalone/releases/download/v2.5.0/pact-2.5.0-osx-x86_64.tar.gz"
      sha256 "1decc220d3384ee8ce5749a9fdb54c880eda0af5619a01d3f7e3cc5dbb6c222e"
    end
    on_arm do
      url "https://github.com/pact-foundation/pact-standalone/releases/download/v2.5.0/pact-2.5.0-osx-arm64.tar.gz"
      sha256 "8b858bef1bcaad4014f16270915b47efc526e795dad8c58d00d55c2ee34ecf09"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/pact-foundation/pact-standalone/releases/download/v2.5.0/pact-2.5.0-linux-x86_64.tar.gz"
      sha256 "4fa54a3263bc416613147ad416f684252e1cea0a8f53d87e2d489a11a721d225"
    end
    on_arm do
      url "https://github.com/pact-foundation/pact-standalone/releases/download/v2.5.0/pact-2.5.0-linux-arm64.tar.gz"
      sha256 "7cb037eaa2adeb872511b0ad47c5448afaaa059917acfcfb811e2417789a5a87"
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
