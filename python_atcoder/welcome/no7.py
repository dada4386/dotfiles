#!/usr/bin/env python3

def main():
    count=now=0
    sumList = [0,0]
    N = int(input())
    for i in sorted([ int(i) for i in input().strip().split(' ')], reverse=True):
        sumList[now]=sumList[now]+i
        now=(now+1)%2
    print(abs(sumList[0]-sumList[1]))

if __name__ == '__main__':
    main()
