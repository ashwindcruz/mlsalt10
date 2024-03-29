% Plots for 3.2.3
% mcep
[mcep,~] = load_traj('../traj/utt1.mcep',60);

figure; 
plot(mcep(1,:));
hold on;
plot(mcep(2,:));
hold on;
plot(mcep(4,:));
hold on;
plot(mcep(6,:));
hold on;
plot(mcep(8,:));
hold on;

xlabel('Frame');
legend('Dimension 1', 'Dimension 2', 'Dimension 4', 'Dimension 6', 'Dimension 8');

figure; 
plot(mcep(10,:));
hold on;
plot(mcep(20,:));
hold on;
plot(mcep(30,:));
hold on;
plot(mcep(40,:));
hold on;
plot(mcep(60,:));
hold on;

xlabel('Frame');
legend('Dimension 10', 'Dimension 20', 'Dimension 30', 'Dimension 40', 'Dimension 60');

% F0
fileID = fopen('../traj/utt1.f0.txt');
fO = fscanf(fileID, '%f');
fclose(fileID);
figure;
plot(fO);
legend('F0');
xlabel('Frame');

% Aper
[aper,~] = load_traj('../traj/utt1.apf',21);
figure;
plot(aper(1,:));
hold on;
plot(aper(5,:));
hold on;
plot(aper(10,:));
hold on;
plot(aper(15,:));
hold on;
plot(aper(21,:));
hold on;

legend('Dimension 1', 'Dimension 5', 'Dimension 10', 'Dimension 15', 'Dimension 21');
xlabel('Frame');
