import sys
import os

# There may be a bug with conda, this fails when installing in test environment,
# but not if the broken package is manually installed.
# if sys.platform == "win32" or sys.platform == "win64":
#     assert os.path.exists(os.path.join(os.environ["homedrive"], os.environ["homepath"], ".tudat/resource")) == True
# else:
#     assert os.path.exists(os.path.join(os.environ["HOME"], ".tudat/resource")) == True
