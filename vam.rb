def invoice(amount:, vat: 16)
  amount + (amount*vat.fdiv(100))
end

puts invoice(amount: 10, vat: 17)
