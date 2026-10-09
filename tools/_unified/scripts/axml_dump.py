#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""work_dwrg内纯Python AXML解码(Unicode安全,零越界)"""
import struct, sys, pathlib, re

def decode_axml(path):
    data = pathlib.Path(path).read_bytes()
    if data[:2] != b'\x03\x00':
        return None, "not-axml-magic"
    # string pool
    try:
        # header: type(2)+headerSize(2)+size(4)
        off = 8
        # second chunk = string pool
        stype, hsize, size = struct.unpack_from('<HHI', data, off)
        assert stype == 0x0001, f"stringpool-type={hex(stype)}"
        scount, scount2, flags, sStart, stStart = struct.unpack_from('<IIIII', data, off+8)
        is_utf8 = (flags & 0x100) != 0
        sOffsets = struct.unpack_from(f'<{scount}I', data, off+28)
        strings = []
        base = off + sStart
        for o in sOffsets:
            p = base + o
            def read_varint(pos):
                v = 0; sh = 0
                while True:
                    b = data[pos]; pos += 1
                    v |= (b & 0x7F) << sh
                    if not (b & 0x80):
                        break
                    sh += 7
                return v, pos
            if is_utf8:
                try:
                    _clen, p = read_varint(p)
                    blen, p = read_varint(p)
                    s = data[p:p+blen].decode('utf-8', errors='replace')
                except Exception as e:
                    s = f"<decode-err {e}>"
            else:
                try:
                    clen = struct.unpack_from('<H', data, p)[0]; p += 2
                    s = data[p:p+clen*2].decode('utf-16le', errors='replace')
                except Exception as e:
                    s = f"<decode-err {e}>"
            strings.append(s)
        return strings, ("utf8" if is_utf8 else "utf16")
    except Exception as e:
        return None, f"parse-fail:{e}"

if __name__ == "__main__":
    import argparse
    ap = argparse.ArgumentParser()
    ap.add_argument("--apk", required=True)
    ap.add_argument("--out", required=True)
    a = ap.parse_args()
    import zipfile
    apk = pathlib.Path(a.apk); out = pathlib.Path(a.out)
    z = zipfile.ZipFile(apk)
    raw = z.read("AndroidManifest.xml")
    tmp = out.with_suffix(".bin")
    tmp.write_bytes(raw)
    strs, enc = decode_axml(tmp)
    if strs is None:
        out.write_text(f"<!-- {enc} fallback: strings only -->\n", encoding="utf-8")
        txt = re.findall(rb'[\x20-\x7e]{4,}', raw)
        with open(out, "a", encoding="utf-8") as f:
            for t in txt:
                f.write(t.decode() + "\n")
        print(f"FALLBACK {enc} strings={len(txt)} -> {out}")
    else:
        with open(out, "w", encoding="utf-8") as f:
            f.write(f"<!-- AXML stringpool {enc} count={len(strs)} decoded by work_dwrg/axml_dump.py -->\n")
            f.write("<manifest-strings>\n")
            for s in strs:
                esc = s.replace("&","&amp;").replace("<","&lt;").replace(">","&gt;")
                f.write(f"  <s>{esc}</s>\n")
            f.write("</manifest-strings>\n")
        # key fields
        keys = [s for s in strs if "identityv" in s or "dwrg" in s or "version" in s.lower() or "permission" in s.lower() or "activity" in s.lower() or s in ("1.5.6","6.0-2438415")]
        print(f"OK {enc} strings={len(strs)} -> {out}")
        print("KEYS:" + "|".join(keys[:40]))
