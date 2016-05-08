class Formula
  attr_reader :package, :tap

  def initialize(package, tap=nil)
    @package = package
    @tap = tap
  end

  def hasTap()
    return !self.tap.nil?
  end
end