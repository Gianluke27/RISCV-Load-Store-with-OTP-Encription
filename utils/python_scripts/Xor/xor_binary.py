import sys

def xor_file(file_plain, file_otp):
    max_len = max(len(file_plain), len(file_otp))

    # equal dimension
    file_plain = file_plain.ljust(max_len, b'\x00')
    file_otp = file_otp.ljust(max_len, b'\x00')
    
    return bytes(a ^ b for a, b in zip(file_plain, file_otp))

def read_bin_file(file):
    try:
        with open(file, "rb") as f:
            return f.read()
    
    except IOError:
        print ("Could not read file:", file)
        sys.exit()

def write_bin_file(file, data):
    with open(file, 'wb') as f:
        f.write(data)

def main(tcm_f, otp_f, enc_f):
    tcm_data = read_bin_file('tcm.bin')
    otp_data = read_bin_file('otp.bin')

    xor_data = xor_file(tcm_data, otp_data)
    write_bin_file('enc.bin', xor_data)

    print("XOR operation between "+tcm_f+" and "+otp_f+" completed")
    print("Result saved in "+enc_f)

if __name__ == "__main__":
    tcm_name = 'tcm.bin'
    otp_name = 'otp.bin'
    enc_name = 'enc.bin'
    main(tcm_name, otp_name, enc_name)