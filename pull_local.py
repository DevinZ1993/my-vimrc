#! /usr/bin/env python

from shutil import copyfile
import os


home_dir = os.path.expanduser("~")

file_list = [
        os.path.join(home_dir, ".bash_profile"),
        os.path.join(home_dir, ".vimrc"),
        ]

if __name__ == '__main__':
    def expose_name(file_name):
        return file_name if file_name[0] != '.' else file_name[1:]
    cur_dir = os.path.dirname(__file__)
    for src_path in file_list:
        dest_path = os.path.join(cur_dir, 
                expose_name(os.path.basename(src_path)))
        copyfile(src_path, dest_path)
        print "Copy %s to %s." % (src_path, dest_path)

