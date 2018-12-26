#!/usr/bin/env python3

def main():
    N=int(input())
    print(len(list(set([ int(input()) for i in range(N) ]))))
    
if __name__ == '__main__':
    main()
