import struct,zlib
def ex(data,psz,rsz,c2):
  v3=rsz; v4=c2
  if psz<0x81: off,ln=0,psz
  else:
    off=(v3>>1)%(psz-0x80); ln=((v4<<1)&0xFFFFFFFF)%0x60+0x20
  key=(v3^v4)&0xFF
  b=bytearray(data)
  for i in range(off,min(off+ln,psz)):
    b[i]^=key; key=(key+1)&0xFF
  return bytes(b)
# guide
p=r'D:\APK-Reverse\projects\DWRG\第五人格（官服正式版）\assets\script.npk'
with open(p,'rb') as f: d=f.read()
magic,n,u1,eem,hm,eoff=struct.unpack('<6I',d[:24])
print(f'guide NXPK n={n} eem={eem} hm={hm} eoff={eoff} size={len(d)}',flush=True)
for idx in range(n):
  e=d[eoff+idx*28:eoff+(idx+1)*28]
  id_,off,psz,rsz,c1,c2,fl=struct.unpack('<7I',e)
  dec=zlib.decompress(ex(d[off:off+psz],psz,rsz,c2))
  print(f'e{idx} id={id_:08x} dec_len={rsz} magic={dec[:8].hex()} ascii={dec[:8]}',flush=True)
  if dec[:4]==b'NXS3':
    up,pa,zi=struct.unpack('<3I',dec[8:20])
    print(f'  NXS3 inner unpacked={up} packed={pa} zipped={zi} keylen={(len(dec)-20)-zi if len(dec)>20 else -1} total={len(dec)}',flush=True)
    print(f'  keyhead={dec[20:28].hex()} datahead={dec[20+128:20+136].hex() if len(dec)>=156 else "short"}',flush=True)
# tail NXFN of Lib
p2=r'D:\APK-Reverse\projects\DWRG\第五人格（官服正式版）\assets\packages\python3\Lib.npk'
with open(p2,'rb') as f: d2=f.read()
magic,n,u1,eem,hm,eoff=struct.unpack('<6I',d2[:24])
tail=d2[eoff+28*n:]
print(f'Lib tail magic={tail[:4]} len={len(tail)}',flush=True)
if tail[:4]==b'NXFN':
  a,b,c=struct.unpack('<3I',tail[4:16])
  print(f' NXFN a={a} b={b} c={c} hex={tail[4:16].hex()}',flush=True)
  print(f' NXFN body head={tail[16:48].hex()}',flush=True)
  # try zlib decompress tail body?
  try:
    dec2=zlib.decompress(tail[16:])
    print(f' tail zlib OK len={len(dec2)} head={dec2[:128]}',flush=True)
  except Exception as exx:
    print(f' tail zlib FAIL {exx}',flush=True)
    # try SimpleCryptEx? tail has no entry meta, skip
    pass
