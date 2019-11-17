```R
```
> url <- "https://www.imdb.com/search/title/?count=100&release_date=2017,2017&title_ty"
> movie <- read_html(url)
##Used CSS selectors to scrape the rankings section
rank_data_html <- html_nodes(movie,".text-primary")
##Converted the ranking data to text
rank_data <- html_text(rank_data_html)
> head(rank_data)
[1] "1." "2." "3." "4." "5." "6."
##above we can see a rankings
> rank_data<-as.numeric(rank_data)
##Converted rankings to numerical 
> head(rank_data)
[1] 1 2 3 4 5 6
##now we can see rank_data as numbers
##also we can do the same actions with other titles as title_data and runtime_data
> title_data_html <- html_nodes(movie,".lister-item-header a")
##Below converted the ranking data to text
> title_data <- html_text(title_data_html)
> head(title_data)
[1] "The End of the F***ing World" "Atypical"                    
[3] "Дивовижна мiсiс Мейзел"       "Рiвердейл"                   
[5] "Паперовий будинок"            "Великий рот"
> runtime_data_html <- html_nodes(movie,".text-muted .runtime")
> runtime_data <- html_text(runtime_data_html)
> head(runtime_data)
[1] "25 min" "30 min" "57 min" "45 min" "70 min" "30 min"
##removed mins and converted to numerical
> runtime_data<-gsub(" min","",runtime_data)
> runtime_data<-as.numeric(runtime_data)
> head(runtime_data)
[1] 25 30 57 45 70 30
##below you can see a data frame with 3 titles
> data.frame(rank_data,title_data, runtime_data, stringsAsFactors = FALSE)
    rank_data                               title_data runtime_data
1           1             The End of the F***ing World       25 min
2           2                                 Atypical       30 min
3           3                   Дивовижна мiсiс Мейзел       57 min
4           4                                Рiвердейл       45 min
5           5                        Паперовий будинок       70 min
6           6                              Великий рот       30 min
7           7                       Мисливець на розум       60 min
8           8                          The Good Doctor       41 min
9           9                         Оповiдь служницi       60 min
10         10                                Britannia       60 min
11         11                                     Dark       60 min
12         12                                     Воно      135 min
13         13                          The Current War      102 min
14         14                     Call Me by Your Name      132 min
15         15             Той, хто бiжить по лезу 2049      164 min
16         16               Джуманджi: Поклик джунглiв      119 min
17         17                                The Deuce       60 min
18         18                                SEAL Team       43 min
19         19                                    Озарк       60 min
20         20                           13 причин чому       60 min
21         21                                     Коко      105 min
22         22                              Юний Шелдон       30 min
23         23                                 S.W.A.T.       43 min
24         24                               The Sinner       45 min
25         25  Зорянi вiйни: Епiзод 8 - Останнi Джедаi      152 min
26         26                   Велика маленька брехня       60 min
27         27                  Зоряний шлях: Дискаверi       60 min
28         28                             Mr. Mercedes       60 min
29         29             Вбивство в Схiдному експресi      114 min
30         30                  Kingsman: Золоте кiльце      141 min
31         31                     Найвеличнiший шоумен      105 min
32         32                                   Пастка      104 min
33         33                                     Диво      113 min
34         34                  Тебе нiколи тут не було       89 min
35         35                      Лiга справедливостi      120 min
36         36                                     Табу       59 min
37         37                     Красуня i Чудовисько      129 min
38         38                            Тор: Рагнарок      130 min
39         39                               Диво-Жiнка      141 min
40         40                                    Орвiл       44 min
41         41                                  Dynasty       42 min
42         42                             Workin' Moms       30 min
43         43                                 Каратель       53 min
44         44                               Ледi Бьорд       94 min
45         45                      Конг: Острiв черепа      118 min
46         46                          Логан: Росомаха      137 min
47         47                                  Дюнкерк      106 min
48         48                             Гра Джералда      103 min
49         49                       Greenhouse Academy       25 min
50         50                                    Мати!      121 min
51         51       Три бiлборди пiд Еббiнгом, Мiссурi      115 min
52         52                                На драйвi      113 min
53         53           Валерiан i мiсто тисячi планет      137 min
54         54                                     Anne       60 min
55         55                                     GLOW       35 min
56         56                        Американськi Боги       60 min
57         57                                    Мумiя      110 min
58         58                      Рятувальники Малiбу      116 min
59         59                                   Legion       60 min
60         60                                Зменшення      135 min
61         61                             Синя безодня       89 min
62         62                                Гра Моллi      140 min
63         63                       Анна й Апокалiпсис       93 min
64         64 Пiрати Карибського моря: Помста Салазара      129 min
65         65                               Форма води      123 min
66         66                           Чужий: Заповiт      122 min
67         67          Людина-павук: Повернення додому      133 min
68         68                                     Окча      120 min
69         69                               Гарнi часи      101 min
70         70                               Джон Уiк 2      122 min
71         71                               Темнi часи      125 min
72         72                         Атомна Блондинка      115 min
73         73                    Вiйна за планету мавп      140 min
74         74                               Get Shorty       60 min
75         75             Трансформери: Останнiй лицар      154 min
76         76                      Вартовi Галактики 2      136 min
77         77                                Time Trap       87 min
78         78                           The Babysitter       85 min
79         79                     Щасливий день смертi       96 min
80         80                           Падiння ордену       60 min
81         81                Saban's Могутнi рейнджери      124 min
82         82                                  Яскравi      117 min
83         83               Король Артур: Легенда меча      126 min
84         84                                 Форсаж 8      136 min
85         85                                    Життя      104 min
86         86            Баррi Сiл: Король контрабанди      115 min
87         87                               Twin Peaks       60 min
88         88                           Примарна нитка      130 min
89         89                                   Вороги      134 min
90         90                       xXx: Реактивiзацiя      107 min
91         91                               The Gifted       43 min
92         92           A Series of Unfortunate Events       50 min
93         93                                  Godless       60 min
94         94                                 Room 104       30 min
95         95                       Santa Clarita Diet       30 min
96         96              П'ятдесят вiдтiнкiв темряви      118 min
97         97                Вбивство священного оленя      121 min
98         98                                   Пила 8       92 min
99         99                               Сiм сестер      123 min
100       100                           Вавилон-Берлiн       45 min
> movies <- data.frame(rank_data,title_data, runtime_data, stringsAsFactors = FALSE)
```R
```
1. Виведіть перші 6 назв фільмів дата фрейму
```R
```
> head(movies$title_data, 6)
[1] "The End of the F***ing World" "Atypical"                    
[3] "Дивовижна мiсiс Мейзел"       "Рiвердейл"                   
[5] "Паперовий будинок"            "Великий рот"     
##entered first 6 rows of movies by title_data (name of movie)
```R
```
2. Виведіть всі назви фільмів с тривалістю більше 120 хв.
```R
```
> subset(movies$title_data, runtime_data > 120)
 [1] "Воно"                                    
 [2] "Call Me by Your Name"                    
 [3] "Той, хто бiжить по лезу 2049"            
 [4] "Зорянi вiйни: Епiзод 8 - Останнi Джедаi" 
 [5] "Kingsman: Золоте кiльце"                 
 [6] "Красуня i Чудовисько"                    
 [7] "Тор: Рагнарок"                           
 [8] "Диво-Жiнка"                              
 [9] "Логан: Росомаха"                         
[10] "Мати!"                                   
[11] "Валерiан i мiсто тисячi планет"          
[12] "Зменшення"                               
[13] "Гра Моллi"                               
[14] "Пiрати Карибського моря: Помста Салазара"
[15] "Форма води"                              
[16] "Чужий: Заповiт"                          
[17] "Людина-павук: Повернення додому"         
[18] "Джон Уiк 2"                              
[19] "Темнi часи"                              
[20] "Вiйна за планету мавп"                   
[21] "Трансформери: Останнiй лицар"            
[22] "Вартовi Галактики 2"                     
[23] "Saban's Могутнi рейнджери"               
[24] "Король Артур: Легенда меча"              
[25] "Форсаж 8"                                
[26] "Примарна нитка"                          
[27] "Вороги"                                  
[28] "Вбивство священного оленя"               
[29] "Сiм сестер"                          
##entered all movies that have a runtime more than 120 mins
```R
```
3. Скільки фільмів мають тривалість менше 100 хв.
```R
```
> length(subset(movies$title_data, runtime_data < 100))
[1] 48
```R
```
