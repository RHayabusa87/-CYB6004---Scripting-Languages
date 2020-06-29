# NB Special
# Python Brute Forcer - SHA1
This project is to demonstrate brute-forcing with Python. There are three versions. They work the same.

Brute force hash function - It will take a SHA1 hash, and compare it to SHA1 hashes of the top 10,000 worst known user passwords, printing the correct password if found.

# Installation: 

Run "pip3 install -r requirements.txt" 
Run 
# "python3 NBspecial.py" 
for the 28 line version or 
# "python3 SHA1BruteForce3Lines.py" 
for the 3 line version. It works the same.
# "python3 SHA1BruteForce1Line.py" 
for the 1 line version. Also works the same.

To see how this works, you can look at the documented code in the NBspecial.py file.

If you get an error that reads: urllib.error.URLError: <urlopen error [SSL: CERTIFICATE_VERIFY_FAILED] certificate verify failed (_ssl.c:777)>

In your terminal, run "/Applications/Python\ 3.6/Install\ Certificates.command" This will update your certificates
