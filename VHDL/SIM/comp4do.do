restart 

add wave -position end  sim:/comp_4/b_1_1
add wave -position end  sim:/comp_4/b_1_2
add wave -position end  sim:/comp_4/b_1_3
add wave -position end  sim:/comp_4/b_1_4
add wave -position end  sim:/comp_4/b_2_1
add wave -position end  sim:/comp_4/b_2_2
add wave -position end  sim:/comp_4/b_2_3
add wave -position end  sim:/comp_4/b_2_4
add wave -position end  sim:/comp_4/o_1
add wave -position end  sim:/comp_4/o_2

force b_1_1 '0' 0, '1' 5  -r 10;
force b_1_2 '0' 0, '1' 10 -r 20;
force b_1_3 '0' 0, '1' 15 -r 30;
force b_1_4 '0' 0, '1' 20 -r 40;

force b_2_1 '0' 0, '1' 10 -r 20;
force b_2_2 '0' 0, '1' 20 -r 40;
force b_2_3 '0' 0, '1' 30 -r 60;
force b_2_4 '0' 0, '1' 40 -r 80;

run 1000;