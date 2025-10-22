class PactStandalone < Formula
  desc "Standalone pact CLI executable using the Ruby Pact impl and Traveling Ruby"
  homepage "https://github.com/pact-foundation/pact-standalone"
  version "2.5.4"
  on_macos do
    on_intel do
      url "https://github.com/pact-foundation/pact-standalone/releases/download/v2.5.4/pact-2.5.4-osx-x86_64.tar.gz"
      sha256 "16c55205ad09f1508e2213cb3b97ba355bbd15e4885b32021f949991f2eb0b26"
    end
    on_arm do
      url "https://github.com/pact-foundation/pact-standalone/releases/download/v2.5.4/pact-2.5.4-osx-arm64.tar.gz"
      sha256 "053f5650b10ef1a391239827311517e445662ebd3fa012990b30a4d7036cb5b4"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/pact-foundation/pact-standalone/releases/download/v2.5.4/pact-2.5.4-linux-x86_64.tar.gz"
      sha256 "02a53686fda15fdaea1ea56da18efe31c430e3db965b28289052577d3f0892c0"
    end
    on_arm do
      url "https://github.com/pact-foundation/pact-standalone/releases/download/v2.5.4/pact-2.5.4-linux-arm64.tar.gz"
      sha256 "48816be91db70b2ddbb1f5a0f85228fd0caf7fd57b49becde9ca272dd816ffbe"
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
