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
def triangle(a, b, c)
  
  sides = [a,b,c].sort
  #sides.each do |side|
  #  print side
  #end
  
  s1 = sides[0];
  s2 = sides[1];
  s3 = sides[2];

  if (s1 <= 0)
    raise TriangleError
  end
  
  if (s1+s2 <= s3)
    raise TriangleError
  end

  if (s1==s2 && s2==s3)
    :equilateral
  else
    if (s1!=s2 && s2!=s3)
      :scalene
    else
      :isosceles
    end
  end
  
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
