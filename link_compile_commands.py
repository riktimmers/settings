#! /usr/bin/python3
from rospkg import RosPack
import rospkg
import os 

def main():
    ros_pack = RosPack() 
    workspace = os.environ["WORKSPACE"]
    path = os.path.join(os.environ["HOME"], "ros_workspace")
    path = os.path.join(path, workspace)
    build_path = os.path.join(path, "build")

    for dir in os.listdir(build_path):
        if dir[0] != ".":
            try:
                build_file = os.path.join(build_path, os.path.join(dir, "compile_commands.json"))
                ros_path = os.path.join(ros_pack.get_path(dir), "compile_commands.json")
                link_command = f"ln -s {build_file} {ros_path}"
                os.system(link_command)
            except rospkg.common.ResourceNotFound:
                print(f"Package {dir} not found in local ROS workspace")
    

if __name__ == "__main__":
    main()
