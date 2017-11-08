class Array
  def in_groups_of_n(*sizes)
   sizes.map(&method(:shift))
  end
end