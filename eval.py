#!/usr/bin/env python
# encoding: utf-8

def Eval(fname):
    if (os.path.exists(fname)==False): return
    if (os.path.getsize(fname)==0): return
    f = open(fname, 'rb+')
    data = f.read(1)        # 读取文件的第一个字节8位
    f.seek(0)               # 跳转到最开头
    f.write(chr(~ord(data) & 0xFF))     # 第一个字节取反
    f.close()
