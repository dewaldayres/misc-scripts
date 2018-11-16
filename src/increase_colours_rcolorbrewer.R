library(RColorBrewer)
palette_Dark2 <- colorRampPalette(brewer.pal(14, "Dark2"))

  scale_fill_manual(values = colorRampPalette(brewer.pal(8, "Dark2"))(length(unique(trans_per_month$yyyymm))))
