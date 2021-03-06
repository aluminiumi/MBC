#!/usr/bin/python
#Vasilis Vloutis

import os.path
import sys

def main(argv):
    args = argv[1:]
   
    csvfile = open("../datasets/movie_data.csv", "r")
    linenum = 0

    program = csvfile.read().split("\n")
    print("USE mbc;");

    while linenum < len(program)-1:
        if linenum > 0:
            line = program[linenum].strip()
            inst = line.split(",")
            if inst[0] == "":
                #blank line read, do nothing
                break
            else:
                newdate = inst[1].split("/");
                print("INSERT INTO Movies (id,release_date,revenue,title,vote_average) VALUES ("+inst[0]+", \'"+newdate[0]+"\', "+inst[2]+", \'"+inst[3]+"\', "+inst[4]+");")

        linenum+=1

    csvfile.close()

if __name__ == "__main__":
    main(sys.argv)
