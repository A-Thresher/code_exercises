require 'minitest/autorun'

require_relative 'cash_register'
require_relative 'transaction'

class CashRegisterTest < Minitest::Test
  def setup
    @register = CashRegister.new(100)
    @transaction = Transaction.new(25)

  end

  def test_accept_money
    @transaction.amount_paid = 50
    assert_equal(150, @register.accept_money(@transaction))
  end

  def test_change
    @transaction.amount_paid = 50
    assert_equal(25, @register.change(@transaction))
  end

  def test_give_receipt
    assert_output("You've paid $#{@transaction.item_cost}.\n") do
      @register.give_receipt(@transaction)
    end
  end
end
