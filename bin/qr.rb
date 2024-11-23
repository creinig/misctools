#!/usr/bin/env ruby

require "bundler/setup"
require "rqrcode"

if ARGV.empty?
  puts "Usage: qr.rb <text to encode>"
  exit 1
end

qrcode = RQRCode::QRCode.new(ARGV[0])

qr = qrcode.as_ansi(
  light: "\033[47m", dark: "\033[40m",
  fill_character: "  ",
  quiet_zone_size: 2
)

puts qr
