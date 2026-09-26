import pathlib
base = pathlib.Path(r'C:\Users\Administrator\AppData\Local\Packages\PythonSoftwareFoundation.Python.3.12_qbz5n2kfra8p0\LocalCache\local-packages\Python312\Scripts')
print('exists=' + str(base.exists()))
for f in sorted(base.glob('*frida*')):
    print('FOUND=' + f.name)
for f in sorted(base.glob('*')):
    if 'frida' in f.name.lower():
        print('FOUND2=' + f.name)
print('total=' + str(len(list(base.glob('*')))))
for f in sorted(base.glob('*'))[:20]:
    print('BIN=' + f.name)
