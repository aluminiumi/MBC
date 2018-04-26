#!/usr/bin/python
#Vasilis Vloutis

import os.path
import sys

def main(argv):
    args = argv[1:]
   
    csvfile = open("movie_data.csv", "r")
    linenum = 0
    previd = -1;

    program = csvfile.read().split("\n")
    print("USE mbc;");

    while linenum < len(program)-1:
        line = program[linenum].strip()
        inst = line.split(",")
        if inst[0] == "":
            #blank line read, do nothing
            break
        else:
           if inst[0] == previd:
             print("duplicate found: "+previd)
           else:
             previd = inst[0]

        linenum+=1

    csvfile.close()

if __name__ == "__main__":
    main(sys.argv)
