function [ angle ] = generate_error_matrix(roll, pitch, yaw)

angle = [];

for i = 1:length(yaw)
    R  = eul2rotm([yaw(i), roll(i), pitch(i)]);  
    error = skew(R);
    
    angle = [angle, norm([error(1,2) , error(1,3), error(2,3)])]; 
end

end
