# data/dataset-download.py
import kagglehub
import shutil
import os

dest = "/home/jovyan/work/data/edstats_data"

if os.path.exists(dest) and os.listdir(dest):
    print("Data already present, skipping download.")
else:
    cache_path = kagglehub.dataset_download("theworldbank/education-statistics")
    shutil.copytree(cache_path, dest, dirs_exist_ok=True)
    print("Data downloaded to:", dest)
