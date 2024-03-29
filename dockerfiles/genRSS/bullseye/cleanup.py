#!/usr/bin/python3

import os, time, shutil, sys

days_ago = time.time() - (30 * 86400)
root = sys.argv[1]

for i in os.listdir(root):
    path = os.path.join(root, i)

    if os.stat(path).st_mtime <= days_ago:
        if os.path.isfile(path):
            try:
                os.remove(path)

            except:
                print("Could not remove file:", i)

        else:
            try:
                shutil.rmtree(path)

            except:
                print("Could not remove directory:", i)