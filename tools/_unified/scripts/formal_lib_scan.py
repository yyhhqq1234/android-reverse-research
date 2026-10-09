import struct,zlib,marshal
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
print(f'header magic NXPK={magic:08x} n={n} u1={u1} eem={eem} hm={hm} eoff={eoff} size={len(d)} tail={len(d)-(eoff+28*n)}')
tail=d[eoff+28*n:]
print('tail len',len(tail),'head',tail[:64].hex())
print('tail ascii',repr(tail[:400]))
print('tail end',repr(tail[-400:]))
ok=0; fail=[]; nxs=0; pyc=0
magics=set(); names=[]
for idx in range(n):
  e=d[eoff+idx*28:eoff+(idx+1)*28]
  id_,off,psz,rsz,c1,c2,fl=struct.unpack('<7I',e)
  raw=d[off:off+psz]
  try:
    dec=zlib.decompress(ex(raw,psz,rsz,c2))
  except Exception as exx:
    fail.append((idx,hex(id_),str(exx))); continue
  ok+=1
  if dec[:4]==b'NXS3':
    nxs+=1
  magics.add(dec[:4].hex())
  if len(dec)>=16:
    try:
      co=marshal.loads(dec[16:])
      if type(co).__name__=='code':
        pyc+=1
        if len(names)<20:
          try: names.append(co.co_filename)
          except: pass
    except: pass
print(f'decrypt+zlib ok={ok}/{n} fail={len(fail)} NXS3={nxs} pyc_code={pyc} magics={magics}')
print('sample filenames',names)
if fail: print(fail[:5])
offs=[]
ends=[]
for i in range(n):
  ee=d[eoff+i*28:eoff+(i+1)*28]
  a,b,c,dd,e1,e2,f1=struct.unpack('<7I',ee)
  offs.append(b); ends.append(b+c)
print('min off',min(offs),'max end',max(ends),'eoff',eoff)
