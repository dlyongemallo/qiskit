from os.path import dirname, basename, isfile, join
import glob
qasmfiles = glob.glob(join(dirname(__file__), "mod5_4.qasm"))
#__all__ = [ basename(f)[:-3] for f in qasmfiles if isfile(f) and not f.endswith('__init__.py')]
