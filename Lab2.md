```R
```
2. Встановить в R пакет для роботи з HDF5 файлами.h5h
```R
```
> source("http://bioconductor.org/biocLite.R")
trying URL 'https://bioconductor.org/packages/3.7/bioc/bin/windows/contrib/3.5/BiocInstaller_1.30.0.zip'
Content type 'application/zip' length 102191 bytes (99 KB)
downloaded 99 KB

package ‘BiocInstaller’ successfully unpacked and MD5 sums checked
##installed BiocIns
taller package
> biocLite("rhdf5")
##package ‘Rhdf5lib’ successfully unpacked and MD5 sums checked
##package ‘rhdf5’ successfully unpacked and MD5 sums checked
> library(rhdf5)
> h5ls("E:/Study/H-H1_LOSC_C00_4_V1-1187006834-4096.hdf5")
group            name       otype  dclass
0                    /            meta   H5I_GROUP        
1                /meta     Description H5I_DATASET  STRING
2                /meta  DescriptionURL H5I_DATASET  STRING
3                /meta        Detector H5I_DATASET  STRING
4                /meta        Duration H5I_DATASET INTEGER
5                /meta        GPSstart H5I_DATASET INTEGER
6                /meta     Observatory H5I_DATASET  STRING
7                /meta            Type H5I_DATASET  STRING
8                /meta        UTCstart H5I_DATASET  STRING
9                    /         quality   H5I_GROUP        
10            /quality          detail   H5I_GROUP        
11            /quality      injections   H5I_GROUP        
12 /quality/injections InjDescriptions H5I_DATASET  STRING
13 /quality/injections   InjShortnames H5I_DATASET  STRING
14 /quality/injections         Injmask H5I_DATASET INTEGER
15            /quality          simple   H5I_GROUP        
16     /quality/simple  DQDescriptions H5I_DATASET  STRING
17     /quality/simple    DQShortnames H5I_DATASET  STRING
18     /quality/simple          DQmask H5I_DATASET INTEGER
19                   /          strain   H5I_GROUP        
20             /strain          Strain H5I_DATASET   FLOAT
dim
0          
1     ( 0 )
2     ( 0 )
3     ( 0 )
4     ( 0 )
5     ( 0 )
6     ( 0 )
7     ( 0 )
8     ( 0 )
9          
10         
11         
12        5
13        5
14     4096
15         
16        7
17        7
18     4096
19         
20 16777216

