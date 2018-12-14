from _install_ import INSTALL
import wd
import argparse
import targets
import sys

a = argparse.ArgumentParser()
if len(sys.argv[1:]) == 3:
    a.add_argument("--PATH", "-p", help = "Complete path of latest release of chromedrive.exe in quotes")
a.add_argument("--COUNT", "-c", help = "Number of targets that you want to feed in")
a.add_argument("--MSG", "-m", help = "Your message in quotes")

install = INSTALL()
install.Install()

input("CONTINUE-")

args = a.parse_args()

if len(sys.argv[1:]) == 2:
    targets.PATH = "/home/saket/Downloads/chromedriver"
else:
    targets.PATH = args.PATH

targets.it += args.MSG
for i in range(int(args.COUNT)):
    targets.this.append(input("Target: "))

wd.drive()
