#!/usr/bin/env python3

def main():
    count=0
    N,A,B = [ int(i) for i in input().strip().split(' ')]
    for i in range(N+1):
        if A <= sum([ int(j) for j in str(i) ]) <= B:
            count=count+i
    print(count)

if __name__ == '__main__':
    main()
