FROM chenrc98/vicon_px4_ros2_bridge:version1.1

RUN apt-get update && apt-get install -y vim tmux --no-install-recommends && rm -rf /var/lib/apt/lists


# make a colcon_ws
WORKDIR "/root/colcon_ws/src"

RUN echo "source /opt/ros/galactic/setup.bash" >> /root/.bashrc
RUN echo "source /root/px4_ros_com_ros2/install/setup.bash" >> /root/.bashrc
#RUN echo "source /root/colcon_ws/install/setup.bash" >> /root/.bashrc

WORKDIR "/root/colcon_ws"
