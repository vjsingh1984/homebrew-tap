# typed: false
# frozen_string_literal: true

class Victor < Formula
  include Language::Python::Virtualenv

  desc "Enterprise-Ready AI Coding Assistant - Any model, any provider"
  homepage "https://github.com/vjsingh1984/victor"
  url "https://files.pythonhosted.org/packages/source/v/victor-ai/victor_ai-0.2.0.tar.gz"
  sha256 "b1e7e64070728fdb51515656b2c50433b6520b25138739e9459c282c6a00312e"
  license "Apache-2.0"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "victor", shell_output("#{bin}/victor --version")
  end
end
