function [ angle ] = generate_error(roll_des, pitch_des, yaw_des,...
                                  roll, pitch, yaw)

angle = [];

for i = 1:length(yaw)
    R  = eul2rotm([yaw(i), roll(i), pitch(i)]);
    Rd = eul2rotm([yaw_des(i), roll_des(i), pitch_des(i)]);    
    error = skew(R * Rd');
    
    angle = [angle, norm([error(1,2) , error(1,3), error(2,3)])]; 
end

end
