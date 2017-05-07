% Plots for 3.2.6

[original, ~] = load_htkdata('../original/cmp/utt1.cmp');
%original = original(1,:);

[generated, ~] = load_traj('../traj/utt1.mcep',60);

[generatedAligned, ~] = load_traj('../traj-dur/utt1.mcep',60);

figure;
plot(original(1,:));
hold on;
plot(generated(1,:));
legend('Original', 'HTS');
xlabel('Frame');

figure;
plot(original(1,:));
hold on;
plot(generatedAligned(1,:));
legend('Original', 'HTS Aligned');
xlabel('Frame');

%TODO: DTW alignment