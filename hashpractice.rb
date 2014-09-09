class Sister
 attr_accessor :first_name, :last_name
  def initialize(hash)
    @firstname = hash[:first_name]
    @lastname = hash[:last_name]
    @h = hash[:height]
    @e = hash[:eye_color]
  end
end

s = [{first_name: "Rachelle", last_name: "K",
  eye_color: "brown", height:"short"},
  {first_name: "Julia", last_name: "B",
  eye_color: "brown", height: "short"}]

s.each do |f|
  sister = Sister.new(f)
  puts sister.inspect
  #
  # does the same thing as Sister.new(s[0])
  #Sister.new(s[1]) would, but if there were
  # then 2 hashes it would be a pain to
  # have to type all the postiions out.
end
