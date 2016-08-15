
Developing Data Product Project
===============================


Pradeep K. Pant, ppant@cpan.org 

Monday, 15th August, 2016


Introduction
========================================================

This peer assignment has two parts.

- Create a Shiny apllicatio and deploy on Rstudio servers.
- Create a Rstudio Presenter to prepare a reproducible pitch presentation.


The Application
========================================================

I have used dataset (WaterQualityRiverGanga2012) which has been taken from https://data.gov.in/. 


The app allows to check the interactive data analysis on the water quality of river ganga as it passes through various states also a plot to give an idea of Choliform bacteria found in different states.


Source code
========================================================

Source code for ui.R and server.R is avaliable at https://github.com/ppant/Course-Project-Data-Products-Shiny-Application


Datset summary
========================================================



```
  STATION.CODE                                  LOCATIONS       STATE
1         1491                     BHAGIRATHI AT GANGOTRI UTTARANCHAL
2         1484    ALKANANDA B/C MANDAKINI AT RUDRA PRAYAG UTTARANCHAL
3         1485     MANDAKINI B/C ALKALNADA AT RUDRAPRAYAG UTTARANCHAL
4         1486     ALKANANDA A/C MANDAKINI AT RUDRAPRAYAG UTTARANCHAL
5         1487   ALKANANDA B/C TO BHAGIRATHI AT DEVPRAYAG UTTARANCHAL
6         1488 BHAGIRATHI B/C WITH ALAKNANDA AT DEVPRAYAG UTTARANCHAL
  TEMPERATURE.in.degree.Centigrade....Min
1                                     8.0
2                                    10.8
3                                    11.5
4                                    11.0
5                                    13.6
6                                    17.0
  TEMPERATURE.in.degree.Centigrade....Max
1                                     8.0
2                                    20.4
3                                    20.6
4                                    20.0
5                                    18.2
6                                    19.0
  TEMPERATURE.in.degree.Centigrade....Mean D.O...mg.l.....4.mg.l....Min
1                                     8.00                          8.6
2                                    16.35                          8.6
3                                    16.90                          8.0
4                                    16.25                          8.2
5                                    16.78                          8.4
6                                    17.83                          1.2
  D.O...mg.l.....4.mg.l....Max D.O...mg.l.....4.mg.l....Mean
1                          8.6                          8.60
2                         11.4                          9.65
3                          9.6                          8.85
4                          9.6                          8.85
5                         11.2                          9.40
6                          9.8                          6.95
  pH..6.5.8.5....Min pH..6.5.8.5....Max pH..6.5.8.5....Mean
1               8.38               8.38                8.38
2               7.53               8.50                8.00
3               7.35               8.50                8.13
4               7.20               8.50                7.99
5               7.40               8.50                8.10
6               7.21               8.51                8.11
  CONDUCTIVITY..µmhos.cm.....Min CONDUCTIVITY..µmhos.cm.....Max
1                           94.0                             94
2                          132.0                            156
3                           80.0                             94
4                          112.0                            145
5                          132.0                            140
6                           88.6                            110
  CONDUCTIVITY..µmhos.cm.....Mean B.O.D...mg.l.....3.mg.l....Min
1                           94.00                             NA
2                          143.33                            0.6
3                           86.67                            0.4
4                          129.00                            0.8
5                          136.33                            1.0
6                           99.20                            1.2
  B.O.D...mg.l.....3.mg.l....Max B.O.D...mg.l.....3.mg.l....Mean
1                             NA                              NA
2                            1.0                            0.73
3                           12.0                            4.60
4                            1.0                            0.90
5                            1.2                            1.07
6                            1.4                            1.27
  NITRATE..N..NITRITE.N..mg.l.....Min NITRATE..N..NITRITE.N..mg.l.....Max
1                                  NA                                  NA
2                                  NA                                  NA
3                                  NA                                  NA
4                                  NA                                  NA
5                                  NA                                  NA
6                                  NA                                  NA
  NITRATE..N..NITRITE.N..mg.l.....Mean
1                                   NA
2                                   NA
3                                   NA
4                                   NA
5                                   NA
6                                   NA
  FECAL.COLIFORM..MPN.100ml.....2500.MPN.100ml....Min
1                                                  NA
2                                                5000
3                                                1100
4                                                  NA
5                                              200000
6                                               17000
  FECAL.COLIFORM..MPN.100ml.....2500.MPN.100ml....Max
1                                                  NA
2                                                5000
3                                                1100
4                                                  NA
5                                              200000
6                                               17000
  FECAL.COLIFORM..MPN.100ml.....2500.MPN.100ml....Mean
1                                                   NA
2                                                 5000
3                                                 1100
4                                                   NA
5                                               160000
6                                                17000
  TOTAL.COLIFORM..MPN.100ml.....5000.MPN.100ml....Min
1                                                  NA
2                                                2300
3                                                1100
4                                                  NA
5                                              200000
6                                                 920
  TOTAL.COLIFORM..MPN.100ml.....5000.MPN.100ml....Max
1                                                  NA
2                                                7000
3                                              200000
4                                                  NA
5                                              200000
6                                               22000
  TOTAL.COLIFORM..MPN.100ml.....5000.MPN.100ml....Mean
1                                                   NA
2                                              3866.67
3                                            107033.00
4                                                   NA
5                                            160000.00
6                                              7946.67
```


