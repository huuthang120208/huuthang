import json
import os

# Chuỗi JSON
json_data = input("Nhập emu của Android manager: ")

# Chuyển chuỗi JSON thành đối tượng Python
emulators = json.loads(json_data)

# Sắp xếp danh sách emulators theo emulator_number
emulators.sort(key=lambda x: x["emulator_number"])

# Đặt đường dẫn thư mục xuất file
output_directory = "output_directory"
output_file = os.path.abspath(os.path.join(output_directory, "emulator_usernames.txt"))

# Tạo thư mục nếu chưa tồn tại
if not os.path.exists(output_directory):
    os.makedirs(output_directory)
    print(f"Directory created: {output_directory}")

# Mở tệp tin để ghi
try:
    with open(output_file, "w") as file:
        # Lấy username từ các emulator theo thứ tự và ghi vào tệp tin
        for emulator in emulators:
            file.write(emulator["username"] + "\n")
    print(f"Usernames have been written to {output_file}")
except IOError as e:
    print(f"An error occurred while writing to the file: {e}")

# Kiểm tra nội dung tệp tin sau khi ghi
try:
    with open(output_file, "r") as file:
        content = file.read()
        print("File content:")
        print(content)
except IOError as e:
    print(f"An error occurred while reading the file: {e}")
