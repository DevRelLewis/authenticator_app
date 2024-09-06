# analyzer.rb
class Analyzer
  def analyze(first_name, last_name)
    full_name = first_name + " " + last_name
    {
      full_name: full_name,
      length: full_name.length,
      reversed: full_name.reverse
    }
  end
end
