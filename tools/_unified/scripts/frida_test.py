import subprocess, pathlib
exe = pathlib.Path(r'C:\Users\Administrator\AppData\Local\Packages\PythonSoftwareFoundation.Python.3.12_qbz5n2kfra8p0\LocalCache\local-packages\Python312\Scripts\frida-ps.exe')
print('exe_exists=' + str(exe.exists()))
r = subprocess.run([str(exe), '-H', '127.0.0.1:16384', '-a'], capture_output=True, text=True, timeout=20)
print('STDOUT:\n' + r.stdout[:4000])
print('STDERR:\n' + r.stderr[:2000])
print('RC=' + str(r.returncode))
