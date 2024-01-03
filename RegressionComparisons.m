%% Shear Forces vs Compression Comparisons
% James Caldwell, UVA

% This script is meant to quickly generate a list of plots for comparisons.
% The script expects to have the all_turftypes.fig plot open, with 11 carpet types
% The script then iterates through the comparisons variable, and using
% plotbrowser, generates all the comparisons. It automatically saves them
% to \\cab-fs07.mae.virginia.edu\NewData\FieldTurf\2023-FieldTurf\1Data-ANALYZED\ShearVsCompression

% Make sure you have this .fig open 
    % X:\CAB_Exchange\[2023 Interns]\Dave\Field Turf\Graphs (jpgs and matlab figs)\all_turftypes.fig
        % This should move to
        % \\cab-fs07.mae.virginia.edu\NewData\FieldTurf\2023-FieldTurf\1CustomCode or 1Data-ANALYZED at some point

close all
uiopen('\\cab-fs07.mae.virginia.edu\NewData\FieldTurf\2023-FieldTurf\1CustomCode\Jahnavi Code (and some things that should be in 1DataAnalyzed too)\Field Turf\Graphs (jpgs and matlab figs)\all_turftypes.fig',1)
        
save = 0;

plotbrowser()
set(gca,'FontSize', 14,'fontWeight','bold')  %Change from 14 depending on your screen size. May be closer to 20 if you're on a monitor, 14 on just a laptop

comparisons = ...
[0 0 0 0 0 0 0 0 1 1 1 % Comparing carpet types 9, 10, 11
0 0 0 0 0 1 0 1 0 0 0 % Comparing carpet types 6, 8
0 0 0 1 1 0 0 0 0 0 0 % 4, 5
1 1 1 0 0 0 0 0 0 0 0 % 1, 2, 3
0 0 0 0 0 0 1 1 0 0 0 % 7, 8
0 0 0 1 0 1 0 0 0 0 0 % 4, 6
1 0 0 1 0 0 0 0 1 0 0 % 1, 4, 9
0 1 0 0 0 0 0 0 0 1 0 % 2, 10
0 0 1 0 0 1 0 0 0 0 1 % 3, 6, 11
0 0 0 1 0 0 1 0 0 0 0 % 4, 7
0 0 0 0 0 0 1 0 0 1 0 % 7, 10
1 0 0 0 0 1 0 0 0 0 0 % 1, 6
1 0 0 0 0 0 0 0 0 0 0 % 1 only
0 0 1 1 1 0 0 0 0 0 0]; % 3, 4, 5

for compIdx = 1:size(comparisons, 1) 

    L=get(gca,'children');
    
    %Turn all lines off first
    for i2 = 1:length(L)
        set(L(i2),'visible','off');
    end
    
    % Loop through the legend in 2's (since the data has two lines for each carpet type)
    for i=2:2:length(L)

       
        if contains(L(i).DisplayName,'Carpet 1 Data') && comparisons(compIdx,1)
            set(L(i),'visible','on');  % Turn on Carpet 1 line if it's in the comparisons row
            set(L(i-1),'visible','on'); %Also turn on the regression line for Carpet 1
        elseif contains(L(i).DisplayName,'Carpet 2 Data')  && comparisons(compIdx,2)
            set(L(i),'visible','on');
            set(L(i-1),'visible','on');
        elseif contains(L(i).DisplayName,'Carpet 3 Data')  && comparisons(compIdx,3)
            set(L(i),'visible','on');
            set(L(i-1),'visible','on');
        elseif contains(L(i).DisplayName,'Carpet 4 Data')  && comparisons(compIdx,4)
            set(L(i),'visible','on');
            set(L(i-1),'visible','on');
        elseif contains(L(i).DisplayName,'Carpet 5 Data') && comparisons(compIdx,5)
            set(L(i),'visible','on');
            set(L(i-1),'visible','on');
        elseif contains(L(i).DisplayName,'Carpet 6 Data')  && comparisons(compIdx,6)
            set(L(i),'visible','on');
            set(L(i-1),'visible','on');
        elseif contains(L(i).DisplayName,'Carpet 7 Data')  && comparisons(compIdx,7)
            set(L(i),'visible','on');
            set(L(i-1),'visible','on');
        elseif contains(L(i).DisplayName,'Carpet 8 Data')  && comparisons(compIdx,8)
            set(L(i),'visible','on');
            set(L(i-1),'visible','on');
        elseif contains(L(i).DisplayName,'Carpet 9 Data') && comparisons(compIdx,9)
            set(L(i),'visible','on');
            set(L(i-1),'visible','on');
        elseif contains(L(i).DisplayName,'Carpet 10 Data')  && comparisons(compIdx,10)
            set(L(i),'visible','on');
            set(L(i-1),'visible','on');
        elseif contains(L(i).DisplayName,'Carpet 11 Data')  && comparisons(compIdx,11)
            set(L(i),'visible','on');
            set(L(i-1),'visible','on');
        elseif contains(L(i).DisplayName,'Grass Data')
            set(L(i),'visible','on');
        end

    end

    pause(2) % Pause 2 seconds

    % Save
    if save == 1
        fig_name = strcat('\\cab-fs07.mae.virginia.edu\NewData\FieldTurf\2023-FieldTurf\1Data-ANALYZED\ShearVsCompression\',num2str(compIdx),'.fig');
        png_name = strrep(fig_name,'fig','png');
    %     saveas(gcf,fig_name); %Turned off .fig for now
        saveas(gcf,png_name);
    end
end

%% Turn all on
for i3 = 1:length(L)
        set(L(i3),'visible','on');
end