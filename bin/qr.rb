#!/usr/bin/env ruby

require "bundler/setup"
require "rqrcode"
require "getopt_ext"

opts = GetoptLong.new(
  opt_flag("help"),
  opt_flag("png"),
  opt_flag("svg"),
  opt_flag("ansi")
)

if opts.empty? || opts.include?("help") || ARGV.empty?
  puts <<-HELP
  Usage: qr.rb [options] <text to encode>
  Options:
    --help, -h : show this help
    --ansi, -a : render as ansi (default)
    --png,  -p : render as png (redirect to file!)
    --svg,  -s : render as svg (redirect to file!)
  HELP
  exit 1
end

qrcode = RQRCode::QRCode.new(ARGV[0])

if opts.include?("png")
  puts qrcode.as_png
elsif opts.include?("svg")
  puts qrcode.as_svg
else
  puts qrcode.as_ansi(
    light: "\033[47m", dark: "\033[40m",
    fill_character: "  ",
    quiet_zone_size: 2
  )
end
