#!/bin/bash -x

in_to_ft=0.0833333
ft_to_mtr=0.3048
mtr_to_acre=0.000247105

var_ft=`echo 42*$in_to_ft | bc -l`
echo "42 inches in feet: "$var_ft

rect_plot_ft=$((60*40))
echo "Area of rectangular plot of 60*40 feet: "$rect_plot_ft
rect_plot_mtr=`echo $rect_plot_ft*$ft_to_mtr | bc -l`
echo "Aea of rectangular plot in meter: "$rect_plot_mtr

total_area_mtr=`echo 25*$rect_plot_mtr | bc -l`
echo "Total area of 25 plots in meters: "$total_area_mtr
total_area_acre=`echo $total_area_mtr*$mtr_to_acre | bc -l`
echo "Total area of 25 plots in acres: "$total_area_acre
