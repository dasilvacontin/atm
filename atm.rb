class Atm
  STARTING_BALANCE = 100.0

  def initialize(filename = "balance.txt")
    @filename = filename
    @balance = STARTING_BALANCE
    if File.exist? @filename
      @balance = File.read(@filename).to_f
    end
  end

  def run
      printf "# DATM\n\n"
      show_help
      puts ''
      request_action
  end

  def show_help
    [
      '## Actions',
      '',
      '- D: Deposit money',
      '- W: Withdraw money',
      '- B: Inspect balance',
      '- Q: Quit',
    ].each { |str| puts str }
  end

  def request_action
    printf 'Choose an action: '
    action = gets.chomp.downcase
    puts ''
    case action
    when 'd'
      deposit_money
    when 'w'
      withdraw_money
    when 'b'
      inspect_balance
    when 'q'
      quit
    else
      puts 'Invalid action.'
      puts ''
      show_help
    end
    puts ''
    request_action
  end

  def deposit_money
    puts 'Not yet implemented :)'
  end

  def withdraw_money
    puts 'Not yet implemented :)'
  end

  def inspect_balance
    printf "Your balance is $%.2f\n", @balance
  end

  def quit
    puts 'Have a nice day!'
    exit
  end
end
