% Define file names
file1 = 'p1_acfh.bin';
outputFile = 'MX29F1615_p1.bin';
fid1 = fopen(file1, 'rb');
fidOut = fopen(outputFile, 'wb');
data1 = fread(fid1, inf, 'uint8');
data3 = [data1 data1 data1 data1];% to completely fill a MX29F1615
fwrite(fidOut, data3, 'uint8');

% Close all files
fclose(fid1);
fclose(fidOut);

fprintf('Files successfully concatenated into %s\n', outputFile);