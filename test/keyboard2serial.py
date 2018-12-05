import msvcrt
try:
    import serial
except:
    print("Please install pyserial")
    exit(1)

import _thread
import time
import six
import argparse
import math
import os
import platform
import re
import select
import signal
import socket
import string
import struct
import subprocess
import sys
import tempfile
from timeit import default_timer as timer
try:
    import readline
except:
    pass

def InitializeSerial(pipe_path, baudrate):
    global outp, inp
    tty = serial.Serial(port=pipe_path, baudrate=baudrate)
    tty.reset_input_buffer()
    inp = tty
    outp = tty
    return True

def InitializeTCP(host_port):

    ValidIpAddressRegex = re.compile("^((([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])\.){3}([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])):(\d+)$");
    ValidHostnameRegex = re.compile("^((([a-zA-Z0-9]|[a-zA-Z0-9][a-zA-Z0-9\-]*[a-zA-Z0-9])\.)*([A-Za-z0-9]|[A-Za-z0-9][A-Za-z0-9\-]*[A-Za-z0-9])):(\d+)$");

    if ValidIpAddressRegex.search(host_port) is None and \
        ValidHostnameRegex.search(host_port) is None:
        return False

    match = ValidIpAddressRegex.search(host_port) or ValidHostnameRegex.search(host_port)
    groups = match.groups()
    ser = tcp_wrapper()
    host, port = groups[0], groups[4]
    sys.stdout.write("connecting to %s:%s..." % (host, port))
    sys.stdout.flush()
    ser.connect(host, int(port))
    print("connected")

    global outp, inp
    outp = ser
    inp = ser
    return True

class tcp_wrapper:

    def __init__(self, sock=None):
        if sock is None:
            self.sock = socket.socket(
                socket.AF_INET, socket.SOCK_STREAM)
        else:
            self.sock = sock

    def connect(self, host, port):
        self.sock.connect((host, port))

    def write(self, msg):
        totalsent = 0
        MSGLEN = len(msg)
        while totalsent < MSGLEN:
            sent = self.sock.send(msg[totalsent:])
            if sent == 0:
                raise RuntimeError("socket connection broken")
            totalsent = totalsent + sent

    def flush(self): # dummy
        pass

    def read(self, MSGLEN):
        chunks = []
        bytes_recd = 0
        while bytes_recd < MSGLEN:
            chunk = self.sock.recv(min(MSGLEN - bytes_recd, 2048))
            # print 'read:...', list(map(lambda c: hex(ord(c)), chunk))
            if chunk == b'':
                raise RuntimeError("socket connection broken")
            chunks.append(chunk)
            bytes_recd = bytes_recd + len(chunk)
        return b''.join(chunks)

    def reset_input_buffer(self):
        local_input = [self.sock]
        while True:
            inputReady, o, e = select.select(local_input, [], [], 0.0)
            if len(inputReady) == 0:
                break
            for s in inputReady:
                s.recv(1)

parser = argparse.ArgumentParser(description = 'Term for mips32 expirence.')
parser.add_argument('-c', '--continued', action='store_true', help='Term will not wait for welcome if this flag is set')
parser.add_argument('-t', '--tcp', default=None, help='TCP server address:port for communication')
parser.add_argument('-s', '--serial', default=None, help='Serial port name (e.g. /dev/ttyACM0, COM3)')
parser.add_argument('-b', '--baud', default=9600, help='Serial port baudrate (9600 by default)')
args = parser.parse_args()

if args.tcp:
    if not InitializeTCP(args.tcp):
        print('Failed to establish TCP connection')
        exit(1)
    else:
        print('successfully established TCP connection')
elif args.serial:
    if not InitializeSerial(args.serial, args.baud):
        print('Failed to open serial port')
        exit(1)
    else:
        print('successfully opened serial port')
keyPressed=[False,False,False,False,False]
def sendKeyPressed():
    global keyPressed
    while True:
        time.sleep(1)
        data=0
        if keyPressed[0]:
            data+=16
        if keyPressed[1]:
            data+=8
        if keyPressed[2]:
            data+=4
        if keyPressed[3]:
            data+=2
        if keyPressed[4]:
            data+=1
        print(six.int2byte(data))
        outp.write(six.int2byte(data))
        keyPressed=[False,False,False,False,False]

try:
    _thread.start_new_thread( sendKeyPressed,())
except:
    print("Error: unable to start thread")
    exit(1)

while True:
    c = msvcrt.getch()
    # print(c)
    # print(int(c),2)
    if c==b' ':
        print("space pressed")
        keyPressed[0]=True
    elif c==b'w' or c==b'W':
        print("up pressed")
        keyPressed[1]=True
    elif c==b's' or c==b'S':
        print("down pressed")
        keyPressed[2]=True
    elif c==b'a' or c==b'A':
        print("left pressed")
        keyPressed[3]=True
    elif c==b'd' or c==b'D':
        print("right pressed")
        keyPressed[4]=True
    elif c==b'0':
        exit(0)