require "with_anybar/version"

module WithAnybar
  require 'socket'

  def self.change_color(color)
    any_bar = UDPSocket.new
    any_bar.connect "localhost", ENV["ANYBAR_PORT"] || 1738
    any_bar.send color, 0
    any_bar.close
  end

  def self.clear_color
    change_color("white")
  end

  def self.blink(color)
    fork do
      while true do
        change_color(color)
        sleep(0.6)
        clear_color
        sleep(0.6)
      end
    end
  end
end
