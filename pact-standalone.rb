class PactStandalone < Formula
  desc "Standalone pact CLI executable using the Ruby Pact impl and Traveling Ruby"
  homepage "https://github.com/pact-foundation/pact-standalone"
  version "2.5.2"
  on_macos do
    on_intel do
      url "https://github.com/pact-foundation/pact-standalone/releases/download/v2.5.2/pact-2.5.2-osx-x86_64.tar.gz"
      sha256 "9886297b15b261828588e4820963b633f477d5c3598ce1ca068ac315b7c328b4"
    end
    on_arm do
      url "https://github.com/pact-foundation/pact-standalone/releases/download/v2.5.2/pact-2.5.2-osx-arm64.tar.gz"
      sha256 "c7f08ac263e3676ec3293d5b707b4e87c1ba1cb00289c651583a77dd37d9b4a7"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/pact-foundation/pact-standalone/releases/download/v2.5.2/pact-2.5.2-linux-x86_64.tar.gz"
      sha256 "3cdad4af4f65a146f27944440e488228124188e58801008ee2053129e0eaa1c7"
    end
    on_arm do
      url "https://github.com/pact-foundation/pact-standalone/releases/download/v2.5.2/pact-2.5.2-linux-arm64.tar.gz"
      sha256 "fe932e4a9c195624200cde6915a75c02659a465c38763a2535ce4a6e665c9dd9"
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
