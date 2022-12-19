import allel
import sys
import os
import argparse
import numcodecs
parser = argparse.ArgumentParser(
                    prog = 'vcf_to_zarr',
                    description = 'takes vcf file and converts to zarr')

parser.add_argument("--vcf", help="input vcf")
parser.add_argument("--zarr", help="output zarr")
parser.add_argument("--overwrite", help="overwrite existing zarr?")

args = parser.parse_args()
print(args.vcf, args.zarr)

allel.vcf_to_zarr(args.vcf, args.zarr, fields='*', overwrite=args.overwrite, log=sys.stdout, alt_number = 8, compressor=numcodecs.Blosc(cname='zstd', clevel=1, shuffle=False))
