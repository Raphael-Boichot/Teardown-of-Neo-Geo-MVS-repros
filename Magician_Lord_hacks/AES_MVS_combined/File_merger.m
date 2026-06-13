% Define file names
file1 = 'p1_intro_AES_set_1.bin';
file2 = 'p1_no_intro_MVS_set_2.bin';
outputFile = 'MX29F1615_p1.bin';
fid1 = fopen(file1, 'rb');
fid2 = fopen(file2, 'rb');
fidOut = fopen(outputFile, 'wb');
data1 = fread(fid1, inf, 'uint8');
data2 = fread(fid2, inf, 'uint8');
data3 = [data1 data1 data2 data2];% to fill a MX29F1615, low bank set 1, high bank set 2
% switch on A19 to switch the bank
fwrite(fidOut, data3, 'uint8');

% Close all files
fclose(fid1);
fclose(fid2);
fclose(fidOut);

fprintf('Files successfully concatenated into %s\n', outputFile);