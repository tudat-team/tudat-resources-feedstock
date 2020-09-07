import sys
import os

if sys.platform == "win32" or sys.platform == "win64":
    home_path = os.path.join(os.environ["HOMEDRIVE"], os.environ["HOMEPATH"])
    print(f"Checking {home_path} for .tudat/resource existence.")
    assert os.path.exists(os.path.join(os.environ["HOMEDRIVE"], os.environ["HOMEPATH"], ".tudat/resource")) == True
else:
    home_path = os.environ["HOME"]
    print(f"Checking {home_path} for .tudat/resource existence.")
    assert os.path.exists(os.path.join(os.environ["HOME"], ".tudat/resource")) == True
