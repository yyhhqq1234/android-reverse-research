import struct,zlib,marshal,collections,sys
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
print('start',n,flush=True)
hist=collections.Counter()
firsts=collections.Counter()
done=0
for idx in range(min(n,50)):
  try:
    e=d[eoff+idx*28:eoff+(idx+1)*28]
    id_,off,psz,rsz,c1,c2,fl=struct.unpack('<7I',e)
    dec=zlib.decompress(ex(d[off:off+psz],psz,rsz,c2))
    co=marshal.loads(dec[16:])
    code=co.co_code
    if len(code)>=2:
      firsts[code[0]]+=1
    for i in range(0,len(code),2):
      hist[code[i]]+=1
    done+=1
    if idx%10==0:
      print(f'idx {idx} ok file={co.co_filename}',flush=True)
  except Exception as exx:
    print(f'idx {idx} FAIL {exx}',flush=True)
print('done',done,flush=True)
print('first-byte top',firsts.most_common(20),flush=True)
print('opcode-byte top',hist.most_common(30),flush=True)
