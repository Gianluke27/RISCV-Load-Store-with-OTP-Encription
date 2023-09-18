import os

def bin_to_ascii_text(binary_file, output_file, count_filename):
    with open(binary_file, "rb") as bin_file:
        binary_data = bin_file.read()
    memory_size = (len(binary_data) + 7) // 8  # Calculate memory size in 64-bit words
    memory_lines = ""

    """
    with open(count_filename, "w") as count_file:
        hex_memory_size = format(memory_size, 'x')
        count_file.write(hex_memory_size)
    """
    
    print("Wrote",memory_size,"DW")

    for i in range(memory_size):
        word_data = binary_data[i*8:(i+1)*8]
        word_data_padded = word_data + b'\x00' * (8 - len(word_data))  # Pad with zeros if needed
        reversed_data = bytes(reversed(word_data_padded))  # Reverse the bytes for little-endian
        hex_data = "".join(f"{byte:02X}" for byte in reversed_data)
        memory_lines+=(hex_data)
        memory_lines+="\n"

    with open(output_file, "w") as text_file:
        text_file.write(memory_lines)

def bin_to_binary_text(binary_file, output_file, count_filename):
    with open(binary_file, "rb") as bin_file:
        binary_data = bin_file.read()
    memory_size = (len(binary_data) + 7) // 8  # Calculate memory size in 64-bit words
    memory_lines = ""

    with open(count_filename, "w") as count_file:
        count_file.write(str(memory_size))

    print("Wrote", memory_size, "DW")

    for i in range(memory_size):
        word_data = binary_data[i * 8: (i + 1) * 8]
        reversed_data = bytes(reversed(word_data))
        binary_str = ''.join(format(byte, '08b') for byte in reversed_data)
        memory_lines += binary_str + "\n"

    with open(output_file, "w") as text_file:
        text_file.write(memory_lines)

if __name__ == "__main__":
    
    abspath = os.path.abspath(__file__)
    dname = os.path.dirname(abspath)
    os.chdir(dname)
    os.chdir("../..") 

    print(os.listdir())
    input_folder = "c_programs/bin"  # Folder containing .bin files
    output_folder = "python_scripts/bin_2_mem/output"  # Folder to store output files
    type = "hex" #"hex" or "bin"

    os.makedirs(output_folder, exist_ok=True)
    
    for filename in os.listdir(input_folder):
        if filename.endswith(".bin"):
            if type == "hex":
                input_bin_file = os.path.join(input_folder, filename)
                output_text_file = os.path.join(output_folder, filename.replace(".bin", ".mif"))
                count_text_file = os.path.join(output_folder, filename.replace(".bin", "_count.data"))
                print("---------------------------------------------------------------------------------------------------------------------------------------------------")
                print(filename)
                bin_to_ascii_text(input_bin_file, output_text_file, count_text_file)
                print(f"Conversion complete for '{filename}': Binary file '{input_bin_file}' converted to ASCII text '{output_text_file}' and count text '{count_text_file}'.")
            if type == "bin":
                input_bin_file = os.path.join(input_folder, filename)
                output_bin_file = os.path.join(output_folder, filename.replace(".bin", ".data"))
                count_bin_file = os.path.join(output_folder, filename.replace(".bin", "_count.data"))
                print("---------------------------------------------------------------------------------------------------------------------------------------------------")
                print(filename)
                bin_to_binary_text(input_bin_file, output_bin_file, count_bin_file)
                print(f"Conversion complete for '{filename}': Binary file '{input_bin_file}' converted to binary text '{output_bin_file}' and count binary '{count_bin_file}'.")
    print("---------------------------------------------------------------------------------------------------------------------------------------------------")
    