import pathlib
d = pathlib.Path('raw/assets/script.npk').read_bytes()
print('pre1840 hex=' + d[1780:1840].hex())
print('pre1840 repr=' + repr(d[1600:1840]))
try:
    import lz4.block
    print('lz4-ok')
except Exception as ex:
    print('lz4-missing ' + str(ex)[:80])
