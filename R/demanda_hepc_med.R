#### Carregando bibliotecas ####

#install.packages('dplyr')
library('dplyr')

#install.packages("tidyr")
library('tidyr')

#install.packages("data.table")
library('data.table')

#install.packages('stringr')
library('stringr')

#install.packages('Amelia')
library('Amelia')

# install.packages("tidyverse")
library(tidyverse)

# install.packages("lubridate")
library(lubridate)

# install.packages("ggplot2")
library(ggplot2)

#library(xlsx)

library(rJava)

#install.packages("read.dbc")

library(read.dbc)

#install.packages("forcats")

#library(forcats)

library("foreign")

#install.packages("foreign")

#install.packages("openxlsx")

library("openxlsx")

library(RColorBrewer)


##### Carregando arquivos ####

##### Carregando arquivos ####

## AC - 2019

AC_APAC_med_01 <- read.dbc("/Users/mikael.lemos/Downloads/AC_APAC_med/AMAC1901.dbc")
AC_APAC_med_02 <- read.dbc("/Users/mikael.lemos/Downloads/AC_APAC_med/AMAC1902.dbc")
AC_APAC_med_03 <- read.dbc("/Users/mikael.lemos/Downloads/AC_APAC_med/AMAC1903.dbc")
AC_APAC_med_04 <- read.dbc("/Users/mikael.lemos/Downloads/AC_APAC_med/AMAC1904.dbc")
AC_APAC_med_05 <- read.dbc("/Users/mikael.lemos/Downloads/AC_APAC_med/AMAC1905.dbc")
AC_APAC_med_06 <- read.dbc("/Users/mikael.lemos/Downloads/AC_APAC_med/AMAC1906.dbc")
AC_APAC_med_07 <- read.dbc("/Users/mikael.lemos/Downloads/AC_APAC_med/AMAC1907.dbc")
AC_APAC_med_08 <- read.dbc("/Users/mikael.lemos/Downloads/AC_APAC_med/AMAC1908.dbc")
AC_APAC_med_09 <- read.dbc("/Users/mikael.lemos/Downloads/AC_APAC_med/AMAC1909.dbc")
AC_APAC_med_10 <- read.dbc("/Users/mikael.lemos/Downloads/AC_APAC_med/AMAC1910.dbc")


AC_APAC_med <- do.call("rbind", list(AC_APAC_med_01, AC_APAC_med_02, AC_APAC_med_03, AC_APAC_med_04, AC_APAC_med_05,AC_APAC_med_06, AC_APAC_med_07, AC_APAC_med_08, AC_APAC_med_09, AC_APAC_med_10))


AC_APAC_med$UF <- "AC"

## AL - 2019 

AL_APAC_med_01 <- read.dbc("/Users/mikael.lemos/Downloads/AL_APAC_med/AMAL1901.dbc")
AL_APAC_med_02 <- read.dbc("/Users/mikael.lemos/Downloads/AL_APAC_med/AMAL1902.dbc")
AL_APAC_med_03 <- read.dbc("/Users/mikael.lemos/Downloads/AL_APAC_med/AMAL1903.dbc")
AL_APAC_med_04 <- read.dbc("/Users/mikael.lemos/Downloads/AL_APAC_med/AMAL1904.dbc")
AL_APAC_med_05 <- read.dbc("/Users/mikael.lemos/Downloads/AL_APAC_med/AMAL1905.dbc")
AL_APAC_med_06 <- read.dbc("/Users/mikael.lemos/Downloads/AL_APAC_med/AMAL1906.dbc")
AL_APAC_med_08 <- read.dbc("/Users/mikael.lemos/Downloads/AL_APAC_med/AMAL1908.dbc")
AL_APAC_med_09 <- read.dbc("/Users/mikael.lemos/Downloads/AL_APAC_med/AMAL1909.dbc")
AL_APAC_med_10 <- read.dbc("/Users/mikael.lemos/Downloads/AL_APAC_med/AMAL1910.dbc")


AL_APAL_med <- do.call("rbind", list(AL_APAC_med_01, AL_APAC_med_02, AL_APAC_med_03, AL_APAC_med_04, AL_APAC_med_05,AL_APAC_med_06, AL_APAC_med_08,AL_APAC_med_09, AL_APAC_med_10 ))

AL_APAL_med$UF <- "AL"

## AM - 2019 

AM_APAC_med_01 <- read.dbc("/Users/mikael.lemos/Downloads/AM_APAC_med/AMAM1901.dbc")
AM_APAC_med_02 <- read.dbc("/Users/mikael.lemos/Downloads/AM_APAC_med/AMAM1902.dbc")
AM_APAC_med_03 <- read.dbc("/Users/mikael.lemos/Downloads/AM_APAC_med/AMAM1903.dbc")
AM_APAC_med_04 <- read.dbc("/Users/mikael.lemos/Downloads/AM_APAC_med/AMAM1904.dbc")
AM_APAC_med_05 <- read.dbc("/Users/mikael.lemos/Downloads/AM_APAC_med/AMAM1905.dbc")
AM_APAC_med_06 <- read.dbc("/Users/mikael.lemos/Downloads/AM_APAC_med/AMAM1906.dbc")
AM_APAC_med_07 <- read.dbc("/Users/mikael.lemos/Downloads/AM_APAC_med/AMAM1907.dbc")
AM_APAC_med_08 <- read.dbc("/Users/mikael.lemos/Downloads/AM_APAC_med/AMAM1908.dbc")
AM_APAC_med_09 <- read.dbc("/Users/mikael.lemos/Downloads/AM_APAC_med/AMAM1909.dbc")
AM_APAC_med_10 <- read.dbc("/Users/mikael.lemos/Downloads/AM_APAC_med/AMAM1910.dbc")


AM_APAL_med <- do.call("rbind", list(AM_APAC_med_01, AM_APAC_med_02, AM_APAC_med_03, AM_APAC_med_04, AM_APAC_med_05,AM_APAC_med_06, AM_APAC_med_07, AM_APAC_med_08, AM_APAC_med_09, AM_APAC_med_10))

AM_APAL_med$UF <- "AM"

## AP - 2019 

AP_APAC_med_01 <- read.dbc("/Users/mikael.lemos/Downloads/AP_APAC_med/AMAP1901.dbc")
AP_APAC_med_02 <- read.dbc("/Users/mikael.lemos/Downloads/AP_APAC_med/AMAP1902.dbc")
AP_APAC_med_03 <- read.dbc("/Users/mikael.lemos/Downloads/AP_APAC_med/AMAP1903.dbc")
AP_APAC_med_04 <- read.dbc("/Users/mikael.lemos/Downloads/AP_APAC_med/AMAP1904.dbc")
AP_APAC_med_05 <- read.dbc("/Users/mikael.lemos/Downloads/AP_APAC_med/AMAP1905.dbc")
AP_APAC_med_06 <- read.dbc("/Users/mikael.lemos/Downloads/AP_APAC_med/AMAP1906.dbc")
AP_APAC_med_07 <- read.dbc("/Users/mikael.lemos/Downloads/AP_APAC_med/AMAP1907.dbc")
AP_APAC_med_08  <- read.dbc("/Users/mikael.lemos/Downloads/AP_APAC_med/AMAP1908.dbc")
AP_APAC_med_09  <- read.dbc("/Users/mikael.lemos/Downloads/AP_APAC_med/AMAP1909.dbc")
AP_APAC_med_10  <- read.dbc("/Users/mikael.lemos/Downloads/AP_APAC_med/AMAP1910.dbc")


AP_APAL_med <- do.call("rbind", list(AP_APAC_med_01, AP_APAC_med_02, AP_APAC_med_03, AP_APAC_med_04, AP_APAC_med_05,AP_APAC_med_06, AP_APAC_med_07, AP_APAC_med_08, AP_APAC_med_09, AP_APAC_med_10))


AP_APAL_med$UF <- "AP"

## BA- 2019 

BA_APAC_med_01 <- read.dbc("/Users/mikael.lemos/Downloads/BA_APAC_med/AMBA1901.dbc")
BA_APAC_med_02 <- read.dbc("/Users/mikael.lemos/Downloads/BA_APAC_med/AMBA1902.dbc")
BA_APAC_med_03 <- read.dbc("/Users/mikael.lemos/Downloads/BA_APAC_med/AMBA1903.dbc")
BA_APAC_med_04 <- read.dbc("/Users/mikael.lemos/Downloads/BA_APAC_med/AMBA1904.dbc")
BA_APAC_med_05 <- read.dbc("/Users/mikael.lemos/Downloads/BA_APAC_med/AMBA1905.dbc")
BA_APAC_med_06 <- read.dbc("/Users/mikael.lemos/Downloads/BA_APAC_med/AMBA1906.dbc")
BA_APAC_med_07 <- read.dbc("/Users/mikael.lemos/Downloads/BA_APAC_med/AMBA1907.dbc")
BA_APAC_med_08 <- read.dbc("/Users/mikael.lemos/Downloads/BA_APAC_med/AMBA1908.dbc")
BA_APAC_med_09 <- read.dbc("/Users/mikael.lemos/Downloads/BA_APAC_med/AMBA1909.dbc")
BA_APAC_med_10 <- read.dbc("/Users/mikael.lemos/Downloads/BA_APAC_med/AMBA1910.dbc")


BA_APAL_med <- do.call("rbind", list(BA_APAC_med_01, BA_APAC_med_02, BA_APAC_med_03, BA_APAC_med_04, BA_APAC_med_05,BA_APAC_med_06, BA_APAC_med_07, BA_APAC_med_08,BA_APAC_med_09, BA_APAC_med_10 ))

BA_APAL_med$UF <- "BA"

## CE - 2019 

CE_APAC_med_01 <- read.dbc("/Users/mikael.lemos/Downloads/CE_APAC_med/AMCE1901.dbc")
CE_APAC_med_02 <- read.dbc("/Users/mikael.lemos/Downloads/CE_APAC_med/AMCE1902.dbc")
CE_APAC_med_03 <- read.dbc("/Users/mikael.lemos/Downloads/CE_APAC_med/AMCE1903.dbc")
CE_APAC_med_04 <- read.dbc("/Users/mikael.lemos/Downloads/CE_APAC_med/AMCE1904.dbc")
CE_APAC_med_05 <- read.dbc("/Users/mikael.lemos/Downloads/CE_APAC_med/AMCE1905.dbc")
CE_APAC_med_06 <- read.dbc("/Users/mikael.lemos/Downloads/CE_APAC_med/AMCE1906.dbc")
CE_APAC_med_07 <- read.dbc("/Users/mikael.lemos/Downloads/CE_APAC_med/AMCE1907.dbc")
CE_APAC_med_08 <- read.dbc("/Users/mikael.lemos/Downloads/CE_APAC_med/AMCE1908.dbc")
CE_APAC_med_09 <- read.dbc("/Users/mikael.lemos/Downloads/CE_APAC_med/AMCE1909.dbc")
CE_APAC_med_10 <- read.dbc("/Users/mikael.lemos/Downloads/CE_APAC_med/AMCE1910.dbc")

CE_APAL_med <- do.call("rbind", list(CE_APAC_med_01, CE_APAC_med_02, CE_APAC_med_03, CE_APAC_med_04, CE_APAC_med_05,CE_APAC_med_06, CE_APAC_med_07, CE_APAC_med_08, CE_APAC_med_09, CE_APAC_med_10))

CE_APAL_med$UF <- "CE"

## DF - 2019 

DF_APAC_med_01 <- read.dbc("/Users/mikael.lemos/Downloads/DF_APAC_med/AMDF1901.dbc")
DF_APAC_med_02 <- read.dbc("/Users/mikael.lemos/Downloads/DF_APAC_med/AMDF1902.dbc")
DF_APAC_med_03 <- read.dbc("/Users/mikael.lemos/Downloads/DF_APAC_med/AMDF1903.dbc")
DF_APAC_med_04 <- read.dbc("/Users/mikael.lemos/Downloads/DF_APAC_med/AMDF1904.dbc")
DF_APAC_med_05 <- read.dbc("/Users/mikael.lemos/Downloads/DF_APAC_med/AMDF1905.dbc")
DF_APAC_med_06 <- read.dbc("/Users/mikael.lemos/Downloads/DF_APAC_med/AMDF1906.dbc")
DF_APAC_med_07 <- read.dbc("/Users/mikael.lemos/Downloads/DF_APAC_med/AMDF1907.dbc")
DF_APAC_med_08 <- read.dbc("/Users/mikael.lemos/Downloads/DF_APAC_med/AMDF1908.dbc")
DF_APAC_med_09 <- read.dbc("/Users/mikael.lemos/Downloads/DF_APAC_med/AMDF1909.dbc")
DF_APAC_med_10 <- read.dbc("/Users/mikael.lemos/Downloads/DF_APAC_med/AMDF1910.dbc")


DF_APAL_med <- do.call("rbind", list(DF_APAC_med_01, DF_APAC_med_02, DF_APAC_med_03, DF_APAC_med_04, DF_APAC_med_05,DF_APAC_med_06, DF_APAC_med_07, DF_APAC_med_08, DF_APAC_med_09, DF_APAC_med_10))

DF_APAL_med$UF <- "DF"

## ES - 2019 

ES_APAC_med_01 <- read.dbc("/Users/mikael.lemos/Downloads/ES_APAC_med/AMES1901.dbc")
ES_APAC_med_02 <- read.dbc("/Users/mikael.lemos/Downloads/ES_APAC_med/AMES1902.dbc")
ES_APAC_med_03 <- read.dbc("/Users/mikael.lemos/Downloads/ES_APAC_med/AMES1903.dbc")
ES_APAC_med_04 <- read.dbc("/Users/mikael.lemos/Downloads/ES_APAC_med/AMES1904.dbc")
ES_APAC_med_05 <- read.dbc("/Users/mikael.lemos/Downloads/ES_APAC_med/AMES1905.dbc")
ES_APAC_med_06 <- read.dbc("/Users/mikael.lemos/Downloads/ES_APAC_med/AMES1906.dbc")
ES_APAC_med_07 <- read.dbc("/Users/mikael.lemos/Downloads/ES_APAC_med/AMES1907.dbc")
ES_APAC_med_08 <- read.dbc("/Users/mikael.lemos/Downloads/ES_APAC_med/AMES1908.dbc")
ES_APAC_med_09 <- read.dbc("/Users/mikael.lemos/Downloads/ES_APAC_med/AMES1909.dbc")
ES_APAC_med_10 <- read.dbc("/Users/mikael.lemos/Downloads/ES_APAC_med/AMES1910.dbc")


ES_APAL_med <- do.call("rbind", list(ES_APAC_med_01, ES_APAC_med_02, ES_APAC_med_03, ES_APAC_med_04, ES_APAC_med_05,ES_APAC_med_06, ES_APAC_med_07, ES_APAC_med_08, ES_APAC_med_09, ES_APAC_med_10))

ES_APAL_med$UF <- "ES" 

## GO - 2019 

GO_APAC_med_01 <- read.dbc("/Users/mikael.lemos/Downloads/GO_APAC_med/AMGO1901.dbc")
GO_APAC_med_02 <- read.dbc("/Users/mikael.lemos/Downloads/GO_APAC_med/AMGO1902.dbc")
GO_APAC_med_03 <- read.dbc("/Users/mikael.lemos/Downloads/GO_APAC_med/AMGO1903.dbc")
GO_APAC_med_04 <- read.dbc("/Users/mikael.lemos/Downloads/GO_APAC_med/AMGO1904.dbc")
GO_APAC_med_05 <- read.dbc("/Users/mikael.lemos/Downloads/GO_APAC_med/AMGO1905.dbc")
GO_APAC_med_06 <- read.dbc("/Users/mikael.lemos/Downloads/GO_APAC_med/AMGO1906.dbc")
GO_APAC_med_07 <- read.dbc("/Users/mikael.lemos/Downloads/GO_APAC_med/AMGO1907.dbc")
GO_APAC_med_08 <- read.dbc("/Users/mikael.lemos/Downloads/GO_APAC_med/AMGO1908.dbc")
GO_APAC_med_09 <- read.dbc("/Users/mikael.lemos/Downloads/GO_APAC_med/AMGO1909.dbc")
GO_APAC_med_10 <- read.dbc("/Users/mikael.lemos/Downloads/GO_APAC_med/AMGO1910.dbc")


GO_APAL_med <- do.call("rbind", list(GO_APAC_med_01, GO_APAC_med_02, GO_APAC_med_03, GO_APAC_med_04, GO_APAC_med_05,GO_APAC_med_06, GO_APAC_med_07, GO_APAC_med_08, GO_APAC_med_09, GO_APAC_med_10))

GO_APAL_med$UF <- "GO"

## MA - 2019 

MA_APAC_med_01 <- read.dbc("/Users/mikael.lemos/Downloads/MA_APAC_med/AMMA1901.dbc")
MA_APAC_med_02 <- read.dbc("/Users/mikael.lemos/Downloads/MA_APAC_med/AMMA1902.dbc")
MA_APAC_med_03 <- read.dbc("/Users/mikael.lemos/Downloads/MA_APAC_med/AMMA1903.dbc")
MA_APAC_med_04 <- read.dbc("/Users/mikael.lemos/Downloads/MA_APAC_med/AMMA1904.dbc")
MA_APAC_med_05 <- read.dbc("/Users/mikael.lemos/Downloads/MA_APAC_med/AMMA1905.dbc")
MA_APAC_med_06 <- read.dbc("/Users/mikael.lemos/Downloads/MA_APAC_med/AMMA1906.dbc")
MA_APAC_med_07 <- read.dbc("/Users/mikael.lemos/Downloads/MA_APAC_med/AMMA1907.dbc")
MA_APAC_med_08 <- read.dbc("/Users/mikael.lemos/Downloads/MA_APAC_med/AMMA1908.dbc")
MA_APAC_med_09 <- read.dbc("/Users/mikael.lemos/Downloads/MA_APAC_med/AMMA1909.dbc")
MA_APAC_med_10 <- read.dbc("/Users/mikael.lemos/Downloads/MA_APAC_med/AMMA1910.dbc")

MA_APAL_med <- do.call("rbind", list(MA_APAC_med_01, MA_APAC_med_02, MA_APAC_med_03, MA_APAC_med_04, MA_APAC_med_05,MA_APAC_med_06, MA_APAC_med_07, MA_APAC_med_08, MA_APAC_med_09, MA_APAC_med_10))

MA_APAL_med$UF <- "MA"

## MG - 2019 

MG_APAC_med_01 <- read.dbc("/Users/mikael.lemos/Downloads/MG_APAC_med/AMMG1901.dbc")
MG_APAC_med_02 <- read.dbc("/Users/mikael.lemos/Downloads/MG_APAC_med/AMMG1902.dbc")
MG_APAC_med_03 <- read.dbc("/Users/mikael.lemos/Downloads/MG_APAC_med/AMMG1903.dbc")
MG_APAC_med_04 <- read.dbc("/Users/mikael.lemos/Downloads/MG_APAC_med/AMMG1904.dbc")
MG_APAC_med_05 <- read.dbc("/Users/mikael.lemos/Downloads/MG_APAC_med/AMMG1905.dbc")
MG_APAC_med_06 <- read.dbc("/Users/mikael.lemos/Downloads/MG_APAC_med/AMMG1906.dbc")
MG_APAC_med_07 <- read.dbc("/Users/mikael.lemos/Downloads/MG_APAC_med/AMMG1907.dbc")
MG_APAC_med_08 <- read.dbc("/Users/mikael.lemos/Downloads/MG_APAC_med/AMMG1908.dbc")
MG_APAC_med_09 <- read.dbc("/Users/mikael.lemos/Downloads/MG_APAC_med/AMMG1909.dbc")
MG_APAC_med_10 <- read.dbc("/Users/mikael.lemos/Downloads/MG_APAC_med/AMMG1910.dbc")


MG_APAL_med <- do.call("rbind", list(MG_APAC_med_01, MG_APAC_med_02, MG_APAC_med_03, MG_APAC_med_04, MG_APAC_med_05,MG_APAC_med_06, MG_APAC_med_07, MG_APAC_med_08, MG_APAC_med_09, MG_APAC_med_10))

MG_APAL_med$UF <- "MG" 

## MS - 2019 

MS_APAC_med_01 <- read.dbc("/Users/mikael.lemos/Downloads/MS_APAC_med/AMMS1901.dbc")
MS_APAC_med_02 <- read.dbc("/Users/mikael.lemos/Downloads/MS_APAC_med/AMMS1902.dbc")
MS_APAC_med_03 <- read.dbc("/Users/mikael.lemos/Downloads/MS_APAC_med/AMMS1903.dbc")
MS_APAC_med_04 <- read.dbc("/Users/mikael.lemos/Downloads/MS_APAC_med/AMMS1904.dbc")
MS_APAC_med_05 <- read.dbc("/Users/mikael.lemos/Downloads/MS_APAC_med/AMMS1905.dbc")
MS_APAC_med_06 <- read.dbc("/Users/mikael.lemos/Downloads/MS_APAC_med/AMMS1906.dbc")
MS_APAC_med_07 <- read.dbc("/Users/mikael.lemos/Downloads/MS_APAC_med/AMMS1907.dbc")
MS_APAC_med_08  <- read.dbc("/Users/mikael.lemos/Downloads/MS_APAC_med/AMMS1908.dbc")
MS_APAC_med_09  <- read.dbc("/Users/mikael.lemos/Downloads/MS_APAC_med/AMMS1909.dbc")
MS_APAC_med_10  <- read.dbc("/Users/mikael.lemos/Downloads/MS_APAC_med/AMMS1910.dbc")

MS_APAL_med <- do.call("rbind", list(MS_APAC_med_01, MS_APAC_med_02, MS_APAC_med_03, MS_APAC_med_04, MS_APAC_med_05,MS_APAC_med_06, MS_APAC_med_07, MS_APAC_med_08, MS_APAC_med_09, MS_APAC_med_10))

MS_APAL_med$UF <- "MS"

## MT - 2019 

MT_APAC_med_01 <- read.dbc("/Users/mikael.lemos/Downloads/MT_APAC_med/AMMT1901.dbc")
MT_APAC_med_02 <- read.dbc("/Users/mikael.lemos/Downloads/MT_APAC_med/AMMT1902.dbc")
MT_APAC_med_03 <- read.dbc("/Users/mikael.lemos/Downloads/MT_APAC_med/AMMT1903.dbc")
MT_APAC_med_04 <- read.dbc("/Users/mikael.lemos/Downloads/MT_APAC_med/AMMT1904.dbc")
MT_APAC_med_05 <- read.dbc("/Users/mikael.lemos/Downloads/MT_APAC_med/AMMT1905.dbc")
MT_APAC_med_06 <- read.dbc("/Users/mikael.lemos/Downloads/MT_APAC_med/AMMT1906.dbc")
MT_APAC_med_07 <- read.dbc("/Users/mikael.lemos/Downloads/MT_APAC_med/AMMT1907.dbc")
MT_APAC_med_08 <- read.dbc("/Users/mikael.lemos/Downloads/MT_APAC_med/AMMT1908.dbc")
MT_APAC_med_09 <- read.dbc("/Users/mikael.lemos/Downloads/MT_APAC_med/AMMT1909.dbc")
MT_APAC_med_10 <- read.dbc("/Users/mikael.lemos/Downloads/MT_APAC_med/AMMT1910.dbc")


MT_APAL_med <- do.call("rbind", list(MT_APAC_med_01, MT_APAC_med_02, MT_APAC_med_03, MT_APAC_med_04, MT_APAC_med_05,MT_APAC_med_06, MT_APAC_med_07, MT_APAC_med_08, MT_APAC_med_09, MT_APAC_med_10))

MT_APAL_med$UF <- "MT"

## PA - 2019 

PA_APAC_med_01 <- read.dbc("/Users/mikael.lemos/Downloads/PA_APAC_med/AMPA1901.dbc")
PA_APAC_med_02 <- read.dbc("/Users/mikael.lemos/Downloads/PA_APAC_med/AMPA1902.dbc")
PA_APAC_med_03 <- read.dbc("/Users/mikael.lemos/Downloads/PA_APAC_med/AMPA1903.dbc")
PA_APAC_med_05 <- read.dbc("/Users/mikael.lemos/Downloads/PA_APAC_med/AMPA1905.dbc")
PA_APAC_med_06 <- read.dbc("/Users/mikael.lemos/Downloads/PA_APAC_med/AMPA1906.dbc")
PA_APAC_med_07 <- read.dbc("/Users/mikael.lemos/Downloads/PA_APAC_med/AMPA1907.dbc")
PA_APAC_med_08 <-read.dbc("/Users/mikael.lemos/Downloads/PA_APAC_med/AMPA1908.dbc")
PA_APAC_med_09 <-read.dbc("/Users/mikael.lemos/Downloads/PA_APAC_med/AMPA1909.dbc")
PA_APAC_med_10 <-read.dbc("/Users/mikael.lemos/Downloads/PA_APAC_med/AMPA1910.dbc")

PA_APAL_med <- do.call("rbind", list(PA_APAC_med_01, PA_APAC_med_02, PA_APAC_med_03, PA_APAC_med_05,PA_APAC_med_06, PA_APAC_med_07, PA_APAC_med_08, PA_APAC_med_09, PA_APAC_med_10))

PA_APAL_med$UF <- "PA"

## PB - 2019 

PB_APAC_med_01 <- read.dbc("/Users/mikael.lemos/Downloads/PB_APAC_med/AMPB1901.dbc")
PB_APAC_med_02 <- read.dbc("/Users/mikael.lemos/Downloads/PB_APAC_med/AMPB1902.dbc")
PB_APAC_med_03 <- read.dbc("/Users/mikael.lemos/Downloads/PB_APAC_med/AMPB1903.dbc")
PB_APAC_med_04 <- read.dbc("/Users/mikael.lemos/Downloads/PB_APAC_med/AMPB1904.dbc")
PB_APAC_med_05 <- read.dbc("/Users/mikael.lemos/Downloads/PB_APAC_med/AMPB1905.dbc")
PB_APAC_med_06 <- read.dbc("/Users/mikael.lemos/Downloads/PB_APAC_med/AMPB1906.dbc")
PB_APAC_med_07 <- read.dbc("/Users/mikael.lemos/Downloads/PB_APAC_med/AMPB1907.dbc")
PB_APAC_med_08 <- read.dbc("/Users/mikael.lemos/Downloads/PB_APAC_med/AMPB1908.dbc")
PB_APAC_med_09 <- read.dbc("/Users/mikael.lemos/Downloads/PB_APAC_med/AMPB1909.dbc")
PB_APAC_med_10 <- read.dbc("/Users/mikael.lemos/Downloads/PB_APAC_med/AMPB1910.dbc")

PB_APAL_med <- do.call("rbind", list(PB_APAC_med_01, PB_APAC_med_02, PB_APAC_med_03, PB_APAC_med_04, PB_APAC_med_05,PB_APAC_med_06, PB_APAC_med_07, PB_APAC_med_08, PB_APAC_med_09, PB_APAC_med_10))

PB_APAL_med$UF <- "PB"

## PE - 2019 

PE_APAC_med_01 <- read.dbc("/Users/mikael.lemos/Downloads/PE_APAC_med/AMPE1901.dbc")
PE_APAC_med_02 <- read.dbc("/Users/mikael.lemos/Downloads/PE_APAC_med/AMPE1902.dbc")
PE_APAC_med_03 <- read.dbc("/Users/mikael.lemos/Downloads/PE_APAC_med/AMPE1903.dbc")
PE_APAC_med_04 <- read.dbc("/Users/mikael.lemos/Downloads/PE_APAC_med/AMPE1904.dbc")
PE_APAC_med_05 <- read.dbc("/Users/mikael.lemos/Downloads/PE_APAC_med/AMPE1905.dbc")
PE_APAC_med_06 <- read.dbc("/Users/mikael.lemos/Downloads/PE_APAC_med/AMPE1906.dbc")
PE_APAC_med_07 <- read.dbc("/Users/mikael.lemos/Downloads/PE_APAC_med/AMPE1907.dbc")
PE_APAC_med_08 <- read.dbc("/Users/mikael.lemos/Downloads/PE_APAC_med/AMPE1908.dbc")
PE_APAC_med_09 <- read.dbc("/Users/mikael.lemos/Downloads/PE_APAC_med/AMPE1909.dbc")
PE_APAC_med_10 <- read.dbc("/Users/mikael.lemos/Downloads/PE_APAC_med/AMPE1910.dbc")

PE_APAL_med <- do.call("rbind", list(PE_APAC_med_01, PE_APAC_med_02, PE_APAC_med_03, PE_APAC_med_04, PE_APAC_med_05,PE_APAC_med_06, PE_APAC_med_07, PE_APAC_med_09, PE_APAC_med_10))

PE_APAL_med$UF <- "PE"

## PI - 2019 

PI_APAC_med_01 <- read.dbc("/Users/mikael.lemos/Downloads/PI_APAC_med/AMPI1901.dbc")
PI_APAC_med_02 <- read.dbc("/Users/mikael.lemos/Downloads/PI_APAC_med/AMPI1902.dbc")
PI_APAC_med_03 <- read.dbc("/Users/mikael.lemos/Downloads/PI_APAC_med/AMPI1903.dbc")
PI_APAC_med_04 <- read.dbc("/Users/mikael.lemos/Downloads/PI_APAC_med/AMPI1904.dbc")
PI_APAC_med_05 <- read.dbc("/Users/mikael.lemos/Downloads/PI_APAC_med/AMPI1905.dbc")
PI_APAC_med_06 <- read.dbc("/Users/mikael.lemos/Downloads/PI_APAC_med/AMPI1906.dbc")
PI_APAC_med_07 <- read.dbc("/Users/mikael.lemos/Downloads/PI_APAC_med/AMPI1907.dbc")
PI_APAC_med_08  <- read.dbc("/Users/mikael.lemos/Downloads/PI_APAC_med/AMPI1908.dbc")
PI_APAC_med_09  <- read.dbc("/Users/mikael.lemos/Downloads/PI_APAC_med/AMPI1909.dbc")
PI_APAC_med_10  <- read.dbc("/Users/mikael.lemos/Downloads/PI_APAC_med/AMPI1910.dbc")


PI_APAL_med <- do.call("rbind", list(PI_APAC_med_01, PI_APAC_med_02, PI_APAC_med_03, PI_APAC_med_04, PI_APAC_med_05,PI_APAC_med_06, PI_APAC_med_07, PI_APAC_med_08, PI_APAC_med_09, PI_APAC_med_10))

PI_APAL_med$UF <- "PI"

## PR - 2019 

PR_APAC_med_01 <- read.dbc("/Users/mikael.lemos/Downloads/PR_APAC_med/AMPR1901.dbc")
PR_APAC_med_02 <- read.dbc("/Users/mikael.lemos/Downloads/PR_APAC_med/AMPR1902.dbc")
PR_APAC_med_03 <- read.dbc("/Users/mikael.lemos/Downloads/PR_APAC_med/AMPR1903.dbc")
PR_APAC_med_04 <- read.dbc("/Users/mikael.lemos/Downloads/PR_APAC_med/AMPR1904.dbc")
PR_APAC_med_05 <- read.dbc("/Users/mikael.lemos/Downloads/PR_APAC_med/AMPR1905.dbc")
PR_APAC_med_06 <- read.dbc("/Users/mikael.lemos/Downloads/PR_APAC_med/AMPR1906.dbc")
PR_APAC_med_07 <- read.dbc("/Users/mikael.lemos/Downloads/PR_APAC_med/AMPR1907.dbc")
PR_APAC_med_08 <- read.dbc("/Users/mikael.lemos/Downloads/PR_APAC_med/AMPR1908.dbc")
PR_APAC_med_09 <- read.dbc("/Users/mikael.lemos/Downloads/PR_APAC_med/AMPR1909.dbc")
PR_APAC_med_10 <- read.dbc("/Users/mikael.lemos/Downloads/PR_APAC_med/AMPR1910.dbc")


PR_APAL_med <- do.call("rbind", list(PR_APAC_med_01, PR_APAC_med_02, PR_APAC_med_03, PR_APAC_med_04, PR_APAC_med_05,PR_APAC_med_06, PR_APAC_med_07, PR_APAC_med_08, PR_APAC_med_09, PR_APAC_med_10 ))

PR_APAL_med$UF <- "PR"

## RJ - 2019 

RJ_APAC_med_01 <- read.dbc("/Users/mikael.lemos/Downloads/RJ_APAC_med/AMRJ1901.dbc")
RJ_APAC_med_02 <- read.dbc("/Users/mikael.lemos/Downloads/RJ_APAC_med/AMRJ1902.dbc")
RJ_APAC_med_03 <- read.dbc("/Users/mikael.lemos/Downloads/RJ_APAC_med/AMRJ1903.dbc")
RJ_APAC_med_04 <- read.dbc("/Users/mikael.lemos/Downloads/RJ_APAC_med/AMRJ1904.dbc")
RJ_APAC_med_05 <- read.dbc("/Users/mikael.lemos/Downloads/RJ_APAC_med/AMRJ1905.dbc")
RJ_APAC_med_06 <- read.dbc("/Users/mikael.lemos/Downloads/RJ_APAC_med/AMRJ1906.dbc")
RJ_APAC_med_07 <- read.dbc("/Users/mikael.lemos/Downloads/RJ_APAC_med/AMRJ1907.dbc")
RJ_APAC_med_08 <- read.dbc("/Users/mikael.lemos/Downloads/RJ_APAC_med/AMRJ1908.dbc")
RJ_APAC_med_09 <- read.dbc("/Users/mikael.lemos/Downloads/RJ_APAC_med/AMRJ1909.dbc")
RJ_APAC_med_10 <- read.dbc("/Users/mikael.lemos/Downloads/RJ_APAC_med/AMRJ1910.dbc")

RJ_APAL_med <- do.call("rbind", list(RJ_APAC_med_01, RJ_APAC_med_02, RJ_APAC_med_03, RJ_APAC_med_04, RJ_APAC_med_05,RJ_APAC_med_06, RJ_APAC_med_07, RJ_APAC_med_08,RJ_APAC_med_09, RJ_APAC_med_10 ))

RJ_APAL_med$UF <- "RJ"

## RN - 2019 

RN_APAC_med_01 <- read.dbc("/Users/mikael.lemos/Downloads/RN_APAC_med/AMRN1901.dbc")
RN_APAC_med_02 <- read.dbc("/Users/mikael.lemos/Downloads/RN_APAC_med/AMRN1902.dbc")
RN_APAC_med_03 <- read.dbc("/Users/mikael.lemos/Downloads/RN_APAC_med/AMRN1903.dbc")
RN_APAC_med_04 <- read.dbc("/Users/mikael.lemos/Downloads/RN_APAC_med/AMRN1904.dbc")
RN_APAC_med_05 <- read.dbc("/Users/mikael.lemos/Downloads/RN_APAC_med/AMRN1905.dbc")
RN_APAC_med_06 <- read.dbc("/Users/mikael.lemos/Downloads/RN_APAC_med/AMRN1906.dbc")
RN_APAC_med_07 <- read.dbc("/Users/mikael.lemos/Downloads/RN_APAC_med/AMRN1907.dbc")
RN_APAC_med_08 <- read.dbc("/Users/mikael.lemos/Downloads/RN_APAC_med/AMRN1908.dbc")
RN_APAC_med_09 <- read.dbc("/Users/mikael.lemos/Downloads/RN_APAC_med/AMRN1909.dbc")
RN_APAC_med_10 <- read.dbc("/Users/mikael.lemos/Downloads/RN_APAC_med/AMRN1910.dbc")

RN_APAL_med <- do.call("rbind", list(RN_APAC_med_01, RN_APAC_med_02, RN_APAC_med_03, RN_APAC_med_04, RN_APAC_med_05,RN_APAC_med_06, RN_APAC_med_07, RN_APAC_med_08, RN_APAC_med_09, RN_APAC_med_10))

RN_APAL_med$UF <- "RN"

## RO - 2019 

RO_APAC_med_01 <- read.dbc("/Users/mikael.lemos/Downloads/RO_APAC_med/AMRO1901.dbc")
RO_APAC_med_02 <- read.dbc("/Users/mikael.lemos/Downloads/RO_APAC_med/AMRO1902.dbc")
RO_APAC_med_03 <- read.dbc("/Users/mikael.lemos/Downloads/RO_APAC_med/AMRO1903.dbc")
RO_APAC_med_04 <- read.dbc("/Users/mikael.lemos/Downloads/RO_APAC_med/AMRO1904.dbc")
RO_APAC_med_05 <- read.dbc("/Users/mikael.lemos/Downloads/RO_APAC_med/AMRO1905.dbc")
RO_APAC_med_06 <- read.dbc("/Users/mikael.lemos/Downloads/RO_APAC_med/AMRO1906.dbc")
RO_APAC_med_07 <- read.dbc("/Users/mikael.lemos/Downloads/RO_APAC_med/AMRO1907.dbc")
RO_APAC_med_08 <- read.dbc("/Users/mikael.lemos/Downloads/RO_APAC_med/AMRO1908.dbc")
RO_APAC_med_09 <- read.dbc("/Users/mikael.lemos/Downloads/RO_APAC_med/AMRO1909.dbc")
RO_APAC_med_10 <- read.dbc("/Users/mikael.lemos/Downloads/RO_APAC_med/AMRO1910.dbc")

RO_APAL_med <- do.call("rbind", list(RO_APAC_med_01, RO_APAC_med_02, RO_APAC_med_03, RO_APAC_med_04, RO_APAC_med_05,RO_APAC_med_06, RO_APAC_med_07, RO_APAC_med_08, RO_APAC_med_10))

RO_APAL_med$UF <- "RO"

## RR - 2019 

RR_APAC_med_01 <- read.dbc("/Users/mikael.lemos/Downloads/RR_APAC_med/AMRR1901.dbc")
RR_APAC_med_02 <- read.dbc("/Users/mikael.lemos/Downloads/RR_APAC_med/AMRR1902.dbc")
RR_APAC_med_03 <- read.dbc("/Users/mikael.lemos/Downloads/RR_APAC_med/AMRR1903.dbc")
RR_APAC_med_04 <- read.dbc("/Users/mikael.lemos/Downloads/RR_APAC_med/AMRR1904.dbc")
RR_APAC_med_05 <- read.dbc("/Users/mikael.lemos/Downloads/RR_APAC_med/AMRR1905.dbc")
RR_APAC_med_06 <- read.dbc("/Users/mikael.lemos/Downloads/RR_APAC_med/AMRR1906.dbc")
RR_APAC_med_07 <- read.dbc("/Users/mikael.lemos/Downloads/RR_APAC_med/AMRR1907.dbc")
RR_APAC_med_08 <- read.dbc("/Users/mikael.lemos/Downloads/RR_APAC_med/AMRR1908.dbc")
RR_APAC_med_09 <- read.dbc("/Users/mikael.lemos/Downloads/RR_APAC_med/AMRR1909.dbc")
RR_APAC_med_10 <- read.dbc("/Users/mikael.lemos/Downloads/RR_APAC_med/AMRR1910.dbc")

RR_APAL_med <- do.call("rbind", list(RR_APAC_med_01, RR_APAC_med_02, RR_APAC_med_03, RR_APAC_med_04, RR_APAC_med_05,RR_APAC_med_06, RR_APAC_med_07, RR_APAC_med_08, RR_APAC_med_10 ))

RR_APAL_med$UF <- "RR"

## RS - 2019

RS_APAC_med_01 <- read.dbc("/Users/mikael.lemos/Downloads/RS_APAC_med/AMRS1901.dbc")
RS_APAC_med_02 <- read.dbc("/Users/mikael.lemos/Downloads/RS_APAC_med/AMRS1902.dbc")
RS_APAC_med_03 <- read.dbc("/Users/mikael.lemos/Downloads/RS_APAC_med/AMRS1903.dbc")
RS_APAC_med_04 <- read.dbc("/Users/mikael.lemos/Downloads/RS_APAC_med/AMRS1904.dbc")
RS_APAC_med_05 <- read.dbc("/Users/mikael.lemos/Downloads/RS_APAC_med/AMRS1905.dbc")
RS_APAC_med_06 <- read.dbc("/Users/mikael.lemos/Downloads/RS_APAC_med/AMRS1906.dbc")
RS_APAC_med_07 <- read.dbc("/Users/mikael.lemos/Downloads/RS_APAC_med/AMRS1907.dbc")
RS_APAC_med_08 <- read.dbc("/Users/mikael.lemos/Downloads/RS_APAC_med/AMRS1908.dbc")
RS_APAC_med_09 <- read.dbc("/Users/mikael.lemos/Downloads/RS_APAC_med/AMRS1909.dbc")
RS_APAC_med_10 <- read.dbc("/Users/mikael.lemos/Downloads/RS_APAC_med/AMRS1910.dbc")


RS_APAL_med <- do.call("rbind", list(RS_APAC_med_01, RS_APAC_med_02, RS_APAC_med_03, RS_APAC_med_04, RS_APAC_med_05,RS_APAC_med_06, RS_APAC_med_07, RS_APAC_med_08, RS_APAC_med_09, RS_APAC_med_10))

RS_APAL_med$UF <- "RS"

## SC - 2019 

SC_APAC_med_01 <- read.dbc("/Users/mikael.lemos/Downloads/SC_APAC_med/AMSC1901.dbc")
SC_APAC_med_02 <- read.dbc("/Users/mikael.lemos/Downloads/SC_APAC_med/AMSC1902.dbc")
SC_APAC_med_03 <- read.dbc("/Users/mikael.lemos/Downloads/SC_APAC_med/AMSC1903.dbc")
SC_APAC_med_04 <- read.dbc("/Users/mikael.lemos/Downloads/SC_APAC_med/AMSC1904.dbc")
SC_APAC_med_05 <- read.dbc("/Users/mikael.lemos/Downloads/SC_APAC_med/AMSC1905.dbc")
SC_APAC_med_06 <- read.dbc("/Users/mikael.lemos/Downloads/SC_APAC_med/AMSC1906.dbc")
SC_APAC_med_07 <- read.dbc("/Users/mikael.lemos/Downloads/SC_APAC_med/AMSC1907.dbc")
SC_APAC_med_08 <- read.dbc("/Users/mikael.lemos/Downloads/SC_APAC_med/AMSC1908.dbc")
SC_APAC_med_09 <- read.dbc("/Users/mikael.lemos/Downloads/SC_APAC_med/AMSC1909.dbc")
SC_APAC_med_10 <- read.dbc("/Users/mikael.lemos/Downloads/SC_APAC_med/AMSC1910.dbc")

SC_APAL_med <- do.call("rbind", list(SC_APAC_med_01, SC_APAC_med_02, SC_APAC_med_03, SC_APAC_med_04, SC_APAC_med_05,SC_APAC_med_06, SC_APAC_med_07, SC_APAC_med_08,SC_APAC_med_09, SC_APAC_med_10 ))

SC_APAL_med$UF <- "SC"

## SE - 2019 

SE_APAC_med_01 <- read.dbc("/Users/mikael.lemos/Downloads/SE_APAC_med/AMSE1901.dbc")
SE_APAC_med_02 <- read.dbc("/Users/mikael.lemos/Downloads/SE_APAC_med/AMSE1902.dbc")
SE_APAC_med_03 <- read.dbc("/Users/mikael.lemos/Downloads/SE_APAC_med/AMSE1903.dbc")
SE_APAC_med_04 <- read.dbc("/Users/mikael.lemos/Downloads/SE_APAC_med/AMSE1904.dbc")
SE_APAC_med_05 <- read.dbc("/Users/mikael.lemos/Downloads/SE_APAC_med/AMSE1905.dbc")
SE_APAC_med_06 <- read.dbc("/Users/mikael.lemos/Downloads/SE_APAC_med/AMSE1906.dbc")
SE_APAC_med_08 <- read.dbc("/Users/mikael.lemos/Downloads/SE_APAC_med/AMSE1908.dbc")
SE_APAC_med_09 <- read.dbc("/Users/mikael.lemos/Downloads/SE_APAC_med/AMSE1909.dbc")
SE_APAC_med_10 <- read.dbc("/Users/mikael.lemos/Downloads/SE_APAC_med/AMSE1910.dbc")

SE_APAL_med <- do.call("rbind", list(SE_APAC_med_01, SE_APAC_med_02, SE_APAC_med_03, SE_APAC_med_04, SE_APAC_med_05,SE_APAC_med_06, SE_APAC_med_08, SE_APAC_med_09, SE_APAC_med_10))

SE_APAL_med$UF <- "SE"

## SP - 2019 

SP_APAC_med_01 <- read.dbc("/Users/mikael.lemos/Downloads/SP_APAC_med/AMSP1901.dbc")
SP_APAC_med_02 <- read.dbc("/Users/mikael.lemos/Downloads/SP_APAC_med/AMSP1902.dbc")
SP_APAC_med_03 <- read.dbc("/Users/mikael.lemos/Downloads/SP_APAC_med/AMSP1903.dbc")
SP_APAC_med_04 <- read.dbc("/Users/mikael.lemos/Downloads/SP_APAC_med/AMSP1904.dbc")
SP_APAC_med_05 <- read.dbc("/Users/mikael.lemos/Downloads/SP_APAC_med/AMSP1905.dbc")
SP_APAC_med_06 <- read.dbc("/Users/mikael.lemos/Downloads/SP_APAC_med/AMSP1906.dbc")
SP_APAC_med_07 <- read.dbc("/Users/mikael.lemos/Downloads/SP_APAC_med/AMSP1907.dbc")
SP_APAC_med_08 <- read.dbc("/Users/mikael.lemos/Downloads/SP_APAC_med/AMSP1908.dbc")
SP_APAC_med_09 <- read.dbc("/Users/mikael.lemos/Downloads/SP_APAC_med/AMSP1909.dbc")
SP_APAC_med_10 <- read.dbc("/Users/mikael.lemos/Downloads/SP_APAC_med/AMSP1910.dbc")

SP_APAL_med <- do.call("rbind", list(SP_APAC_med_01, SP_APAC_med_02, SP_APAC_med_03, SP_APAC_med_04, SP_APAC_med_05,SP_APAC_med_06, SP_APAC_med_07, SP_APAC_med_08, SP_APAC_med_09, SP_APAC_med_10))

SP_APAL_med$UF <- "SP"

## TO - 2019 

TO_APAC_med_01 <- read.dbc("/Users/mikael.lemos/Downloads/TO_APAC_med/AMTO1901.dbc")
TO_APAC_med_02 <- read.dbc("/Users/mikael.lemos/Downloads/TO_APAC_med/AMTO1902.dbc")
TO_APAC_med_03 <- read.dbc("/Users/mikael.lemos/Downloads/TO_APAC_med/AMTO1903.dbc")
TO_APAC_med_04 <- read.dbc("/Users/mikael.lemos/Downloads/TO_APAC_med/AMTO1904.dbc")
TO_APAC_med_05 <- read.dbc("/Users/mikael.lemos/Downloads/TO_APAC_med/AMTO1905.dbc")
TO_APAC_med_06 <- read.dbc("/Users/mikael.lemos/Downloads/TO_APAC_med/AMTO1906.dbc")
TO_APAC_med_07 <- read.dbc("/Users/mikael.lemos/Downloads/TO_APAC_med/AMTO1907.dbc")
TO_APAC_med_08 <- read.dbc("/Users/mikael.lemos/Downloads/TO_APAC_med/AMTO1908.dbc")
TO_APAC_med_09 <- read.dbc("/Users/mikael.lemos/Downloads/TO_APAC_med/AMTO1909.dbc")
TO_APAC_med_10 <- read.dbc("/Users/mikael.lemos/Downloads/TO_APAC_med/AMTO1910.dbc")

TO_APAL_med <- do.call("rbind", list(TO_APAC_med_01, TO_APAC_med_02, TO_APAC_med_03, TO_APAC_med_04, TO_APAC_med_05,TO_APAC_med_06, TO_APAC_med_07, TO_APAC_med_08, TO_APAC_med_09, TO_APAC_med_10))

TO_APAL_med$UF <- "TO"

BR_APAC_med <- do.call("rbind", list(AC_APAC_med, AL_APAL_med, AP_APAL_med, AM_APAL_med, BA_APAL_med, CE_APAL_med, DF_APAL_med, ES_APAL_med, GO_APAL_med, MA_APAL_med, MG_APAL_med, MS_APAL_med, MT_APAL_med, PA_APAL_med, PB_APAL_med, PE_APAL_med, PI_APAL_med, PR_APAL_med, PR_APAL_med, RJ_APAL_med, RN_APAL_med, RO_APAL_med, RR_APAL_med, RS_APAL_med, SC_APAL_med, SE_APAL_med, SP_APAL_med, TO_APAL_med))


##### RIBAVIRINA

BR_APAC_med_hepc_RIBAVIRINA_2019 <- filter(BR_APAC_med,  AP_PRIPAL=="0604450010"  )

BR_APAC_med_hepc_RIBAVIRINA_2019$tratamento <- "RIBAVIRINA"


##### TELAPREVIR

BR_APAC_med_hepc_TELAPREVIR_2019 <- filter(BR_APAC_med,  AP_PRIPAL=="0604640013"  )

BR_APAC_med_hepc_TELAPREVIR_2019$tratamento <- "TELAPREVIR"


#### BOCEPREVIR

BR_APAC_med_hepc_BOCEPREVIR_2019 <- filter(BR_APAC_med,  AP_PRIPAL=="0604640021"  )

BR_APAC_med_hepc_BOCEPREVIR_2019$tratamento <- "BOCEPREVIR"

#### SOFOSBUVIR

BR_APAC_med_hepc_SOFOSBUVIR_2019 <- filter(BR_APAC_med,  AP_PRIPAL=="0604760019"  )

BR_APAC_med_hepc_SOFOSBUVIR_2019$tratamento <- "SOFOSBUVIR"

#### DACLATASVIR

BR_APAC_med_hepc_DACLATASVIR_2019 <- filter(BR_APAC_med,  AP_PRIPAL=="0604760027" | AP_PRIPAL=="0604760035" )

BR_APAC_med_hepc_DACLATASVIR_2019$tratamento <- "DACLATASVIR"

#### SIMEPREVIR

BR_APAC_med_hepc_SIMEPREVIR_2019 <- filter(BR_APAC_med,  AP_PRIPAL=="0604640030" )
BR_APAC_med_hepc_SIMEPREVIR_2019$tratamento <- "SIMEPREVIR"

#### OMBITASVIR - 12,5 MG / VERUPREVIR 75 MG/ RITONAVIR 50 MG + DASABUVIR 250 MG

BR_APAC_med_hepc_OVRD_2019 <- filter(BR_APAC_med,  AP_PRIPAL=="0604760043" )
BR_APAC_med_hepc_OVRD_2019$tratamento <- "OVRD"


BR_APAC_trat_2019 <- do.call("rbind", list(BR_APAC_med_hepc_DACLATASVIR_2019, BR_APAC_med_hepc_OVRD_2019, BR_APAC_med_hepc_RIBAVIRINA_2019, BR_APAC_med_hepc_SIMEPREVIR_2019, BR_APAC_med_hepc_SOFOSBUVIR_2019))
                                           
BR_APAC_trat_2019_un <- distinct(BR_APAC_trat_2019, AP_CNSPCN , .keep_all = TRUE)

BR_APAC_trat_2019_un2 <- distinct(BR_APAC_trat_2019 , .keep_all = TRUE)


str(BR_APAC_trat_2019)


BR_APAC_trat_2015_un <- read.csv("/Users/mikael.lemos/Desktop/Demandas/shiny_vigilancia/dados_vig_tratamento_DAA/total_trat__por_ano_2015_un.csv")

BR_APAC_trat_2016_un <- read.csv("/Users/mikael.lemos/Desktop/Demandas/shiny_vigilancia/dados_vig_tratamento_DAA/total_trat__por_ano_2016_un.csv")

BR_APAC_trat_2017_un <- read.csv("/Users/mikael.lemos/Desktop/Demandas/shiny_vigilancia/dados_vig_tratamento_DAA/total_trat__por_ano_2017_un.csv")

BR_APAC_trat_2018_un <- read.csv("/Users/mikael.lemos/Desktop/Demandas/shiny_vigilancia/dados_vig_tratamento_DAA/total_trat__por_ano_2018_un.csv")

BR_APAC_trat_2019_un2 <- read.csv("/Users/mikael.lemos/Desktop/Demandas/shiny_vigilancia/dados_vig_tratamento_DAA/total_trat__por_ano_2019_un.csv")


BR_apac_trat_2015_2018 <-  do.call("rbind", list(BR_APAC_trat_2015_un, BR_APAC_trat_2016_un, BR_APAC_trat_2017_un, BR_APAC_trat_2018_un ))

BR_APAC_trat_2019$ano <- substr(BR_APAC_trat_2019$AP_CMP  ,1,4)
 
BR_APAC_trat_2019_iniciado <- anti_join(BR_APAC_trat_2019, BR_apac_trat_2015_2018, by="AP_CNSPCN")

BR_APAC_trat_2019_iniciado_un <- anti_join(BR_APAC_trat_2019_un, BR_apac_trat_2015_2018, by="AP_CNSPCN")

BR_apac_trat_2015_2018 <- select(BR_apac_trat_2015_2018, -X)

BR_apac_trat_2015_2018 <- select(BR_apac_trat_2015_2018, AP_MVM, AP_CONDIC, AP_GESTAO, AP_CODUNI, AP_AUTORIZ, AP_CMP, AP_PRIPAL, AP_VL_AP, AP_UFMUN, AP_TPUPS, AP_TIPPRE, AP_MN_IND, AP_CNPJCPF, AP_CNPJMNT, AP_CNSPCN, AP_COIDADE, AP_NUIDADE, AP_SEXO, AP_RACACOR, AP_RACACOR, AP_MUNPCN, AP_UFNACIO, AP_CEPPCN , AP_UFDIF, AP_MNDIF, AP_DTINIC, AP_DTFIM, AP_TPATEN, AP_TPAPAC, AP_MOTSAI,AP_OBITO, AP_ENCERR, AP_PERMAN, AP_ALTA, AP_TRANSF, AP_DTOCOR, AP_CODEMI, AP_CATEND, AP_APACANT, AP_UNISOL, AP_DTSOLIC, AP_DTAUT,AP_CIDCAS, AP_CIDPRI, AP_CIDSEC, AP_ETNIA, AM_PESO,AM_ALTURA,AM_TRANSPL, AM_QTDTRAN, AM_GESTANT, AP_NATJUR  , UF, tratamento = tratamentoCID, ano   )
             
colnames(BR_apac_trat_2015_2018)

colnames(BR_APAC_trat_2019)

BR_APAC_trat_2019$AP_CMP <- as.character(BR_APAC_trat_2019$AP_CMP)

BR_APAC_trat_2019_CMP_09_10 <- filter(BR_APAC_trat_2019, AP_CMP == "201909" | AP_CMP == "201910")

BR_APAC_trat_2019_un2 <- select(BR_APAC_trat_2019_un2, -X)

BR_APAC_trat_2019_CMP_09_10_un <- distinct(BR_APAC_trat_2019_CMP_09_10 ,AP_CNSPCN, .keep_all = TRUE)

BR_apac_trat_2015_2018 <-  do.call("rbind", list(BR_APAC_trat_2015_un, BR_APAC_trat_2016_un, BR_APAC_trat_2017_un, BR_APAC_trat_2018_un ))

BR_APAC_trat_2019_CMP_09_10_un_iniciado <-  anti_join(BR_APAC_trat_2019_CMP_09_10_un, BR_apac_trat_2015_2018, by="AP_CNSPCN")

BR_apac_trat_2019_unico_iniciado <-  do.call("rbind", list(BR_APAC_trat_2019_un2,   BR_APAC_trat_2019_CMP_09_10_un_iniciado ))

BR_APAC_trat_2019_un2 <- select(BR_APAC_trat_2019_un2, AP_MVM, AP_CONDIC, AP_GESTAO, AP_CODUNI, AP_AUTORIZ, AP_CMP, AP_PRIPAL, AP_VL_AP, AP_UFMUN, AP_TPUPS, AP_TIPPRE, AP_MN_IND, AP_CNPJCPF, AP_CNPJMNT, AP_CNSPCN, AP_COIDADE, AP_NUIDADE, AP_SEXO, AP_RACACOR, AP_RACACOR, AP_MUNPCN, AP_UFNACIO, AP_CEPPCN , AP_UFDIF, AP_MNDIF, AP_DTINIC, AP_DTFIM, AP_TPATEN, AP_TPAPAC, AP_MOTSAI,AP_OBITO, AP_ENCERR, AP_PERMAN, AP_ALTA, AP_TRANSF, AP_DTOCOR, AP_CODEMI, AP_CATEND, AP_APACANT, AP_UNISOL, AP_DTSOLIC, AP_DTAUT,AP_CIDCAS, AP_CIDPRI, AP_CIDSEC, AP_ETNIA, AM_PESO,AM_ALTURA,AM_TRANSPL, AM_QTDTRAN, AM_GESTANT, AP_NATJUR  , UF, tratamento = tratamentoCID, ano   )





BR_APAC_trat_2019_un <- write.dbf(BR_APAC_trat_2019_un, "/Users/mikael.lemos/Desktop/Demandas/BR_APAC_trat_2019_un.dbf")
  

write.dbf(BR_APAC_trat_2019_CID_un, "/Users/mikael.lemos/Desktop/Demandas/BR_APAC_trat_2019_CID_un.dbf")
write.dbf(BR_APAC_trat_2019_CID_antijoin, "/Users/mikael.lemos/Desktop/Demandas/BR_APAC_trat_2019_CID_iniciados.dbf")


BR_apac_trat_2019_un_iniciado <- write.dbf(BR_APAC_trat_2019_un, "/Users/mikael.lemos/Desktop/Demandas/BR_APAC_trat_2019_un.dbf")

  
  
BR_APAC_trat_2019_CID <- filter(BR_APAC_med, AP_CIDPRI == "B182" | AP_CIDPRI == "B171" )

BR_APAC_trat_2019_CID$ano <- substr(BR_APAC_trat_2019_CID$AP_CMP  ,1,4)




BR_APAC_trat_2019_CID_un <- distinct(BR_APAC_trat_2019_CID,  AP_CNSPCN, .keep_all = TRUE )

BR_APAC_trat_2019_CID_antijoin <- anti_join(BR_APAC_trat_2019_CID_un, BR_apac_trat_2015_2018, by="AP_CNSPCN")

BR_APAC_trat_2019_CID_antijoin_un <- distinct(BR_APAC_trat_2019_CID_antijoin,  AP_CNSPCN, .keep_all = TRUE )


plot_hepc_2019 <- matrix(c(32094,"tratamentos 2019", 30487, "trtamentos iniciados em 2019"),ncol=2,byrow=TRUE)

colnames(plot_hepc_2019) <- c("Freq","tipo")

plot_hepc_2019 <- as.data.frame(plot_hepc_2019)

plotinidist2019 <- matrix(c(32094,"tratamentos 2019", 30487, "trtamentos iniciados em 2019"),ncol=2,byrow=TRUE)
colnames(plotinidist2019) <- c("Freq","tipo")
plotinidist2019 <- as.data.frame(plotinidist2019)




write.csv(plot_hepc_2019, file = '/app/app_vigi/plot_hepc_2019.csv' )

total_ini_2019 <- matrix(c( "total", 30487),ncol=2,byrow=TRUE)

colnames(total_ini_2019) <- c("Var1","Freq")

total_ini_2019 <- as.data.frame(total_ini_2019)

### PLOT

ggplot(data=plot_hepc_2019, aes(x=tipo, y=Freq)) +
  geom_bar(stat="identity", fill="steelblue", width=0.5) +
  geom_text(aes(label=Freq), vjust=-0.3, size=3.5)+
  theme_minimal()  + labs(x="Tratamento", y = "Frequ�ncia") + labs(fill = "Tratamento") + ggtitle("Tratamentos 2019 (B182 e B171)")

#### Plot UF

plot_uf_2019 <- table(BR_APAC_trat_2019_CID_antijoin$UF)

plot_uf_2019 <- as.data.frame(plot_uf_2019)

ggplot(data=plot_uf_2019_total, aes(x=reorder(Var1, -Freq), y=Freq)) +
  geom_bar(stat="identity", fill="steelblue") +
  geom_text(aes(label=Freq), vjust=-0.3, size=3.5)+
  theme_minimal()  + labs(x="UF", y = "Frequência") + ggtitle("Tratamentos 2019 (B171 e B182 por UF) - Tratamentos iniciados")

plot_uf_2019_total <-  do.call("rbind", list(plot_uf_2019, total_ini_2019  ))

plot_uf_2019_total$Freq <- as.integer(plot_uf_2019_total$Freq)


write.csv(plot_uf_2019_total, "/app/app_vigi/meduf2019.csv")
#### Plot UF

plot_uf_2019 <- table(BR_APAC_trat_2019_CID_un$UF)

plot_uf_2019 <- as.data.frame(plot_uf_2019)

ggplot(data=plot_uf_2019, aes(x=reorder(Var1, -Freq), y=Freq)) +
  geom_bar(stat="identity", fill="steelblue") +
  geom_text(aes(label=Freq), vjust=-0.3, size=3.5)+
  theme_minimal()  + labs(x="UF", y = "Frequência") + ggtitle("Tratamentos 2019 (B182 e B171 por UF) - Tratamentos iniciados")


##### Hep B

BR_APAC_trat_2019_hepb_CID <- filter(BR_APAC_med, AP_CIDPRI == "B180" | AP_CIDPRI == "B181" )

BR_APAC_trat_2019_hepb_CID$ano <- substr(BR_APAC_trat_2019_hepb_CID$AP_CMP  ,1,4)

BR_APAC_trat_2019_hepb_CID_un <- distinct(BR_APAC_trat_2019_hepb_CID,  AP_CNSPCN, .keep_all = TRUE )

plot_uf_2019b <- table(BR_APAC_trat_2019_hepb_CID_un$UF)

plot_uf_2019b <- as.data.frame(plot_uf_2019b)   

total_b_2019 <- matrix(c( "total", 36453),ncol=2,byrow=TRUE)

colnames(total_b_2019) <- c("Var1","Freq")

total_b_2019 <- as.data.frame(total_b_2019)

plot_uf_2019b <-  do.call("rbind", list(plot_uf_2019b, total_b_2019  ))

plot_uf_2019b$Freq <- as.integer(plot_uf_2019b$Freq)

                      
write.csv(plot_uf_2019b, "/app/app_vigi/medufb2019.csv")

