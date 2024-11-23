#!/usr/bin/env -S ruby -w

require "bundler/setup"
require "ruby-units"

def toHM(unit)
  mins = unit.convert_to("min").scalar.to_i
  sprintf("%d:%02d", mins/60, mins%60)
end

def pcurrent
  puts "Current value: #{toHM(@duration)}"
end


@duration = "0:00".to_unit

# Output help text
puts "Duration calculator."
puts "Enter one duration (HH:MM) per line to "
puts "  * subtract from the current value (prefix '-')"
puts "  * overwrite the current value (prefix '=')"
puts "  * add to the current value (anything else)"
puts "Exit with Ctrl-D or 'x'"
puts
pcurrent

while line = gets 
  case line.strip
  when /^=\s*(\d+:\d+)/ 
    @duration = $~[1].to_unit
  when /^-\s*(\d+:\d+)/ 
    @duration -= $~[1].to_unit
  when /\d+:\d+/
    @duration += $~[0].to_unit
  when /^$/
    # NOP
  when /^x$/
    exit
  else
    puts "Invalid input data"
  end

  pcurrent
end


