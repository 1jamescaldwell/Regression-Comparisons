I am very proud of this code; it saved our team a lot of time manually remaking combinations of plots for comparisons. It uses matlab's plotbrowser feater to toggle on/off various lines within a plot.

This script is meant to quickly generate a list of plots for comparisons. The script expects to have the all_turftypes.fig plot open, with 11 artificial turf carpet types on the plot.
The script then iterates through the comparisons variable, and using matlab's plotbrowser, generates all the comparisons. It automatically saves them.
