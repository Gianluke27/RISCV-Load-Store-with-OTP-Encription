def read_binary_file(filename):
    with open(filename, 'rb') as f:
        return f.read()

def write_binary_file(filename, data):
    with open(filename, 'wb') as f:
        f.write(data)

def xor_files(file1, file2):
    max_len = max(len(file1), len(file2))
    file1 = file1.ljust(max_len, b'\x00')
    file2 = file2.ljust(max_len, b'\x00')
    return bytes(a ^ b for a, b in zip(file1, file2))

def main():
    tcm_data = read_binary_file('tcm.bin')
    otp_ram_data = read_binary_file('otp_ram.bin')

    xor_data = xor_files(tcm_data, otp_ram_data)
    write_binary_file('enc_ram.bin', xor_data)

    print("XOR operation completed. Result saved in 'enc_ram.bin'.")

if __name__ == "__main__":
    main()
