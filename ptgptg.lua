--
div=100000
--
base=balance/div
chance= 49
bethigh = true
nextbet = base
wincount = 0
stopnow = false
first = true
second = false
secondwin = false
third = false
--
function dobet()
--
-- switch high/low every bet
-- bethigh = !bethigh
done = false
   if win then
       base = balance/div
--     switch high/low every win
--     bethigh = !bethigh
         if(first) then
--          switch high/low on the first win
--          bethigh = !bethigh
            nextbet = base
            if(stopnow) then stop() end
         end 
         if(second) then
--          switch high/low on the second win
--          bethigh = !bethigh
            secondwin = true
            second = false
            third = true
            done = true 
         end
         if(third and !done) then
--          switch high/low on the third win
--          bethigh = !bethigh
            if(secondwin) then
--             switch high/low on the second and third win
--             bethigh = !bethigh   
               nextbet = base
               if(stopnow) then stop() end
            else
--              switch high/low on one and two lose third win
--              bethigh = !bethigh                
                nextbet = previousbet * 3
             end
             third = false
             first = true
         end
   else
--    switch high/low on the every lose
--    bethigh = !bethigh
      if(first and !done) then
--        switch high/low on the first lose
--        bethigh = !bethigh
          first = false
          second = true
          done = true
       end
       if(second and !done) then
--         switch high/low on the second lose
--         bethigh = !bethigh
           secondwin = false
           second = false
           third = true
           done = true
        end
        if(third and !done) then
--          switch high/low on the third lose
--          bethigh = !bethigh
            third = false
            first = true
            if (secondwin) then 
--              switch high/low on the one lose two in thrird lose
--              bethigh = !bethigh
                nextbet = previousbet * 3
            else
--              switch high/low only if all three lose
--              bethigh = !bethigh
                nextbet = previousbet * 4
             end
            done = true
        end  
   end
end
