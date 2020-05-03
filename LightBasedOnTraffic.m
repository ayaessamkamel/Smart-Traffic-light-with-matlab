function LightBasedOnTraffic(coun1,coun2,ar,RColor1,YColor1,GColor1,RColor2,GColor2,YColor2)
%if cars in road 1 > road 2 make road 1 green and 2 red and vise versa
if(coun1>coun2)
   writeDigitalPin(ar, RColor1, 0);
   writeDigitalPin(ar, GColor1, 1);
   writeDigitalPin(ar, YColor1, 0);
   writeDigitalPin(ar, RColor2, 1);
   writeDigitalPin(ar, GColor2, 0);
   writeDigitalPin(ar, YColor2, 0);
   pause(5)

end
if(coun2>coun1)
   writeDigitalPin(ar, RColor1, 1);
   writeDigitalPin(ar, GColor1, 0);
   writeDigitalPin(ar, YColor1, 0);
   writeDigitalPin(ar, RColor2, 0);
   writeDigitalPin(ar, GColor2, 1);
   writeDigitalPin(ar, YColor2, 0);
   pause(5)

end

end

