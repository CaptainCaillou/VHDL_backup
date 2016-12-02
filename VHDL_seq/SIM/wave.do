view wave 
wave clipboard store
wave create -driver freeze -pattern counter -startvalue 0 -endvalue 1 -type Range -direction Up -period 50ps -step 1 -repeat forever -starttime 0ps -endtime 1000ps sim:/bascule_d/d 
wave create -driver freeze -pattern counter -startvalue 0 -endvalue 1 -type Range -direction Up -period 125ps -step 1 -repeat forever -starttime 0ps -endtime 1000ps sim:/bascule_d/clk 
WaveCollapseAll -1
wave clipboard restore
