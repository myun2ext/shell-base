require 'shell_base/version'
require 'readline'

class ShellBase
  def self.prompt(s)
    @@prompt = s
  end

  def initialize
    while readline; end
  end

  def readline
    input = Readline.readline(@@prompt, true)
    input != 'exit'
  end
end
