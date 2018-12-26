#!/usr/bin/env python3

import sys

def main():
    N=int(input())
    t=x=y=0
    pointList=[]
    for i in range(N):
        pointList.append([ int(i) for i in input().strip().split(' ') ])
    for t_n,x_n,y_n in pointList:
        t_diff=t_n-t
        dist=abs(x-x_n)+abs(y-y_n)
        if t_diff < dist or (t_diff-dist) % 2:
            print("No")
            sys.exit(0)
        t,x,y=[t_n,x_n,y_n]
    print("Yes")

if __name__ == '__main__':
    main()
