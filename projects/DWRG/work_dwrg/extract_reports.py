d2 = open('h2.bin', 'rb').read()
d3 = open('h3.bin', 'rb').read()
d1 = open('h1.bin', 'rb').read()
out = []
for nm, d, off in [('h2', d2, 335884), ('h3', d3, 1248374), ('h1', d1, 2118862)]:
    s = d[max(0, off - 300):off + 3000].decode('utf8', 'replace')
    out.append('==== ' + nm + ' @' + str(off) + ' len=' + str(len(d)))
    out.append(s)
open('reports.txt', 'w', encoding='utf8').write('\n'.join(out))
print('wrote reports.txt')
