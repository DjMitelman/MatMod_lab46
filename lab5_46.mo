model lab5_46
  parameter Real a = 0.25;
  parameter Real b = 0.05;
  parameter Real c = 0.6;
  parameter Real d = 0.061;
  
  Real x(start = 13);
  Real y(start = 27);
  //стационарные значения
  //Real x(start = 0.5);
  //Real y(start = 9.8360656);
  
equation
  
  der(x) = -a*x + b*x*y;
  der(y) = c*y - d*x*y;
  
annotation(experiment(StartTime = 0, StopTime = 500, Tplerance=1e-06), Interval = 0.05);  
  
end lab5_46;
