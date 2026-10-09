#!/usr/bin/env python3
# t3_guide_n4.py — G3 引导n4 NXS3新变体解 (正式版直抓, 不套T3旧2.7链)
# 输入: APK只读 zipfile.read assets/script.npk (1952B NXPK n4 eem256hm0)
# 解法: SimpleCryptEx公式复用(denpk2_npk.rs:115-136数学) + zlib, 到NXS3层止步
# 不做: denpk2_nxs.rs旧1024-bit RSA直解 (key112/e1倒挂已证伪, 硬解必错)
# 输出: guide_n4.txt + guide_n4_e*.nxs3 (outer-decrypted NXS3 blobs) + 本文件
import struct, zlib, hashlib, pathlib, zipfile
APK = r"D:\APK-Reverse\projects\DWRG\第五人格（官服正式版）.apk"
OUT = pathlib.Path(r"D:\APK-Reverse\projects\DWRG\work_dwrg\formal_core_nxs")
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
def main():
    OUT.mkdir(parents=True,exist_ok=True)
    z=zipfile.ZipFile(APK)
    raw=z.read("assets/script.npk")
    lines=[]
    lines.append(f"apk_sha? see T2 0683dd40 (readonly, not rehashed here)")
    lines.append(f"script.npk stored={len(raw)} crc={z.getinfo('assets/script.npk').CRC:08x}")
    magic,n,u1,eem,hm,eoff=struct.unpack('<6I',raw[:24])
    lines.append(f"NXPK magic={magic:08x} n={n} u1={u1} eem={eem} hm={hm} eoff={eoff} size={len(raw)}")
    assert magic==0x4B50584E and n==4 and eem==256 and hm==0, "guide header drift!"
    for idx in range(n):
        e=raw[eoff+idx*28:eoff+(idx+1)*28]
        id_,off,psz,rsz,c1,c2,fl=struct.unpack('<7I',e)
        comp=fl&0xFF; enc=(fl>>16)&0xFF
        dec=zlib.decompress(ex(raw[off:off+psz],psz,rsz,c2))
        assert dec[:4]==b'NXS3', f"e{idx} not NXS3"
        up,pa,zi=struct.unpack('<3I',dec[8:20])
        keylen=len(dec)-20-zi if len(dec)>20 else -1
        # e1倒挂判定: total-20 < zi
        inv=(len(dec)-20)<zi
        lines.append(f"e{idx} id={id_:08x} psz={psz} rsz={rsz} c2={c2:08x} fl={fl:08x}(comp{comp}/enc{enc}) dec={len(dec)} NXS3 up={up} pa={pa} zi={zi} keylen={keylen} inv={'YES' if inv else 'no'} keyhead={dec[20:28].hex()} datahead={dec[20+112:20+120].hex() if len(dec)>=140 else 'short'} sha={hashlib.sha256(dec).hexdigest()[:16]}")
        (OUT/f"guide_n4_e{idx}.nxs3").write_bytes(dec)
        lines.append(f"  -> guide_n4_e{idx}.nxs3 {len(dec)}B")
    lines.append("NXS3新变体判定: e0/e2/e3 keylen=112 != denpk2 KEY.size()=128; e1 total-20=771 < zi=932倒挂, 三元组语义已变")
    lines.append("旧RSA直解路径记录: denpk2_nxs.rs MIGJAoGBAOZA..1024-bit + xor+ror19(0xE6546B64)+lz4_flex — 不套正式版 (key尺寸/语义双不合, 硬解必错)")
    lines.append("等价路径: libclient.so内RSA/NXS路由重找 + 动态dump落定前不硬解 (见t3_nxs3_新变体解.md §3)")
    (OUT/"guide_n4.txt").write_text("\n".join(lines)+"\n",encoding="utf-8")
    print("\n".join(lines))
if __name__=="__main__": main()
