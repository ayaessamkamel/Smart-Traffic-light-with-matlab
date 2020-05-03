   %connect with arduino
   ar = arduino();
   clear ar;
   ar = arduino('COM3', 'Uno');
   %intialize every pin
   RColor1='D13';
   GColor1='D12';
   YColor1='D11';
   RColor2='D10';
   GColor2='D9';
   YColor2='D8';
   %regular light
   writeDigitalPin(ar, RColor1, 0);
   writeDigitalPin(ar, GColor1, 1);
   writeDigitalPin(ar, YColor1, 0);
   writeDigitalPin(ar, RColor2, 1);
   writeDigitalPin(ar, GColor2, 0);
   writeDigitalPin(ar, YColor2, 0);
   pause(5)
   %light based on traffic
   [coun1]=CountNumberOfCar('car1.png','road1.png');
   [coun2]=CountNumberOfCar('car2.png','road2.png');
   LightBasedOnTraffic(coun1,coun2,ar,RColor1,YColor1,GColor1,RColor2,GColor2,YColor2) 
   %regular light
   writeDigitalPin(ar, RColor1, 0);
   writeDigitalPin(ar, GColor1, 0);
   writeDigitalPin(ar, YColor1, 1);
   writeDigitalPin(ar, RColor2, 1);
   writeDigitalPin(ar, GColor2, 0);
   writeDigitalPin(ar, YColor2, 0);
   pause(3)
   writeDigitalPin(ar, RColor1, 1);
   writeDigitalPin(ar, GColor1, 0);
   writeDigitalPin(ar, YColor1, 0);
   writeDigitalPin(ar, RColor2, 0);
   writeDigitalPin(ar, GColor2, 1);
   writeDigitalPin(ar, YColor2, 0);
   pause(5)
   %light based on traffic
   [coun1]=CountNumberOfCar('car1.png','road1.png');
   [coun2]=CountNumberOfCar('car2.png','road2.png');
   LightBasedOnTraffic(coun1,coun2,ar,RColor1,YColor1,GColor1,RColor2,GColor2,YColor2)
   %regular light
   writeDigitalPin(ar, RColor1, 1);
   writeDigitalPin(ar, GColor1, 0);
   writeDigitalPin(ar, YColor1, 0);
   writeDigitalPin(ar, RColor2, 0);
   writeDigitalPin(ar, GColor2, 0);
   writeDigitalPin(ar, YColor2, 1);
   pause(3)
   %light based on  traffic
   [coun1]=CountNumberOfCar('car1.png','road1.png');
   [coun2]=CountNumberOfCar('car2.png','road2.png');
   LightBasedOnTraffic(coun1,coun2,ar,RColor1,YColor1,GColor1,RColor2,GColor2,YColor2)