#The following script initialize ROS Webcam parameter and make
#rosparam set /ev3dev/usb_cam/image_width 160
#rosparam set /ev3dev/usb_cam/image_height 120
#rosparam set /ev3dev/usb_cam/framerate 10


#intialize docker network
ip link add mymacvlan link eth0 type macvlan mode bridge
ip addr add 192.168.1.3/24 dev mymacvlan
ifconfig mymacvlan up
ip route add default via 192.168.1.1 dev mymacvlan #add gateway ip

#Start robot docker
gnome-terminal -e "sudo docker-compose up"


echo "wait for 5s"
sleep 1s
echo "wait for 4s"
sleep 1s
echo "wait for 3s"
sleep 1s
echo "wait for 2s"
sleep 1s
echo "wait for 1s"
sleep 1s
echo "Running for Keyboard node"
#initialize ROS control node & network between Master and EV3
#gnome-terminal -e "sudo docker exec -it robot bash -ci 'rosrun teleop_twist_keyboard teleop_twist_keyboard.py'"
