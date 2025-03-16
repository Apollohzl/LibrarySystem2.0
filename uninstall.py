import shutil
import os


current_dir = os.path.dirname(os.path.abspath(__file__))


specified_dir = os.path.expanduser("~") + "\\AppData\\Roaming\\Librarysystem\\"

try:
    shutil.rmtree(specified_dir)
    print(f"成功删除指定路径的文件夹: {specified_dir}")
except Exception as e:
    print(f"删除指定路径的文件夹时出错: {e}")
try:
    shutil.rmtree(current_dir)
    print(f"成功删除程序所在文件夹: {current_dir}")
except Exception as e:
    print(f"删除程序所在文件夹时出错: {e}")

