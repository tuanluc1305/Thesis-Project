clear all
path = ('D:\CHUYEN_DE_02_DATA\SID_DATA_JJI\SID_2013_12\')
for k=[10:11] % de ve do thi lien tuc (k = 1:6), khong lien tuc [1,5,8,9]
    ngay=num2str(k);
    file_name=['TNU_JJI_2013-12-' ngay '_000000.txt'];
    fide=fopen([path file_name],'r');
    line = fgetl(fide); % lenh goi dong text
    line = fgetl(fide);
    line = fgetl(fide);
    line = fgetl(fide);
    line = fgetl(fide);
    line = fgetl(fide);
    line = fgetl(fide);
    line = fgetl(fide);
    line = fgetl(fide);
    line = fgetl(fide);
    line = fgetl(fide);
    line = fgetl(fide);
    line = fgetl(fide);
    line = fgetl(fide);
    B=fscanf(fide,'%f',[2,inf]);
    fclose (fide);
    [m,n]=size(B); % m la so cot, n la so hang trong file
    

   UT = B(1,:)*24;
   yy=B(2,:);
        file_name1=['TNU_JJI_2013-12-' ngay '_000000A.txt'];
        fide1=fopen([path file_name1],'w');
        fprintf(fide1,'%s\n',' Time (UT)   Amplitude');
         
         for i=1:n
         fprintf(fide1,'%8.4f %8.2f\n',UT(i),yy(i));
         end
         fclose(fide1);
         
       file_name2=['TNU_JJI_2013-12-' ngay '_000000A.txt'];
       fide2=fopen([path file_name2],'r');
       line=fgetl(fide2);
       [C]=fscanf(fide2, '%f',[2,inf]);
%       subplot(2,1,1)
       plot(C(1,:), C(2,:),'s','MarkerEdgeColor','b','MarkerSize',0.9);
       set(gca,'Fontsize',13,'FontWeight','demi');
       set(gca,'XTick',[0 4 8 12 16 20 24])
%        xlabel('Time (UT)','Fontsize',13,'Fontname','Vni-times')
       xlabel('Thôøi gian quoác teá (UT)','Fontsize',13,'Fontname','Vni-times')

%        ylabel('Relative instensity','Fontsize',13,'FontWeight','demi')
       ylabel('Cöôøng ñoä tín hieäu','Fontsize',13,'Fontname','Vni-times')
        grid;
       axis([ 0 24 0 inf])
       title(['TNU-JJI-2013-12-' ngay], 'Fontsize',15,'Fontname','Vni-times'), 
%        title(['TNU-JJI-2013-01'], 'Fontsize',15,'Fontname','Vni-times'), % tieu de cho hinh ve cac tin hieu chong chap
%        hold on % ve chong chap cac tin hieu len nhau
       filename=[path 'TNU-JJI-2013-12-' ngay '.jpg'];
%        filename=[path 'JJI201311.jpg'];% bieu dien nhieu bien cung do thi
       print('-djpeg', filename);
       pause(2)    % tam dung
       currFig = get(0,'CurrentFigure');
       delete(currFig); % xoa hinh truoc do
      
 %-----------------------------------------------------------------------
        
end


  
        

        
        