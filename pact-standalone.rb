class PactStandalone < Formula
  desc "Standalone pact CLI executable using the Ruby Pact impl and Traveling Ruby"
  homepage "https://github.com/pact-foundation/pact-standalone"
  version "2.5.5"
  on_macos do
    on_intel do
      url "https://github.com/pact-foundation/pact-standalone/releases/download/v2.5.5/pact-2.5.5-osx-x86_64.tar.gz"
      sha256 "25b95b807ddc25bc5fd1c3f4d5ee272445288e6b502e1626f80ae19b6b31334a"
    end
    on_arm do
      url "https://github.com/pact-foundation/pact-standalone/releases/download/v2.5.5/pact-2.5.5-osx-arm64.tar.gz"
      sha256 "3a12c522c88fbe83a7a68858fef7936da42fe8d2c119ac86f828fd894ac64355"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/pact-foundation/pact-standalone/releases/download/v2.5.5/pact-2.5.5-linux-x86_64.tar.gz"
      sha256 "d70e1f89af7a0eb5d78fa7705c649967bc5f28ac7dd95aca8dab4ea15ceba06d"
    end
    on_arm do
      url "https://github.com/pact-foundation/pact-standalone/releases/download/v2.5.5/pact-2.5.5-linux-arm64.tar.gz"
      sha256 "3b4e91c218a47c90a044a7f4b6d0767f984a54c65e457610247959d38e4ff059"
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
