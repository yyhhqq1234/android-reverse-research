import struct,zlib,marshal,dis,collections,opcode
def ex(data,psz,rsz,c2):
  v3=rsz; v4=c2
  if psz<0x81: off,ln=0,psz
  else:
    off=(v3>>1)%(psz-0x80)
    ln=((v4<<1)&0xFFFFFFFF)%0x60+0x20
  key=(v3^v4)&0xFF
  b=bytearray(data)
  for i in range(off,min(off+ln,psz)):
    b[i]^=key; key=(key+1)&0xFF
  return bytes(b)
p=r'D:\APK-Reverse\projects\DWRG\第五人格（官服正式版）\assets\packages\python3\Lib.npk'
with open(p,'rb') as f: d=f.read()
magic,n,u1,eem,hm,eoff=struct.unpack('<6I',d[:24])
# filenames
fns=[]
for idx in range(n):
  e=d[eoff+idx*28:eoff+(idx+1)*28]
  id_,off,psz,rsz,c1,c2,fl=struct.unpack('<7I',e)
  dec=zlib.decompress(ex(d[off:off+psz],psz,rsz,c2))
  co=marshal.loads(dec[16:])
  fns.append(co.co_filename)
with open(r'D:\APK-Reverse\projects\DWRG\work_dwrg\formal_lib_files.txt','w',encoding='utf-8') as out:
  for s in sorted(set(fns)):
    out.write(s+'\n')
print(f'wrote {len(set(fns))} unique filenames')
# opcode stats: collect first-code opcode histogram for 5 samples vs 2.7 table
import pathlib
# show 3.12 current opcode map for key names (reference only, formal is 3.11)
for name in ['RESUME','RETURN_VALUE','LOAD_CONST','LOAD_FAST','STORE_FAST','CALL','BINARY_OP','COMPARE_OP','JUMP_FORWARD','POP_JUMP_IF_FALSE']:
  print(name, opcode.opmap.get(name,'MISSING'))
# dump raw bytes of e0 code for manual 3.11对照
e=d[eoff+0*28:eoff+1*28]
id_,off,psz,rsz,c1,c2,fl=struct.unpack('<7I',e)
dec=zlib.decompress(ex(d[off:off+psz],psz,rsz,c2))
co=marshal.loads(dec[16:])
print('e0 file',co.co_filename,'code len',len(co.co_code))
print('e0 code hex[0:96]',co.co_code[:96].hex())
# try dis with current interpreter (3.12) - record only first 10 instrs, may differ from 3.11 but proves standard marshal path
print('---dis e588 (tiny)---')
e=d[eoff+588*28:eoff+589*28]
id_,off,psz,rsz,c1,c2,fl=struct.unpack('<7I',e)
dec=zlib.decompress(ex(d[off:off+psz],psz,rsz,c2))
co=marshal.loads(dec[16:])
print(co.co_filename, co.co_code.hex())
dis.dis(co)
