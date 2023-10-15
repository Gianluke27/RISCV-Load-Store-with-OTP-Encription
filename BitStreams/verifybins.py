import os
import hashlib

def generate_file_hash(file_path):
    hasher = hashlib.md5()
    with open(file_path, 'rb') as f:
        while True:
            chunk = f.read(8192)
            if not chunk:
                break
            hasher.update(chunk)
    return hasher.hexdigest()

def check_duplicate_files(folder_path):
    file_hashes = {}
    duplicates_found = False
    
    for foldername, subfolders, filenames in os.walk(folder_path):
        for filename in filenames:
            file_path = os.path.join(foldername, filename)
            file_hash = generate_file_hash(file_path)
            if file_hash in file_hashes:
                print(f"Duplicate files found: '{file_path}' and '{file_hashes[file_hash]}'")
                duplicates_found = True
            else:
                file_hashes[file_hash] = file_path
    
    if not duplicates_found:
        print("All files are different.")

folder_path = 'BitstreamFiles'

check_duplicate_files(folder_path)