from os.path import dirname, basename, isfile, join
import glob
#filelist = ["adder_8","barenco_tof_10","barenco_tof_3","barenco_tof_4","barenco_tof_5",\
#        "csla_mux_3","csum_mux_9","gf2^4_mult","gf2^5_mult","gf2^6_mult","gf2^7_mult",\
#        "gf2^8_mult","gf2^9_mult","gf2^10_mult","gf2^16_mult","gf2^32_mult","gf2^64_mult",\
filelist = [        "mod5_4","mod_mult_55","mod_red_21","qcla_adder_10","qcla_com_7","qcla_mod_7",\
        "rc_adder_6","tof_10","tof_3","tof_4","tof_5","vbe_adder_3"]
qasmfiles = ["feynmanqasms/" + f + ".qasm" for f in filelist]
#qasmfiles = glob.glob(join(dirname(__file__), "tof_*.qasm"))
#__all__ = [ basename(f)[:-3] for f in qasmfiles if isfile(f) and not f.endswith('__init__.py')]
