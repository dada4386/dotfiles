#!/usr/bin/env python3
 
import re, sys
 
def main():
    print("YES") if bool(re.match("^(dream|dreamer|eraser|erase)*$",input())) else print("NO")
    
if __name__ == '__main__':
    main()
