from _install_ import Install
import wd
import argparse
import targets

Install()

a = argparse.ArgumentParser()
a.add_argument("--PATH", "-p", help = "Complete path of latest release of chromedrive.exe in quotes")
a.add_argument("--COUNT", "-c", help = "Number of targets that you want to feed in")
a.add_argument("--MSG", "-m", help = "Your message in quotes")

input("CONTINUE-")

args = a.parse_args()
targets.it += args.MSG
targets.PATH = args.PATH
for i in range(int(args.COUNT)):
    targets.this.append(input("Target: "))

wd.drive()
