name = "peddireddy hari vardhan reddy"

name1  = name.split(" ")
print(name1)

name2  = name.upper()
print(name2)

name3 = name.lower()
print(name3)

name4=name.replace("peddireddy","annampappu")
print(name4)

import re

text = "The quick brown fox"
pattern = r"quick"

match = re.match(pattern, text)
if match:
    print("Match found:", match.group())
else:
    print("No match")