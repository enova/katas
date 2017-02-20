class SimpleStrategy
  def initialize(password)
    @password = password
  end

  def password_strength
    score = 0
    score += 1 if has_lower_case?
    score += 1 if has_upper_case?
    score += 1 if has_numeric?
    score += 1 if has_special_characters?
    score -= 1 if has_consecutive_characters?
    score
  end

  private

  def has_lower_case?
    password =~ /[a-z]/
  end

  def has_upper_case?
    password =~ /[A-Z]/
  end

  def has_numeric?
    password =~ /[0-9]/
  end

  def has_special_characters?
    password =~ /[^a-zA-Z0-9 -]/
  end

  def has_consecutive_characters?
    password =~ /(.+)\2+/
  end
end
