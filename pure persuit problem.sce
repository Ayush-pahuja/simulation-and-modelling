yF = 50; xF = 0; vF = 20; t = 12
xB = [80, 90, 99, 108, 116, 125, 133, 141, 151, 160, 169, 179, 180]
yB = [0, -2, -5, -9, -15, -18, -23, -29, -28, -25, -21, -20, -17]
for i = 1: t+1
  if i>12 then
   disp("Target escaped...")
  else
   Distance = sqrt(((yB(i)-yF)**2)+((xB(i)-xF)**2))
   xF = (xF + vF*((xB(i)-xF)/Distance))
   yF = (yF + vF*((yB(i)-yF)/Distance))
   if Distance <=10 then 
   disp("the bomber is caught at time interval " + string(i)+" and at distance  "+string((Distance)))
   break
   end
end
end
