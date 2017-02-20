class Course
  ATTRIBUTES = [:name, :title, :credit_hours, :prerequisites]

  attr_reader(*ATTRIBUTES)

  def initialize(attrs = {})
    @prerequisites = []

    attrs.each do |key, value|
      instance_variable_set("@#{key}", value) if ATTRIBUTES.include?(key)
    end
  end

  def has_prerequisites?
    @prerequisites.any?
  end

  def to_h
    ATTRIBUTES.each_with_object({}) do |attr, hash|
      hash[attr] = send(attr)
    end
  end
end
