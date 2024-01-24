clc;
clear all;
close all;
Data_para.c=c;%velocity of electromagnetic wave
Data_para.fc=fc;%carrier frequency
Data_para.gamma=gamma;%frequency modulation
Data_para.nrn=nrn;%sampling number along range direction 
Data_para.nan=nan;%sampling number along azimuth direction
Data_para.v=v;%velocity of radar
Data_para.ta=ta;%slow time
Data_para.fr=fr;%range frequency
Data_para.R0=R0;%distance from radar to scene center at synthetic aperture center
Data_para.x_radar=x_radar;%radar coordinate
Data_para.y_radar=y_radar;%radar coordinate
Data_para.z_radar=z_radar;%radar coordinate
Data_para.echo=raw_data;%echo
[del_fy,del_fx,image] = TDST(Data_para);%imaging process
%del_fy-range spatial frequency interval,del_fx-azimuth spatial frequency
%interval,image-imaging result
totaly=1/del_fy*2*pi;
totalx=1/del_fx*2*pi;
x=linspace(-totalx/2,totalx/2,nan);
y=linspace(-totaly/2,totaly/2,nrn);
figure,imagesc(x,y,abs(image)),colorbar%,caxis([0 5e3])
title('Imaging Result')
