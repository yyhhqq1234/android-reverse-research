# B2 心跳焊点 — 动态结论（2026-09-26）

对象：B1 自签包正式版，pid 16588→2559（root frida，MuMu 127.0.0.1:16384）
账号：克士TC巴迪尔（免登可用，重启后直进）

## 网络面（libc 全钩：connect/sendto/send/sendmsg/write/recv/recvfrom）
- TLS 443 池（IPv4+IPv6双栈，::ffff:映射）：39.91.165.89 / 27.221.14.168 / 42.186.253.137 /
  101.71.7.71 / 1.95.233.187 / 124.160.141.21 / 58.243.203.22 / 39.91.180.52（故障自迁移）
- UDP 游戏道：24B KCP 包（02 00 00 00 c7/c9/cb 5a 02 …）+ TLS over UDP 疑似（16 03 01 ClientHello 517B）
- 本地 unix sendmsg（fam1，IPC，不相干）

## 熔断实验
1. 按IP封3端（443+10026）：~70s 弹窗"您与服务器已失去连接"（教程对战，加页手记）→ 判定：收包超时触发
2. 按端封2端（剧情模式）：迁移到备用443，无弹窗
3. 全封 tcp443+udp（v4+v6，adb/frida存活）：剧情模式 ≥4分钟 无弹窗 → 判定：剧情场景本地化，静止时无心跳需求
4. 误杀记录：`-p tcp -j DROP` 全量会掐 adb/frida 回程（ESTABLISHED 无例外）→ 熔断模拟器，需重启；以后只封目的端口/IP

## B2 焊点结论
- 弹窗触发器在**服务端驱动场景**（教程对战/匹配），不在剧情静止态；焊点 = 收包超时回调
  （`handle_reconnect_fail` / `soul_disable_reconnect` / mbengine 定时器），需在**对战态**抓 backtrace
- 静态焊点仍未定位：reconnect 四串零 PC 相对引用、零 data 指针、dex 无"失去连接"（文本在资源/原生）
- A 计划（伪离线单人训练场）可行性：剧情/教程静止已证本地可存活；下一步需对战态 backtrace + 人机房服流量

## 资产
- op_netlog.txt（112行，8钩全开）/ op_nethook.js（含IPv6解）/ op_netsum.py
- op_b1_36~52（免登→大厅→签到→剧情全链）
- op_bt.js/op_btrun.py（待对战态使用；enumerateThreadsSync 不存在，用 enumerateThreads）
- iptables 已清空，游戏在线，pid 2559，剧情模式
