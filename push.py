import subprocess
import argparse
import sys
p = argparse.ArgumentParser()
if len(sys.argv) == 3:
    p.add_argument("stg", help = "specs for stage")
p.add_argument("commit_message", help = "CommitMessage <message should be in triple dual-quotes.>")
a = p.parse_args()
subprocess.call("git status", shell = True)
input()
if len(sys.argv) == 3:
    subprocess.call("git add -" + a.stg)
else:
    subprocess.call("git add .")
subprocess.call("git commit -m "  + "\"" + a.commit_message + "\"" + " && git push origin master", shell = True)
