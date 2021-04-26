import sys
import os

print(sys.argv[1])
directory = sys.argv[1]

video_names=[]

for filename in os.listdir(directory):
    if filename.endswith(".mkv") or filename.endswith(".mp4") or filename.endswith(".webm"): 
        file_path = os.path.join(directory, filename)
        
        # print()
        video_name = os.path.splitext(file_path)[0].split(" codec=")[0]
        if video_name in video_names:
            continue
        video_names.append(video_name)
        print(video_name)
        


        continue
    else:
        continue

# print(len(video_names))