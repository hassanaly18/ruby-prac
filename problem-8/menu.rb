def compute_cost(menu, orders)
  total = 0
  orders.each do |order|
    order.each do |item, qty|
      total += menu[item] * qty
    end
  end
  return total
end

menu = { rice: 3, noodles: 2 }
orders = [{ rice: 1, noodles: 1 }]

puts compute_cost(menu, orders)