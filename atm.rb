class Atm

  def initialize(filename = "balance.txt")
    @filename = filename
    @balance = File.read(@filename).to_i
  end

  def run
    printf "Your balance is $%.2f\n", @balance
  end
end
