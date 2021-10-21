#!/usr/bin/env python3
import sys
for arg in reversed(sys.argv[1:]):
    print(arg)

print("Hello World!")

lista = [{1:0}, {2:1}]
for d in lista:
    print(f"items in {d} are: {d.items()}")