import sys
import os

if sys.platform == "win32" or sys.platform == "win64":
    home_path = os.path.join(os.environ["HOMEDRIVE"], os.environ["HOMEPATH"])
    print(f"Checking {home_path} for .tudat/resource existence.")
else:
    home_path = os.environ["HOME"]
    print(f"Checking {home_path} for .tudat/resource existence.")
print("Home Path: ", home_path)
print("OS detected: ", sys.platform)
assert os.path.exists(os.path.join(home_path, ".tudat/resource")) == True
