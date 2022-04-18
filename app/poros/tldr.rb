class Tldr
  attr_reader :summary

  def initialize(tldr_data)
    @summary = tldr_data[:summary]
  end
end
