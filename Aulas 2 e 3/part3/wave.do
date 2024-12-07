view wave 
wave clipboard store
wave create -driver freeze -pattern clock -initialvalue 0 -period 10ps -dutycycle 50 -starttime 0ps -endtime 100ps sim:/part3/Clock 
wave create -driver freeze -pattern random -initialvalue 0 -period 5ps -random_type Normal -seed 5 -starttime 0ps -endtime 100ps sim:/part3/D 
WaveCollapseAll -1
wave clipboard restore
