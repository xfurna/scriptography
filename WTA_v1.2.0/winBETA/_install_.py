import subprocess as sb
import targets

def Install():
    sb.call(targets.cmnds[0], shell = True)
    
