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
        # print(video_title)

        best_eqv_size=0
        best_codec=""
        sizes={}

        for file in os.listdir(directory):
            if file.startswith(video_title):
                size = os.path.getsize(os.path.join(directory, file))/10**6
                codec = file.split(" codec=")[1].split(".")[0]                

                quality = {
                    "avc1":1,
                    "vp9":1/0.72,
                    "av01":1/0.46
                }                
                eqv_size = size*quality[codec]
                sizes[codec]=size

                # print("{0:4s}: {1:6.1f},{2:6.1f}".format(codec,size,eqv_size))

                if eqv_size>best_eqv_size:
                    best_eqv_size = eqv_size
                    best_codec = codec                    

        vp9_avc_ratio = sizes["vp9"]/sizes["avc1"]

        # print("vp9/avc: {:.0%}".format(vp9_avc_ratio))
        # print(best_codec)
        # print("")
        if vp9_avc_ratio > 0.5 and vp9_avc_ratio < 1:
            print(video_title)
            print("vp9/avc: {:.0%}".format(vp9_avc_ratio))
            print(best_codec)
            print("")
        


        continue
    else:
        continue

print(len(video_titles))