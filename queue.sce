ar_t=[0,6,7,11,14,20,25]
sr_t=[2,3,1,1,1,1,2]
sr_b=[0,0,0,0,0,0,0]
sr_e=[2,0,0,0,0,0,0]
SI=[0,0,0,0,0,0,0]
cw=[0,0,0,0,0,0,0]

for i=1:6
    if ar_t(i+1)>=sr_e(i) then //when the server is available
        cw(i+1)=0 //customer wait
        sr_b(i+1)=ar_t(i+1)
        SI(i+1)=sr_b(i+1)-sr_e(i)  // server idle time
        sr_e(i+1)=sr_b(i+1)+sr_t(i+1)
     else //when the server is occupied
         cw(i+1)=sr_e(i)-ar_t(i+1)
         SI(i+1)=0
         sr_b(i+1)=sr_e(i)
         sr_e(i+1)=sr_b(i+1)+sr_t(i+1)   
    
end
disp(cw(i),sr_b(i),sr_e(i),ar_t(i),sr_t(i),SI(i))
disp(mean(cw),mean(SI))
end

