import sys
import os

print(sys.argv[1])
directory = sys.argv[1]

video_titles=[]

for filename in os.listdir(directory):
    if filename.endswith(".mkv") or filename.endswith(".mp4") or filename.endswith(".webm"): 
        file_path = os.path.join(directory, filename)

        
        # print()
        video_title = os.path.splitext(filename)[0].split(" codec=")[0]
        if video_title in video_titles:
            continue
        video_titles.append(video_title)
        print(video_title)

        for file in os.listdir(directory):
            if file.startswith(video_title):
                # print("hi")
                # print(os.path.join(directory, file))
                print(file)



        continue
    else:
        continue

print(len(video_titles))