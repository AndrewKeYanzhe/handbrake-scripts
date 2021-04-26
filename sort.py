import sys
import os
from shutil import copyfile, move

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

        best_eqv_size=0
        best_codec=""
        sizes={}
        # video_names=[]
        video_paths=[]

        for file in os.listdir(directory):
            if file.startswith(video_title):
                video_path = os.path.join(directory, file)
                video_paths.append(video_path)
                size = os.path.getsize(video_path)/10**6
                codec = file.split(" codec=")[1].split(".")[0]                

                quality = {
                    "avc1":1,
                    "vp9":1/0.77,
                    "av01":1/0.46
                }                
                eqv_size = size*quality[codec]
                sizes[codec]=size

                print("{0:4s}: {1:6.1f},{2:6.1f}".format(codec,size,eqv_size))

                if eqv_size>best_eqv_size:
                    best_eqv_size = eqv_size
                    best_codec = codec                    

        vp9_avc_ratio = sizes["vp9"]/sizes["avc1"]
        for video_path in video_paths:
            if best_codec in video_path:
                copyfile(video_path,os.path.join(directory,'..', "Input",video_title + "." + video_path.split(".")[-1]))
            move(video_path,os.path.join(directory,'..', "Processed",video_title + "." + video_path.split(".")[-1]))

        print("vp9/avc: {:.0%}".format(vp9_avc_ratio))
        print(best_codec)

        print("")


        continue
    else:
        continue

print(len(video_titles))