class Customer
  # この実装だと引数がnilだとnilを返す
  def current_customer(customer_id)
    @current_customer ||= 'hello' unless customer_id.nil?
  end

  # 引数がnilの時はメモ化された値を返す
  # 引数はsessionを想定してるから、sessionが空の時までメモ化された値を返すべきか？
  # メモ化って言っても1リクエストの間の話だから、session内のidが空なら、返す値もからでないとダメか。
  def current_user(id)
    return @current_user unless @current_user.nil?

    return if id.nil?

    @current_user = 'hello'
  end
end

cus = Customer.new

p cus.current_customer(nil)
p cus.current_customer('bob')
p cus.current_customer(nil)
p '-----------------------------'
p cus.current_user(nil)
p cus.current_user('bob')
p cus.current_user(nil)
