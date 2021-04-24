# import sys
# import os

# print(sys.argv[1].split('\\')[-1])

# original_name = sys.argv[1].split('\\')[-1]


# os.rename(original_name,"original.mp4")

# # input("Press Enter to continue...")

# os.system('cmd /c "E:\Tools\HandBrakeCLI\HandBrakeCLI.exe -i original.mp4 -o .\Output\output.mp4  -e x264 -q 18 -B 320 --width 7680 --height 4320 --encoder-preset ultrafast"')

# os.rename("original.mp4",original_name)
# # os.rename("./Output/output.mp4","./Output/"+original_name.replace(".mp4", " 8K.mp4"))
# os.rename("./Output/output.mp4","./Output/"+original_name)


import sys
import os
os.system('cmd /c "E:\Tools\HandBrakeCLI\HandBrakeCLI.exe -i "' + sys.argv[1] + '" -o .\Output\output.mp4  -e x264 -q 18 -B 320 --width 7680 --height 4320 --encoder-preset ultrafast"')

pause