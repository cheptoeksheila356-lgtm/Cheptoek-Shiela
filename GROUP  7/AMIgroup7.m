data = readtable("C:\Users\Acer\Desktop\GROUP7\MATLAB  AMI.XLSX", 'Sheet', 'DETAILS');
data.GENDER = categorical(data.GENDER);
data.TRIBE = categorical(data.TRIBE);
data.ASSOCIATION = categorical(data.ASSOCIATION);
data.HOSTEL = categorical(data.HOSTEL);
% BAR GRAPH
figure; histogram(data.TRIBE); title('Bar Graph - Tribe'); xlabel('Tribe'); ylabel('Count');
saveas(gcf," bargraph.png");
% HORIZONTAL BAR
figure; [c,n]=groupcounts(data.ASSOCIATION); barh(c); set(gca,'YTickLabel',n); title('Horizontal Bar - Association');
saveas(gcf," horizontalbar.png");
% PIE CHART
figure; pie(data.GENDER); title('Pie - Gender');
saveas(gcf, "pie chat1.png");
% PIE CHART WITH PERCENTAGE
figure; [c,n]=groupcounts(data.GENDER); pie(c, [], string(n)); title('Pie with % - Gender');
figure; histogram(data.TRIBE);
saveas(gcf,"pie chat2.png");
% PARETO CHART
figure; [c,n]=groupcounts(data.TRIBE); pareto(c, string(n)); title('Pareto - Tribe');
saveas(gcf, "pareto chat.png");
% HISTOGRAM
figure; histogram(data.AGE, 8); title('Histogram - Age'); xlabel('Age'); ylabel('Students');
saveas(gcf, "Histogram.png");
