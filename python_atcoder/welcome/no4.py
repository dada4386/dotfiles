#!/usr/bin/env python3

def main():
    flag=False
    count=0
    N = int(input())
    a = list(map(int,input().split()))
    while True:
        for i in range(0,N-1):
            flag=True if a[i] % 2 == 1 else a[i]=a[i]/2
        if flag:
            break
        else:
            count=count+1
    print(count)
    
if __name__ == '__main__':
    main()
