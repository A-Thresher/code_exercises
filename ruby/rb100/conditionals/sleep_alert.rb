status = ['awake', 'tired'].sample

prod = if status == 'awake'
         "Be productive!"
       else
         "Go to sleep!"
       end

puts prod
