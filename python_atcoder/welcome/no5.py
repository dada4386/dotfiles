#!/usr/bin/env python3

def main():
    count=0
    inputList = [ int(input()) for i in range(4) ]
    for i in range(inputList[0]+1):
        for j in range(inputList[1]+1):
            if 0 <= (inputList[3]-(500*i+100*j))/50 <= inputList[2]:
                count=count+1
    print(count)
if __name__ == '__main__':
    main()
