# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle_is_valid(a, b, c)
  if a + b <= c
    return false
  elsif b + c <= a
    return false
  elsif a + c <= b
    return false
  elsif a <= 0
    return false
  elsif b <= 0
    return false
  elsif c <= 0
    return false
  else
    return true
  end
end

def triangle(a, b, c)
  valid = triangle_is_valid a, b, c
  p valid
  if valid == false
    raise TriangleError, "The triangle is not valid"
  elsif a == b && b == c
    return :equilateral
  elsif a == b || b == c || c == a
    return :isosceles
  else
    :scalene
  end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
