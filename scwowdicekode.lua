resetstats()
chance = math.random(25, 30)
gan = 10000
base = balance/gan
nextbet = base 
bethigh = false
rollcount = 2000*20000
target = balance*1.05
bethigh = true
low = 0
high = 0
losecount = 0
wincount = 0
--
function dobet()
--
profitn = profit/(balance-profit)*100
print("\nNonce: "..lastBet.nonce)
print("Profit: "..string.format("%.2f",profit).." ("..string.format("%.2f",profitn).."%)")
print("Balance: "..string.format("%.2f",balance).." "..string.upper(currency))
--
if (lastBet.roll < chance) then
  low += 1
end
if (lastBet.roll > (100 - chance)) then
  high += 1
end 
if (wincount==16) then 
 bethigh=!bethigh
 wincount=0
end
--
if balance>target then
stop()
end
--
chance = math.random(40,50)
multiplier = 1
if win then
wincount+=1
nextbet = base
else
nextbet = previousbet * multiplier
end
if currentstreak <= -1 then
chance = math.random(10, 25)
nextbet = previousbet*multiplier
end
if currentstreak <= -2 then
chance = math.random(5, 10 )
nextbet = previousbet*multiplier
end
if currentstreak <= -3 then
chance = math.random(20, 35)
nextbet = previousbet*2.4
end
if currentstreak <= -4 then
chance = math.random(5, 7)
nextbet = previousbet*0.8
end
if currentstreak <= -5 then
chance = math.random(12, 15)
nextbet = previousbet*1.2
end
if currentstreak <= -6 then
chance = math.random(25, 35)
nextbet = previousbet*2.2
end
if currentstreak <= -7 then
chance = math.random(14, 19)
nextbet = previousbet*1.39
end
if currentstreak <= -8 then
chance = math.random(20, 30)
nextbet = previousbet*1.4
end
if currentstreak <= -9 then
chance = math.random(10, 15)
nextbet = previousbet*1.15
end
if currentstreak <= -10 then
chance = math.random(17, 25)
nextbet = previousbet*2.4
end
if currentstreak <= -11 then
chance = math.random(26, 32)
nextbet = previousbet*1.7
end
if currentstreak <= -12 then
chance = math.random(6, 15)
nextbet = previousbet*1.2
end
if currentstreak <= -13 then
chance = math.random(8, 10)
nextbet = previousbet*1.19
end
if currentstreak <= -14 then
chance = math.random(20, 25)
nextbet = previousbet*2.41
end
if currentstreak <= -15 then
chance = math.random(22, 26)
nextbet = previousbet*1.4
end
if currentstreak <= -16 then
chance = math.random(30, 35)
nextbet = previousbet*1.7
end
if currentstreak <= -17 then
chance = math.random(10, 12)
nextbet = previousbet*0.65
end
if currentstreak <= -18 then
chance = math.random(5, 7)
nextbet = previousbet*1.1
end
if currentstreak <= -19 then
chance = math.random(10, 17)
nextbet = previousbet*1.22
end
if currentstreak <= -20 then
chance = math.random(20, 24)
nextbet = previousbet*2.41
end
if currentstreak <= -21 then
chance = math.random(22, 25)
nextbet = previousbet*1.4
end
if currentstreak <= -22 then
chance = math.random(23, 26)
nextbet = previousbet*1.41
end
if currentstreak <= -23 then
chance = math.random(7, 10)
nextbet = previousbet*0.71
end
if currentstreak <= -24 then
chance = math.random(14, 16)
nextbet = previousbet*2.3
end
if currentstreak <= -25 then
chance = math.random(17, 19)
nextbet = previousbet*1.4
end
if currentstreak <= -26 then
chance = math.random(5, 7)
nextbet = previousbet*0.7
end
if currentstreak <= -27 then
chance = math.random(6, 9)
nextbet = previousbet*1.2
end
if currentstreak <= -28 then
chance = math.random(7, 10 )
nextbet = previousbet*1.2
end
if currentstreak <= -29 then
chance = math.random(20, 28)
nextbet = previousbet*2.4
end
if currentstreak <= -30 then
chance = math.random(8, 11)
nextbet = previousbet*0.7
end
if currentstreak <= -31 then
chance = math.random(9, 12)
nextbet = previousbet*1.2
end
if currentstreak <= -32 then
chance = math.random(19, 22)
nextbet = previousbet*2.448
end
if currentstreak <= -33 then
chance = math.random(14, 17)
nextbet = previousbet*1.3999
end
if currentstreak <= -34 then
chance = math.random(16, 19)
nextbet = previousbet*1.4
end
if currentstreak <= -35 then
chance = math.random(21, 25)
nextbet = previousbet*1.4
end
if currentstreak <= -36 then
chance = math.random(23, 26)
nextbet = previousbet*1.4
end
if currentstreak <= -37 then
chance = math.random(16, 20)
nextbet = previousbet*1.4
end
if currentstreak <= -38 then
chance = math.random(10, 12)
nextbet = previousbet*0.7
end
if currentstreak <= -39 then
chance = math.random(14, 18)
nextbet = previousbet*1.39
end
if currentstreak <= -40 then
chance = math.random(17, 19)
nextbet = previousbet*1.4
end
if currentstreak <= -41 then
chance = math.random(25, 27)
nextbet = previousbet*2.4
end
if currentstreak <= -42 then
chance = math.random(25, 28)
nextbet = previousbet*1.4
end
if currentstreak <= -43 then
chance = math.random(25, 28)
nextbet = previousbet*1.4
end
if currentstreak <= -44 then
chance = math.random(25, 28)
nextbet = previousbet*1.4
end
if currentstreak <= -45 then
chance = math.random(25, 28)
nextbet = previousbet*1.4
end
if currentstreak <= -46 then
chance = math.random(25, 28)
nextbet = previousbet*1.4
end
if currentstreak <= -47 then
chance = math.random(25, 28)
nextbet = previousbet*1.4
end
if currentstreak <= -48 then
chance = math.random(25, 28)
nextbet = previousbet*1.4
end
if currentstreak <= -49 then
chance = math.random(25, 28)
nextbet = previousbet*1.4
end
if currentstreak <= -50 then
chance = math.random(25, 28)
nextbet = previousbet*1.4
end
if currentstreak <= -51 then
chance = math.random(25, 28)
nextbet = previousbet*1.4
end
if currentstreak <= -52 then
chance = math.random(25, 28)
nextbet = previousbet*1.4
end
if currentstreak <= -53 then
chance = math.random(25, 28)
nextbet = previousbet*1.4
end
if currentstreak <= -54 then
chance = math.random(25, 28)
nextbet = previousbet*1.4
end
if currentstreak <= -55 then
chance = math.random(25, 28)
nextbet = previousbet*1.4
end
end
end
end
