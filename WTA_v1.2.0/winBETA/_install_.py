import subprocess as sb
import targets

def Install():
    for i in range(len(targets.cmnds)):
        sb.call(targets.cmnds[i], shell = True)
