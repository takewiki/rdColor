library(readxl)
takewiki_color_mapping_table_v1_0 <- read_excel("~/projects/rdColor/data/takewiki_color_mapping_table_v1.0.xlsx")
mydata <- takewiki_color_mapping_table_v1_0[is.na(takewiki_color_mapping_table_v1_0$CMYK),1:4];
View(mydata);
#str(mydata);
myColor <-tsda::CMYK(mydata)$all;
View(myColor);
library(openxlsx);
write.xlsx(myColor,'./data/myColor.xlsx');

