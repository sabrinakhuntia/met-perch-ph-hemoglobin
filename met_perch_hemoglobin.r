library(ggplot2)
library(plotly)
library(hrbrthemes)

#data sourced from RCSB Protein Data Bank (https://www.rcsb.org)
hemo <- read.csv(file="met_perch_hemoglobin.csv", na.strings=c("", "0"), header = TRUE)

code = hemo$CODE
ph = hemo$PH
weight = hemo$WEIGHT_KDA
atom_count = hemo$ATOM_COUNT
res = hemo$RES_COUNT
chains = hemo$CHAINS
helix = hemo$PERCENT_HELIX

#weight

wt_plot <- ggplot(hemo, aes(x=ph, y=weight)) +
  geom_point(
    color="black",
    fill="#69b3a2",
    shape=22,
    alpha=0.5,
    size=6,
    stroke = 1
  ) +
  xlab("pH") +
  ylab("Weight of Structure (kDa)") +
  ggtitle("Weight vs. pH level of hemoglobin in Perca flavescens")

wt_plot

#atom count

atom_plot <- ggplot(hemo, aes(x=ph, y=atom_count)) +
  geom_point(
    color="black",
    fill="#69b3a2",
    shape=22,
    alpha=0.5,
    size=6,
    stroke = 1
  ) +
  xlab("pH") +
  ylab("Atom Count of Helical Secondary Structure") +
  ggtitle("Atom count vs. pH level of hemoglobin in Perca flavescens")

atom_plot

#residue

res_plot <- ggplot(hemo, aes(x=ph, y=res)) +
  geom_point(
    color="black",
    fill="#69b3a2",
    shape=22,
    alpha=0.5,
    size=6,
    stroke = 1
  ) +
  xlab("pH") +
  ylab("Residue Count") +
  ggtitle("Residue vs. pH level of hemoglobin in Perca flavescens")

res_plot

#chains

ch_plot <- ggplot(hemo, aes(x=ph, y=chains)) +
  geom_point(
    color="black",
    fill="#69b3a2",
    shape=22,
    alpha=0.5,
    size=6,
    stroke = 1
  ) +
  xlab("pH") +
  ylab("Number of Unique Protein Chains") +
  ggtitle("Unique protein chains vs. pH level of hemoglobin in Perca flavescens")

ch_plot

#helix

hx_plot <- ggplot(hemo, aes(x=ph, y=helix)) +
  geom_point(
    color="black",
    fill="#69b3a2",
    shape=22,
    alpha=0.5,
    size=6,
    stroke = 1
  ) +
  xlab("pH") +
  ylab("Percent of Helical Secondary Structure") +
  ggtitle("Helical secondary structure vs. pH level of hemoglobin in Perca flavescens")

hx_plot
