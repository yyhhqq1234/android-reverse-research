#!/usr/bin/env python3
"""Look up method RVAs in script.json by substring patterns."""
import json
import sys
d = json.load(open('D:/安卓逆向/NECR/work_necr/trial/out_vanilla/script.json'))
for pat in sys.argv[1:]:
    for m in d['ScriptMethod']:
        if pat in m['Name']:
            print('%08x  %s' % (m['Address'], m['Name']))
    print('---')
