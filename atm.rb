class Atm
  STARTING_BALANCE = 100.0

  def initialize(filename = "balance.txt")
    @filename = filename
    if File.exist? @filename
        @balance = File.read(@filename).to_f
    else
        @balance = STARTING_BALANCE
    end
  end

  def run
    printf "Your balance is $%.2f\n", @balance
  end
end
