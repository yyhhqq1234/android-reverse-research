import zipfile, pathlib, argparse
ROOT = pathlib.Path(__file__).resolve().parents[4]
APK = ROOT / "projects/DWRG/第五人格（官服正式版）.apk"
p = argparse.ArgumentParser()
p.add_argument("--extract", action="store_true", help="write 15wpk to out dir")
p.add_argument("--out", default="projects/DWRG/work_dwrg/formal_offline-bundle/wpk_extract")
p.add_argument("--only", default="", help="substring filter, e.g. script1")
a = p.parse_args()
z = zipfile.ZipFile(APK)
wpks = sorted([i for i in z.infolist() if i.filename.startswith("assets/res/") and i.filename.endswith(".wpk")], key=lambda x: x.file_size, reverse=True)
print(f"wpk_count={len(wpks)} total={sum(i.file_size for i in wpks)}")
for i in wpks:
    tag = "" if not a.only or a.only in i.filename else " (skip)"
    print(f"{i.file_size:>12} CRC{i.CRC:08x} {i.filename}{tag}")
    if a.extract and (not a.only or a.only in i.filename):
        out = ROOT / a.out / pathlib.Path(i.filename).name
        out.parent.mkdir(parents=True, exist_ok=True)
        out.write_bytes(z.read(i.filename))
        print("  ->", out)
