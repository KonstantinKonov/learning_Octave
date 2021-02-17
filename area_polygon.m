function result = area_polygon()
  points = [ 2 2; 4 10; 9 7; 11 2 ];
  line_points = vertcat( points, [points(1,1) points(1,2)] );
  
  plot( points(:,1), points(:,2), 'ro', line_points(:,1), line_points(:,2), 'b-')
  axis([ 0 12 0 12 ])
  
  sum = 0;
  for i=1:length(line_points)-1
    sum += line_points(i,1) * line_points(i+1,2) - line_points(i,2) * line_points(i+1,1);
  endfor
  
  result = 0.5 * abs(sum);
endfunction
