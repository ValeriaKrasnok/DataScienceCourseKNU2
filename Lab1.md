> install.packages("xlsx")
> library(xlsx)
> install.packages("readxl")
> library(readxl)
> radiation <- read_xlsx("info_aes_blocks_18_10_2019.xlsx")
> radiation
```R
```
1. За допомогою download.file() завантажте любий excel файл з порталу http://data.gov.ua та зчитайте його (xls, xlsx – бінарні формати, тому
встановить mode = “wb”. Виведіть перші 6 строк отриманого фрейму даних.
```R
```
download.file("https://data.gov.ua/dataset/2cde453d-a726-40e8-95f5-03eb05d4bfcc/resource/2e477324-76a3-4802-8e80-0ec2dc196a03/download/info_aes_blocks_18_10_2019.xlsx",
              "info_aes_blocks_18_10_2019.xlsx", mode = "wb")
> radiation <- read_xlsx("info_aes_blocks_18_10_2019.xlsx")
> radiation
station unit_number installed_capacity reactor_type fuel
10    РАЕС           4               1000    ВВЕР-1000    Т
11    ХАЕС           1               1000    ВВЕР-1000    Т
12    ХАЕС           2               1000    ВВЕР-1000    Т
13   ЮУАЕС           1               1000    ВВЕР-1000    Т
14   ЮУАЕС           2               1000    ВВЕР-1000   ТВ
15   ЮУАЕС           3               1000    ВВЕР-1000    В
```R
```
2. За допомогою download.file() завантажте файл getdata_data_ss06hid.csv за
посиланням
https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv та
завантажте дані в R. Code book, що пояснює значення змінних
знаходиться за посиланням
https://www.dropbox.com/s/dijv0rlwo4mryv5/PUMSDataDict06.pdf?dl=0
Необхідно знайти, скільки property мають value $1000000+
```R
```
> download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv", "getdata_data_ss06hid")
trying URL 'https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv'
Content type 'text/csv' length 4246554 bytes (4.0 MB)
downloaded 4.0 MB
> data <- read.csv("getdata_data_ss06hid")
> data
RT SERIALNO DIVISION PUMA REGION ST  ADJUST WGTP NP TYPE ACR AGS BDS BLD BUS CONP
1  H      186        8  700      4 16 1015675   89  4    1   1  NA   4   2   2   NA
2  H      306        8  700      4 16 1015675  310  1    1  NA  NA   1   7  NA   NA
3  H      395        8  100      4 16 1015675  106  2    1   1  NA   3   2   2   NA
4  H      506        8  700      4 16 1015675  240  4    1   1  NA   4   2   2   NA
5  H      835        8  800      4 16 1015675  118  4    1   2   1   5   2   2   NA
ELEP FS FULP GASP HFL INSP KIT MHP MRGI MRGP MRGT MRGX PLM RMS RNTM RNTP SMP TEL
1  180  0    2    3   3  600   1  NA    1 1300    1    1   1   9   NA   NA  NA   1
2   60  0    2    3   3   NA   1  NA   NA   NA   NA   NA   1   2    2  600  NA   1
3   70  0    2   30   1  200   1  NA   NA   NA   NA    3   1   7   NA   NA  NA   1
4   40  0    2   80   1  200   1  NA    1  860    1    1   1   6   NA   NA 400   1
5  250  0    2    3   3  700   1  NA    1 1900    1    1   1   7   NA   NA 650   1
TEN VACS VAL VEH WATP YBL FES  FINCP FPARC GRNTP GRPIP HHL HHT  HINCP HUGCL HUPAC
1   1   NA  17   3  840   5   2 105600     2    NA    NA   1   1 105600     0     2
2   3   NA  NA   1    1   3  NA     NA    NA   660    23   1   4  34000     0     4
3   2   NA  18   2   50   5   7   9400     2    NA    NA   1   3   9400     0     2
4   1   NA  19   3  500   2   1  66000     1    NA    NA   1   1  66000     0     1
5   1   NA  20   5    2   3   1  93000     2    NA    NA   1   1  93000     0     2
HUPAOC HUPARC LNGI MV NOC NPF NPP NR NRC OCPIP PARTNER PSF R18 R60 R65 RESMODE
1      2      2    1  4   2   4   0  0   2    18       0   0   1   0   0       1
2      4      4    1  3   0  NA   0  0   0    NA       0   0   0   0   0       2
3      2      2    1  2   1   2   0  0   1    23       0   0   1   0   0       1
4      1      1    1  3   2   4   0  0   2    26       0   0   1   0   0       2
5      2      2    1  1   1   4   0  0   1    36       0   0   1   0   0       1
SMOCP SMX SRNT SVAL TAXP WIF WKEXREL WORKSTAT FACRP FAGSP FBDSP FBLDP FBUSP FCONP
1  1550   3    0    1   24   3       2        3     0     0     0     0     0     0
2    NA  NA    1    0   NA  NA      NA       NA     0     0     0     0     0     0
3   179  NA    0    1   16   1      13       13     0     0     0     0     0     0
4  1422   1    0    1   31   2       2        1     0     0     0     0     0     0
5  2800   1    0    1   25   3       1        1     0     0     0     0     0     0
FELEP FFSP FFULP FGASP FHFLP FINSP FKITP FMHP FMRGIP FMRGP FMRGTP FMRGXP FMVYP
1     0    0     0     0     0     0     0    0      0     0      0      0     0
2     0    0     0     0     0     0     0    0      0     0      0      0     0
3     0    0     0     0     0     0     0    0      0     0      0      0     0
4     0    0     0     0     0     0     0    0      0     0      0      0     0
5     0    0     0     0     0     0     0    0      0     0      0      0     0
FPLMP FRMSP FRNTMP FRNTP FSMP FSMXHP FSMXSP FTAXP FTELP FTENP FVACSP FVALP FVEHP
1     0     0      0     0    0      0      0     0     0     0      0     0     0
2     0     0      0     0    0      0      0     0     0     0      0     0     0
3     0     0      0     0    0      0      0     0     0     0      0     0     0
4     0     0      0     0    0      0      0     0     0     0      0     0     0
5     0     0      0     0    0      0      0     0     0     0      0     0     0
FWATP FYBLP wgtp1 wgtp2 wgtp3 wgtp4 wgtp5 wgtp6 wgtp7 wgtp8 wgtp9 wgtp10 wgtp11
1     0     0    87    28   156    95    26    25    95    93    93     91     87
2     0     1   539   363   293   422   566   289    87   242   453    453    334
3     0     0   187    35   184   178    83    95    31    32   177    118    110
4     0     0   232   406   234   270   249   242   406   249   287     67     72
5     0     0   107   194   129    41   156   174    47   113   101     33    115
wgtp12 wgtp13 wgtp14 wgtp15 wgtp16 wgtp17 wgtp18 wgtp19 wgtp20 wgtp21 wgtp22
1    166     90     25    153     89    148     82     25    180     90     24
2    358    414    102    281     99    108    278    131    407    447    264
3    114    184    107     95    115     33    118    120     37    184     35
4    413    399     77    245    424     67     63    226    254    238     69
5     52    113     95    135    206    100    185    135    279    116     33
wgtp23 wgtp24 wgtp25 wgtp26 wgtp27 wgtp28 wgtp29 wgtp30 wgtp31 wgtp32 wgtp33
1    140     92     25     27     86     84     87     93     90    149     91
2    352    238    390    336    122    374    482    468    335    251    613
3    176    176    110    103     29     30    197    127     92    118    177
4    238    255    239    248     69    234    247    437    423     74     61
5    105    244     38     30    230    123    123    243    120    238     98
wgtp34 wgtp35 wgtp36 wgtp37 wgtp38 wgtp39 wgtp40 wgtp41 wgtp42 wgtp43 wgtp44
1     28    143     81    144     95     27     22     90    171     27     83
2    104    284    116     91    326    102    361    107    253    321    289
3     99     99    109     34    100    105     33    173     36    168    175
4    401    267     72    388    335    229    236    239     65    259    247
5     90    107     44    122     32    127    195    116     36    135    237
wgtp45 wgtp46 wgtp47 wgtp48 wgtp49 wgtp50 wgtp51 wgtp52 wgtp53 wgtp54 wgtp55
1    153    148     92     91     91     93     90     26     94    142     24
2     96    343    564    274    118    118    321    261    130    463    294
3     99    103     30     35    155    102     95    107    185    120    114
4    230    225     82    220    233    419    390     69     74    391    276
5     33     33    249    102     84    224    119    250    119    125    126
wgtp56 wgtp57 wgtp58 wgtp59 wgtp60 wgtp61 wgtp62 wgtp63 wgtp64 wgtp65 wgtp66
1     91     29     84    148     30     93    143     24     88    147    145
2    479    391    307    476    283    116    353    323    374    106    236
3    113     36    115    103     29    183     35    179    169     95    110
4     70    422    409    223    245    269    488    221    250    247    240
5     32    112     33    131     45    101    165    125     41    191    195
wgtp67 wgtp68 wgtp69 wgtp70 wgtp71 wgtp72 wgtp73 wgtp74 wgtp75 wgtp76 wgtp77
1     91     83     83     86     81     27     93    151     28     79     25
2    380    313     90     94    292    401     81    494    346    496    615
3     28     34    233     97    123    119    168    107     95    101     30
4    415    234    219     66     68    359    385     71    234    421     76
5     49    119     92     44    127     36    119    121    116    209     97
wgtp78 wgtp79 wgtp80
1    101    157    129
2    286    454    260
3    124    106     31
4     77    242    231
5    176    144     38
[ reached 'max' / getOption("max.print") -- omitted 6491 rows ]
##on COdeBook we can see that property=24 has a value more than $1000000
> val24<-which(data$VAL==24)
> val24
[1]  192  241  555  568  590  680  787  956 1115 1212 1480 1485 1822 1856 2065 2178
[17] 2300 2449 2575 2703 2876 3114 3160 3352 3422 3576 3585 3733 3853 4061 4181 4208
[33] 4338 4634 4707 4739 4817 4881 5019 5050 5168 5240 5318 5365 5488 5646 6116 6237
[49] 6239 6334 6400 6420 6426
> length(val24)
[1] 53
```R
```
3. Зчитайте xml файл за посиланням
http://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Frestaurants.xml
Скільки ресторанів мають zipcode 21231?
```R
```
> install.packages("XML")
trying URL 'https://cran.rstudio.com/bin/windows/contrib/3.5/XML_3.98-1.20.zip'
Content type 'application/zip' length 4601568 bytes (4.4 MB)
downloaded 4.4 MB

package ‘XML’ successfully unpacked and MD5 sums checked

The downloaded binary packages are in
C:\Users\Валерия\AppData\Local\Temp\RtmpqS8L6N\downloaded_packages
##downloaded a XML package 
> library("XML")
> url <- "http://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Frestaurants.xml"
> > doc <- xmlTreeParse(url, useInternal=TRUE)
> rootNode <- xmlRoot(doc)
> xmlName(rootNode)
[1] "response"
> names(rootNode)
row 
"row" 
> zipcode <- xpathSApply(doc, "//zipcode", xmlValue)
> length(which(zipcode==21231))
[1] 127
```R
```
