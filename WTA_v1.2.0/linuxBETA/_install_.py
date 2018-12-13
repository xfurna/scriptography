import subprocess as sb
import targets

class INSTALL:
    def Install():
        sb.call(targets.cmnds[0], shell = True)
        sb.call(targets.cmnds[1], shell = True)
