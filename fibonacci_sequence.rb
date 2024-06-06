def fibs(n)
  fib_seq = [0, 1]
  for i in 2..(n-1)
    fib_seq.push(fib_seq[i-2] + fib_seq[i-1])
  end
  fib_seq
end

def fibs_rec(num, seq = [0, 1])
  return seq if seq.length == num

  new_index = seq.length
  first_operand = seq[new_index - 2]
  second_operand = seq[new_index - 1]
  fibs_rec(num, seq.push(first_operand + second_operand))
end

p fibs(15)
p fibs_rec(15)