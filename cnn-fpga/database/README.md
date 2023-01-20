### Database
- The database used in this work is the NSL-KDD, available in the repository [defecom](https://github.com/defcom17/NSL_KDD);;
- The original files of the database are located in the *nsl_kdd* folder;
- The convert2cnn folder contains a script capable of converting a NSL-KDD database CSV file to a normalized format that can be processed by the developed CNN;
- The source code of this script is available in the *convert2cnn/src* folder. In addition, a project was developed to run the script, with test files (*conver2cnn/codeblocks_project*);
- To use the script, it is necessary to open the original csv (training or test) and remove the last column, as it is not used, and the `num_outbound_cmds column`, as it has all records equal to zero, therefore not representative. In addition, it is mandatory to insert in the first line of the file, the names of the columns (attributes);


### Script
- The `main` method of the script expects the name of the csv file to be processed as a parameter (e.g. **Small_Training_Set.csv**).
- The received csv file should have 41 columns, with 40 attributes and 1 label.
- The script normalizes its values between 0-1 using the min-max technique.
- It transforms columns with categorical values (protocol_type, service, flag) into new columns with binary values (e.g. protocol_type has three types of attributes: *tcp*, *udp* and *icmp*, which are divided into three columns [1,0,0], [0,1,0] and [0,0,1], respectively).
- The original 41 columns are transformed into 122, with 121 attributes and 1 label.
- The 22 types of attacks are divided into 6 classes according to their characteristics (*Dos, U2r, R2l, Probe, Normal, Unknown*).
- At the end of the process, the **FpgaEditCnn.csv** file is generated. This file has in its first line, the original name of the processed columns, in its last line, the names of the columns generated according to the processes carried out, and in the middle all the evaluated data.
- To use the file in the CNN, it is necessary to remove the first and last line of the file.
