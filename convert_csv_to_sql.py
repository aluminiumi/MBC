#!/usr/bin/python
#Vasilis Vloutis

#import math
import os.path
import sys

def main(argv):
    args = argv[1:]
   
    csvfile = open("movie_data.csv", "r")
    linenum = 0

    program = csvfile.read().split("\n")
    print("USE mbc;");

    while linenum < len(program)-1:
        line = program[linenum].strip()
        #print("Entry on line "+str(linenum)+": "+line)
        inst = line.split(",")
        if inst[0] == "":
            #blank line read, do nothing
            #print("blank line read")
            break
        else:
            #print(inst[2])
            print("INSERT INTO Movies (id,release_date,revenue,title,vote_average) VALUES ("+inst[0]+", \'"+inst[1]+"\', "+inst[2]+", \'"+inst[3]+"\', "+inst[4]+");")

        linenum+=1

    csvfile.close()

if __name__ == "__main__":
    main(sys.argv)
