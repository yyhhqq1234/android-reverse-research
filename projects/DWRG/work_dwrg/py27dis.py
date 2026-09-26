import struct, sys
sys.path.insert(0, '.')
import opcode27 as op

data = None
pos = 0
def rbyte():
    global pos
    b = data[pos]
    pos += 1
    return b
def rlong():
    global pos
    v = struct.unpack_from('<i', data, pos)[0]
    pos += 4
    return v
def rstr():
    n = rlong()
    global pos
    s = data[pos:pos + n]
    pos += n
    return s

def robj(depth=0):
    t = rbyte()
    c = chr(t)
    if c == '0' or c == 'N': return None
    if c == 'S': return 'StopIteration'
    if c == 'F': return False
    if c == 'T': return True
    if c == 'i': return rlong()
    if c == 't':
        s = rstr()
        refs.append(s)
        return s
    if c == 's':
        return rstr()
    if c == 'u':
        return rstr().decode('utf8', 'replace')
    if c == 'R':
        return refs[rlong()]
    if c == '(':
        n = rlong()
        return tuple(robj(depth + 1) for _ in range(n))
    if c == 'c':
        ac, nl, ss, fl = rlong(), rlong(), rlong(), rlong()
        code = robj()
        consts = robj()
        names = robj()
        varnames = robj()
        freevars = robj()
        cellvars = robj()
        filename = robj()
        name = robj()
        fln = rlong()
        lnotab = robj()
        return dict(code=code, consts=consts, names=names, varnames=varnames,
                    filename=filename, name=name, firstlineno=fln)
    raise ValueError('type %r at %d' % (c, pos))

def dis(code, consts, names, varnames, filename, name):
    print('== %s (%s) ==' % (name.decode() if isinstance(name, bytes) else name,
                             filename.decode() if isinstance(filename, bytes) else filename))
    n = len(code)
    i = 0
    ext = 0
    while i < n:
        o = code[i]
        on = op.opname[o]
        if o >= op.HAVE_ARGUMENT:
            arg = code[i + 1] | (code[i + 2] << 8) | ext
            ext = 0
            if o == op.EXTENDED_ARG:
                ext = arg << 16
                print(' %4d %-18s %d' % (i, on, arg))
                i += 3
                continue
            show = str(arg)
            if on in ('LOAD_CONST',):
                v = consts[arg]
                show = '%d (%r)' % (arg, v[:40] if isinstance(v, bytes) else v)
            elif on in ('LOAD_NAME', 'STORE_NAME', 'LOAD_GLOBAL', 'LOAD_ATTR', 'STORE_ATTR', 'IMPORT_NAME', 'IMPORT_FROM'):
                show = '%d (%s)' % (arg, names[arg])
            elif on in ('LOAD_FAST', 'STORE_FAST'):
                show = '%d (%s)' % (arg, varnames[arg])
            print(' %4d %-18s %s' % (i, on, show))
            i += 3
        else:
            print(' %4d %-18s' % (i, on))
            i += 1

def walk(o):
    if isinstance(o, dict):
        consts = o['consts']
        names = tuple(x.decode() if isinstance(x, bytes) else x for x in o['names'])
        varnames = tuple(x.decode() if isinstance(x, bytes) else x for x in o['varnames'])
        dis(o['code'], o['consts'], names, varnames, o['filename'], o['name'])
        for c in consts:
            walk(c)

import pathlib
refs = []
blobs = list(pathlib.Path('npk2_out').glob('*.marshal.bin'))
data = blobs[0].read_bytes()
pos = 0
walk(robj())
