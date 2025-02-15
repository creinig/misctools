#!/usr/bin/env ruby 

require 'set'

PATH= ARGV[0] || "#{ENV['HOME']}/wiki/bob/tiddlers"
tags = Set.new

Dir.glob("#{PATH}/*.tid").each do |file|

  File.open file do |f|
    f.take_while{|line| not line.strip.empty?}.each do |line|
      if line =~ /^tags:\s*(\w.*)$/
        tags.merge $1.split
        break
      end
    end
  end
end

puts tags.to_a.sort.join("\n")

