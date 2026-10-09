#!/usr/bin/env python3
# t3_lib589_verify.py — O3 Lib589对照 (只读APK, 全量589 3.11验证 + 索引)
# 输入: APK内 assets/packages/python3/Lib.npk (eem256/hm0新代系)
# 输出: lib589_verify.txt + lib589_index.json (idx/filename/codelen/names/first/last/sha16)
import struct, zlib, marshal, json, hashlib, pathlib, zipfile, collections
APK = r"D:\APK-Reverse\projects\DWRG\第五人格（官服正式版）.apk"
OUT = pathlib.Path(r"D:\APK-Reverse\projects\DWRG\work_dwrg\formal_core_script")
def ex(b,psz,rsz,c2):
    off,ln=(0,psz) if psz<0x81 else ((rsz>>1)%(psz-0x80), ((c2<<1)&0xFFFFFFFF)%0x60+0x20)
    key=(rsz^c2)&0xFF; bb=bytearray(b)
    for i in range(off,min(off+ln,psz)): bb[i]^=key; key=(key+1)&0xFF
    return bytes(bb)
def main():
    OUT.mkdir(parents=True,exist_ok=True)
    z=zipfile.ZipFile(APK); d=z.read("assets/packages/python3/Lib.npk")
    magic,n,u1,eem,hm,eoff=struct.unpack('<6I',d[:24])
    assert magic==0x4B50584E and n==589 and eem==256 and hm==0, f"Lib header drift magic={magic:08x} n={n} eem={eem} hm={hm}"
    idx=[]; hist=collections.Counter(); bad=[]
    for i in range(n):
        e=d[eoff+i*28:eoff+(i+1)*28]; id_,off,psz,rsz,c1,c2,fl=struct.unpack('<7I',e)
        dec=zlib.decompress(ex(d[off:off+psz],psz,rsz,c2))
        if dec[:4]!=bytes.fromhex('a70d0d0a'):
            bad.append(i); continue
        co=marshal.loads(dec[16:]); code=co.co_code
        for k in range(0,len(code),2): hist[code[k]]+=1
        first=tuple(code[:2]) if len(code)>=2 else ()
        last=tuple(code[-2:]) if len(code)>=2 else ()
        idx.append({"i":i,"file":co.co_filename,"codelen":len(code),"names":len(co.co_names),
            "first":list(first),"last":list(last),"sha16":hashlib.sha256(dec).hexdigest()[:16]})
    L=[f"Lib.npk n={n} eem={eem} hm={hm} eoff={eoff} size={len(d)}",
       f"pyc_magic a70d0d0a(3.11): {n-len(bad)}/{n} {'OK' if not bad else 'BAD:'+str(bad[:10])}",
       f"hist_top10={hist.most_common(10)}",
       f"first00={(sum(1 for r in idx if r['first']==[0,0]))}/{len(idx)} last30={(sum(1 for r in idx if r['last']==[3,0]))}/{len(idx)}",
       f"files_head={[r['file'] for r in idx[:3]]} files_tail={[r['file'] for r in idx[-2:]]}"]
    # 与T3抽样50 / T4全量对照一致性
    L.append(f"cross_T3: first0_50抽样==50/50 -> 全量first00={sum(1 for r in idx if r['first']==[0,0])}/589 {'CONSISTENT' if sum(1 for r in idx if r['first']==[0,0])==589 else 'DRIFT'}")
    L.append(f"cross_T4: hist0={hist.get(0,0)} hist151={hist.get(151,0)} (T4:121314/8559) {'CONSISTENT' if hist.get(0,0)==121314 else 'DRIFT'}")
    (OUT/"lib589_verify.txt").write_text("\n".join(L)+"\n",encoding="utf-8")
    (OUT/"lib589_index.json").write_text(json.dumps({"n":n,"eem":eem,"hm":hm,"entries":idx},ensure_ascii=False),encoding="utf-8")
    print("\n".join(L)); print(f"wrote lib589_index.json {len(idx)}/589")
    assert not bad, f"bad pyc {bad[:5]}"
    assert len(idx)==589
if __name__=="__main__": main()
