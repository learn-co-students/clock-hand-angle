require 'byebug'

def clock_angle(time)
    # code your solution here
    hours, minutes = time.split(":").map {|i| i.to_f}
    minute_degrees = 360 / 60
    hour_hand_degrees_per_hour = 360 / 12 # 30 degrees per hour (1/12 of full circle)
    hour_hand_degrees_per_minute = hour_hand_degrees_per_hour / 60.0 # .5 degrees per minute
    minute_hand_position = minutes * minute_degrees
    hour_hand_position =  hours * hour_hand_degrees_per_hour + minutes * hour_hand_degrees_per_minute
    angle = (hour_hand_position - minute_hand_position).abs 
    if angle > 180
        angle = 360 - angle
    end
    angle
end
