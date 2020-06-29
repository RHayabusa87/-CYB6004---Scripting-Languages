#!/usr/bin/python3

import random
import string
import sys
import hashlib


# hidden password hash
passwordhash = "8b7df143d91c716ecfa5fc1730022f6b421b05cedee8fd52b1fc65a96030ad52"
randstring = ""
# The password length is 4 characters long
stringlength = 4

# function to generate random 4 character string without repeating letters
def gen_randomstring():
    global randstring
    letters = string.ascii_lowercase
    randstring = '' .join(random.sample(letters, stringlength))
    randstring = randstring.rstrip()
    # hash the plain random string#!/usr/bin/python3
    randstringhash = hashlib.sha256(randstring.encode("utf-8")).hexdigest()
    return randstringhash


# Attempts to crack hash against randomly generated hashed words
def bruteforce_attack(phash):

    correcthash = None
    # check every hash to see if it matches the supplied h ash v..    lk
    while correcthash != phash:
        correcthash = gen_randomstring()
        print("\t[+] Hash for Word Loaded: %s" % correcthash)
        # if a match is foung, stop the search and print the plain password and hash
    if correcthash == phash:
        print("\t[+] Cracked Password is: \"%s\" with hash \"%s\"" % (randstring, correcthash))
        sys.exit(0)


# call the function to start the brute force password cracking
bruteforce_attack(passwordhash)


