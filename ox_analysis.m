%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Script to create and save feedback tests %%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

savepath = '';
%save_table='G:/Models/COPSE-main/output/';
save_table='/Volumes/PhD stuff/Models/COPSE-main/output/';

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Run with standard feedback %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sCOPSE = COPSE_frontend(0,"","");
sCOPSEout = table(sCOPSE.state.time_myr, sCOPSE.state.mrO2,...
    sCOPSE.state.VEG, sCOPSE.state.firef, sCOPSE.state.locb, sCOPSE.state.phosw, sCOPSE.state.cpoint);
% save as output 
matname = fullfile('/Volumes/PhD stuff/Models/COPSE-main/output/', 'COPSE_standard.mat');
%matname = fullfile('G:/Models/COPSE-main/output/', 'COPSE_standard.mat'); 
save(matname, 'sCOPSEout')

%save_table='/Volumes/PhD stuff/Models/COPSE-main/output/';
table_path_format = fullfile(save_table, 'COPSE_standard.txt');
writetable(struct2table(sCOPSE.state), table_path_format)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Run with no feedback %%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%nCOPSE = COPSE_frontend(0,"none","none");
%nCOPSEout = table(nCOPSE.state.time_myr, nCOPSE.state.mrO2,...
%    nCOPSE.state.VEG, nCOPSE.state.firef, nCOPSE.state.locb, nCOPSE.state.phosw, nCOPSE.state.cpoint);
% save as output 
% matname = fullfile('G:/Models/COPSE-main/output/', 'COPSE_no_feedbacks.mat');
%    save(matname, 'nCOPSEout')
%table_path_format = fullfile(save_table, 'COPSE_no_feedbacks.txt');
%writetable(struct2table(nCOPSE.state), table_path_format)


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Run with no fire feedback %%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

nfCOPSE = COPSE_frontend(0,"none","");
nfCOPSEout = table(nfCOPSE.state.time_myr, nfCOPSE.state.mrO2,...
    nfCOPSE.state.VEG, nfCOPSE.state.firef, nfCOPSE.state.locb, nfCOPSE.state.phosw, nfCOPSE.state.cpoint);
% save as output 
 matname = fullfile('/Volumes/PhD stuff/Models/COPSE-main/output/', 'COPSE_no_fire_feedbacks.mat');
    save(matname, 'nfCOPSEout')

table_path_format = fullfile(save_table, 'COPSE_no_fire_feedbacks.txt');
writetable(struct2table(nfCOPSE.state), table_path_format)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Run with no productivity feedback %%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

npCOPSE = COPSE_frontend(0,"","none");
npCOPSEout = table(npCOPSE.state.time_myr, npCOPSE.state.mrO2,...
    npCOPSE.state.VEG, npCOPSE.state.firef, npCOPSE.state.locb, npCOPSE.state.phosw, npCOPSE.state.cpoint);
% save as output 
 matname = fullfile('/Volumes/PhD stuff/Models/COPSE-main/output/', 'COPSE_no_prod_feedbacks.mat');
    save(matname, 'npCOPSEout')
table_path_format = fullfile(save_table, 'COPSE_no_prod_feedbacks.txt');
writetable(struct2table(npCOPSE.state), table_path_format)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Run with updated fire feedback %%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

ufCOPSE = COPSE_frontend(0,"vitali","");
ufCOPSEout = table(ufCOPSE.state.time_myr, ufCOPSE.state.mrO2,...
    ufCOPSE.state.VEG, ufCOPSE.state.firef, ufCOPSE.state.locb, ufCOPSE.state.phosw, ufCOPSE.state.cpoint);
% save as output 
 matname = fullfile('/Volumes/PhD stuff/Models/COPSE-main/output/', 'COPSE_updated_fire_feedbacks.mat');
    save(matname, 'ufCOPSEout')
table_path_format = fullfile(save_table, 'COPSE_updated_fire_feedbacks.txt');
writetable(struct2table(ufCOPSE.state), table_path_format)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Run with updated fire feedback no prod %%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

unpCOPSE = COPSE_frontend(0,"vitali","none");
unpCOPSEout = table(unpCOPSE.state.time_myr, unpCOPSE.state.mrO2,...
    unpCOPSE.state.VEG, unpCOPSE.state.firef, unpCOPSE.state.locb, unpCOPSE.state.phosw, unpCOPSE.state.cpoint);
% save as output 
 matname = fullfile('/Volumes/PhD stuff/Models/COPSE-main/output/', 'COPSE_updated_no_prod_feedbacks.mat');
    save(matname, 'unpCOPSEout')
table_path_format = fullfile(save_table, 'COPSE_updated_no_prod_feedbacks.txt');
writetable(struct2table(unpCOPSE.state), table_path_format)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Run with updated productivity feedback %%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

upCOPSE = COPSE_frontend(0,"","vitali");
upCOPSEout = table(upCOPSE.state.time_myr, upCOPSE.state.mrO2,...
    upCOPSE.state.VEG, upCOPSE.state.firef, upCOPSE.state.locb, upCOPSE.state.phosw, upCOPSE.state.cpoint);
% save as output 
 matname = fullfile('/Volumes/PhD stuff/Models/COPSE-main/output/', 'COPSE_updated_prod_feedbacks.mat');
    save(matname, 'upCOPSEout')
table_path_format = fullfile(save_table, 'COPSE_updated_prod_feedbacks.txt');
writetable(struct2table(upCOPSE.state), table_path_format)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Run with updated productivity feedback no fire %%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

unfCOPSE = COPSE_frontend(0,"none","vitali");
unfCOPSEout = table(unfCOPSE.state.time_myr, unfCOPSE.state.mrO2,...
    unfCOPSE.state.VEG, unfCOPSE.state.firef, unfCOPSE.state.locb, unfCOPSE.state.phosw, unfCOPSE.state.cpoint);
% save as output 
 matname = fullfile('/Volumes/PhD stuff/Models/COPSE-main/output/', 'COPSE_updated_no_fire_feedbacks.mat');
    save(matname, 'unfCOPSEout')
table_path_format = fullfile(save_table, 'COPSE_updated_no_fire_feedbacks.txt');
writetable(struct2table(unfCOPSE.state), table_path_format)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Run with both feedback %%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

bCOPSE = COPSE_frontend(0,"vitali","vitali");
bCOPSEout = table(bCOPSE.state.time_myr, bCOPSE.state.mrO2,...
    bCOPSE.state.VEG, bCOPSE.state.firef, bCOPSE.state.locb, bCOPSE.state.phosw, bCOPSE.state.cpoint);
% save as output 
 matname = fullfile('/Volumes/PhD stuff/Models/COPSE-main/output/', 'COPSE_both_feedbacks.mat');
    save(matname, 'bCOPSEout')
table_path_format = fullfile(save_table, 'COPSE_both_feedbacks.txt');
writetable(struct2table(bCOPSE.state), table_path_format)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Run with combined feedback %%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

cCOPSE = COPSE_frontend(0,"combined","combined");
cCOPSEout = table(cCOPSE.state.time_myr, cCOPSE.state.mrO2,...
    cCOPSE.state.VEG, cCOPSE.state.firef, cCOPSE.state.locb, cCOPSE.state.phosw, cCOPSE.state.cpoint);
% save as output 
 matname = fullfile('/Volumes/PhD stuff/Models/COPSE-main/output/', 'COPSE_combined_feedbacks.mat');
    save(matname, 'cCOPSEout')
table_path_format = fullfile(save_table, 'COPSE_combined_feedbacks.txt');
writetable(struct2table(cCOPSE.state), table_path_format)



