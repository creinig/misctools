require "getoptlong"

# Extends GetoptLong to add a #to_h method
class GetoptLong
  def to_h
    return @hashed if @hashed

    hashed = {}
    each { |opt, val| hashed[opt] = val || true }
    @hashed = hashed
  end

  def empty?
    to_h.empty?
  end

  def include?(name)
    to_h.include?(name) || to_h.include?("--" + name)
  end
end

def opt_flag(name)
  ["--" + name, "-" + name[0], GetoptLong::NO_ARGUMENT]
end
