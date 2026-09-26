import sysconfig, pathlib
s = sysconfig.get_path('scripts')
print('SCRIPTS=' + s)
p = pathlib.Path(s)
for f in sorted(p.glob('frida*')):
    print('FRIDA_BIN=' + str(f))
