#!/usr/bin/env python3

import sys

def main():
    N,Y = [int(i) for i in input().strip().split(' ')]
    for i in range(Y//10000 + 1):
        for j in range((Y-10000*i)//5000 + 1):
            k=(Y-i*10000-j*5000)//1000
            if i+j+k == N:
                print(i,j,k) 
                sys.exit(0)
    print(-1,-1,-1)

if __name__ == '__main__':
    main()
