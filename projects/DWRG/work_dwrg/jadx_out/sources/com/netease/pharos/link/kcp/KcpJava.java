package com.netease.pharos.link.kcp;

import com.netease.download.Const;
import com.netease.environment.config.SdkConstants;
import com.netease.ntunisdk.base.PharosReplacebyPatch;
import com.netease.pharos.util.LogUtil;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public abstract class KcpJava {
    long conv;
    public final int IKCP_RTO_NDL = 30;
    public final int IKCP_RTO_MIN = 100;
    public final int IKCP_RTO_DEF = 200;
    public final int IKCP_RTO_MAX = 60000;
    public final int IKCP_CMD_PUSH = 81;
    public final int IKCP_CMD_ACK = 82;
    public final int IKCP_CMD_WASK = 83;
    public final int IKCP_CMD_WINS = 84;
    public final int IKCP_ASK_SEND = 1;
    public final int IKCP_ASK_TELL = 2;
    public final int IKCP_WND_SND = 32;
    public final int IKCP_WND_RCV = 32;
    public final int IKCP_MTU_DEF = 1400;
    public final int IKCP_ACK_FAST = 3;
    public final int IKCP_INTERVAL = 100;
    public final int IKCP_OVERHEAD = 24;
    public final int IKCP_DEADLINK = 10;
    public final int IKCP_THRESH_INIT = 2;
    public final int IKCP_THRESH_MIN = 2;
    public final int IKCP_PROBE_INIT = 7000;
    public final int IKCP_PROBE_LIMIT = 120000;
    long snd_una = 0;
    long snd_nxt = 0;
    long rcv_nxt = 0;
    long ts_recent = 0;
    long ts_lastack = 0;
    long ts_probe = 0;
    long probe_wait = 0;
    long snd_wnd = 32;
    long rcv_wnd = 32;
    long rmt_wnd = 32;
    long cwnd = 0;
    long incr = 0;
    long probe = 0;
    long mtu = 1400;
    long mss = this.mtu - 24;
    byte[] buffer = new byte[((int) (this.mtu + 24)) * 3];
    ArrayList<Segment> nrcv_buf = new ArrayList<>(128);
    ArrayList<Segment> nsnd_buf = new ArrayList<>(128);
    ArrayList<Segment> nrcv_que = new ArrayList<>(128);
    ArrayList<Segment> nsnd_que = new ArrayList<>(128);
    long state = 0;
    ArrayList<Long> acklist = new ArrayList<>(128);
    long rx_srtt = 0;
    long rx_rttval = 0;
    long rx_rto = 200;
    long rx_minrto = 100;
    long current = 0;
    long interval = 100;
    long ts_flush = 100;
    long nodelay = 0;
    long updated = 0;
    long logmask = 0;
    long ssthresh = 2;
    long fastresend = 0;
    long nocwnd = 0;
    long xmit = 0;
    long dead_link = 10;

    protected abstract void output(byte[] bArr, int i);

    public static void ikcp_encode8u(byte[] p, int offset, byte c) {
        p[offset + 0] = c;
    }

    public static byte ikcp_decode8u(byte[] p, int offset) {
        return p[offset + 0];
    }

    public static void ikcp_encode16u(byte[] p, int offset, int w) {
        p[offset + 1] = (byte) (w >> 8);
        p[offset + 0] = (byte) (w >> 0);
    }

    public static int ikcp_decode16u(byte[] p, int offset) {
        int ret = ((p[offset + 1] & 255) << 8) | (p[offset + 0] & 255);
        return ret;
    }

    public static void ikcp_encode32u(byte[] p, int offset, long l) {
        p[offset + 3] = (byte) (l >> 24);
        p[offset + 2] = (byte) (l >> 16);
        p[offset + 1] = (byte) (l >> 8);
        p[offset + 0] = (byte) (l >> 0);
    }

    public static long ikcp_decode32u(byte[] p, int offset) {
        long ret = ((p[offset + 3] & 255) << 24) | ((p[offset + 2] & 255) << 16) | ((p[offset + 1] & 255) << 8) | (p[offset + 0] & 255);
        return ret;
    }

    public static void slice(ArrayList list, int start, int stop) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            if (i < stop - start) {
                list.set(i, list.get(i + start));
            } else {
                list.remove(stop - start);
            }
        }
    }

    static long _imin_(long a, long b) {
        return a <= b ? a : b;
    }

    static long _imax_(long a, long b) {
        return a >= b ? a : b;
    }

    static long _ibound_(long lower, long middle, long upper) {
        return _imin_(_imax_(lower, middle), upper);
    }

    static int _itimediff(long later, long earlier) {
        return (int) (later - earlier);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class Segment {
        protected byte[] data;
        protected long conv = 0;
        protected long cmd = 0;
        protected long frg = 0;
        protected long wnd = 0;
        protected long ts = 0;
        protected long sn = 0;
        protected long una = 0;
        protected long resendts = 0;
        protected long rto = 0;
        protected long fastack = 0;
        protected long xmit = 0;

        protected Segment(int size) {
            this.data = new byte[size];
        }

        protected int encode(byte[] ptr, int offset) {
            KcpJava.ikcp_encode32u(ptr, offset, this.conv);
            int offset2 = offset + 4;
            KcpJava.ikcp_encode8u(ptr, offset2, (byte) this.cmd);
            int offset3 = offset2 + 1;
            KcpJava.ikcp_encode8u(ptr, offset3, (byte) this.frg);
            int offset4 = offset3 + 1;
            KcpJava.ikcp_encode16u(ptr, offset4, (int) this.wnd);
            int offset5 = offset4 + 2;
            KcpJava.ikcp_encode32u(ptr, offset5, this.ts);
            int offset6 = offset5 + 4;
            KcpJava.ikcp_encode32u(ptr, offset6, this.sn);
            int offset7 = offset6 + 4;
            KcpJava.ikcp_encode32u(ptr, offset7, this.una);
            int offset8 = offset7 + 4;
            KcpJava.ikcp_encode32u(ptr, offset8, this.data.length);
            return (offset8 + 4) - offset;
        }
    }

    public KcpJava(long conv_) {
        this.conv = 0L;
        this.conv = conv_;
    }

    public int PeekSize() {
        if (this.nrcv_que.size() == 0) {
            return -1;
        }
        Segment seq = this.nrcv_que.get(0);
        if (0 == seq.frg) {
            return seq.data.length;
        }
        if (this.nrcv_que.size() < seq.frg + 1) {
            return -1;
        }
        int length = 0;
        Iterator<Segment> it = this.nrcv_que.iterator();
        while (it.hasNext()) {
            Segment item = it.next();
            length += item.data.length;
            if (0 == item.frg) {
                return length;
            }
        }
        return length;
    }

    public int Recv(byte[] buffer) {
        if (this.nrcv_que.size() == 0) {
            return -1;
        }
        int peekSize = PeekSize();
        if (peekSize < 0) {
            return -2;
        }
        if (peekSize > buffer.length) {
            return -3;
        }
        boolean fast_recover = false;
        if (this.nrcv_que.size() >= this.rcv_wnd) {
            fast_recover = true;
        }
        int count = 0;
        int n = 0;
        Iterator<Segment> it = this.nrcv_que.iterator();
        while (it.hasNext()) {
            Segment seg = it.next();
            System.arraycopy(seg.data, 0, buffer, n, seg.data.length);
            n += seg.data.length;
            count++;
            if (0 == seg.frg) {
                break;
            }
        }
        if (count > 0) {
            slice(this.nrcv_que, count, this.nrcv_que.size());
        }
        int count2 = 0;
        Iterator<Segment> it2 = this.nrcv_buf.iterator();
        while (it2.hasNext()) {
            Segment seg2 = it2.next();
            if (seg2.sn != this.rcv_nxt || this.nrcv_que.size() >= this.rcv_wnd) {
                break;
            }
            this.nrcv_que.add(seg2);
            this.rcv_nxt++;
            count2++;
        }
        if (count2 > 0) {
            slice(this.nrcv_buf, count2, this.nrcv_buf.size());
        }
        if (this.nrcv_que.size() < this.rcv_wnd && fast_recover) {
            this.probe |= 2;
            return n;
        }
        return n;
    }

    public int Send(byte[] buffer) {
        int count;
        if (buffer.length == 0) {
            return -1;
        }
        if (buffer.length < this.mss) {
            count = 1;
        } else {
            count = ((int) ((buffer.length + this.mss) - 1)) / ((int) this.mss);
        }
        if (255 < count) {
            return -2;
        }
        if (count == 0) {
            count = 1;
        }
        int offset = 0;
        long temp = buffer.length;
        for (int i = 0; i < count; i++) {
            int size = (int) (temp > this.mss ? this.mss : temp);
            Segment seg = new Segment(size);
            System.out.printf("the size is %d\n", Integer.valueOf(size));
            System.out.printf("the offset is %d\n", Integer.valueOf(offset));
            System.out.printf("the buffer is %d\n", Integer.valueOf(buffer.length));
            System.arraycopy(buffer, offset, seg.data, 0, size);
            offset += size;
            seg.frg = (count - i) - 1;
            this.nsnd_que.add(seg);
            if (temp > this.mss) {
                temp -= this.mss;
            }
        }
        return 0;
    }

    void update_ack(int rtt) {
        if (0 == this.rx_srtt) {
            this.rx_srtt = rtt;
            this.rx_rttval = rtt / 2;
        } else {
            int delta = (int) (rtt - this.rx_srtt);
            if (delta < 0) {
                delta = -delta;
            }
            this.rx_rttval = ((3 * this.rx_rttval) + delta) / 4;
            this.rx_srtt = ((7 * this.rx_srtt) + rtt) / 8;
            if (this.rx_srtt < 1) {
                this.rx_srtt = 1L;
            }
        }
        int rto = (int) (this.rx_srtt + _imax_(1L, this.rx_rttval * 4));
        this.rx_rto = _ibound_(this.rx_minrto, rto, SdkConstants.A_MUNITE);
    }

    void shrink_buf() {
        if (this.nsnd_buf.size() > 0) {
            this.snd_una = this.nsnd_buf.get(0).sn;
        } else {
            this.snd_una = this.snd_nxt;
        }
    }

    void parse_ack(long sn) {
        if (_itimediff(sn, this.snd_una) >= 0 && _itimediff(sn, this.snd_nxt) < 0) {
            int index = 0;
            Iterator<Segment> it = this.nsnd_buf.iterator();
            while (it.hasNext()) {
                Segment seg = it.next();
                if (sn == seg.sn) {
                    this.nsnd_buf.remove(index);
                    return;
                } else {
                    seg.fastack++;
                    index++;
                }
            }
        }
    }

    void parse_una(long una) {
        int count = 0;
        Iterator<Segment> it = this.nsnd_buf.iterator();
        while (it.hasNext()) {
            Segment seg = it.next();
            if (_itimediff(una, seg.sn) <= 0) {
                break;
            } else {
                count++;
            }
        }
        if (count > 0) {
            slice(this.nsnd_buf, count, this.nsnd_buf.size());
        }
    }

    void ack_push(long sn, long ts) {
        this.acklist.add(Long.valueOf(sn));
        this.acklist.add(Long.valueOf(ts));
    }

    void parse_data(Segment newseg) {
        long sn = newseg.sn;
        boolean repeat = false;
        if (_itimediff(sn, this.rcv_nxt + this.rcv_wnd) < 0 && _itimediff(sn, this.rcv_nxt) >= 0) {
            int n = this.nrcv_buf.size() - 1;
            int after_idx = -1;
            int i = n;
            while (true) {
                if (i < 0) {
                    break;
                }
                Segment seg = this.nrcv_buf.get(i);
                if (seg.sn == sn) {
                    repeat = true;
                    break;
                } else if (_itimediff(sn, seg.sn) <= 0) {
                    i--;
                } else {
                    after_idx = i;
                    break;
                }
            }
            if (!repeat) {
                if (after_idx == -1) {
                    this.nrcv_buf.add(0, newseg);
                } else {
                    this.nrcv_buf.add(after_idx + 1, newseg);
                }
            }
            int count = 0;
            Iterator<Segment> it = this.nrcv_buf.iterator();
            while (it.hasNext()) {
                Segment seg2 = it.next();
                if (seg2.sn != this.rcv_nxt || this.nrcv_que.size() >= this.rcv_wnd) {
                    break;
                }
                this.nrcv_que.add(seg2);
                this.rcv_nxt++;
                count++;
            }
            if (count > 0) {
                slice(this.nrcv_buf, count, this.nrcv_buf.size());
            }
        }
    }

    public int Input(byte[] data) {
        long s_una = this.snd_una;
        if (data.length < 24) {
            return 0;
        }
        int offset = 0;
        while (data.length - offset >= 24) {
            long conv_ = ikcp_decode32u(data, offset);
            int offset2 = offset + 4;
            if (this.conv != conv_) {
                return -1;
            }
            byte cmd = ikcp_decode8u(data, offset2);
            int offset3 = offset2 + 1;
            byte frg = ikcp_decode8u(data, offset3);
            int offset4 = offset3 + 1;
            int wnd = ikcp_decode16u(data, offset4);
            int offset5 = offset4 + 2;
            long ts = ikcp_decode32u(data, offset5);
            int offset6 = offset5 + 4;
            long sn = ikcp_decode32u(data, offset6);
            int offset7 = offset6 + 4;
            long una = ikcp_decode32u(data, offset7);
            int offset8 = offset7 + 4;
            long length = ikcp_decode32u(data, offset8);
            int offset9 = offset8 + 4;
            if (data.length - offset9 < length) {
                return -2;
            }
            if (cmd != 81 && cmd != 82 && cmd != 83 && cmd != 84) {
                return -3;
            }
            this.rmt_wnd = wnd;
            parse_una(una);
            shrink_buf();
            if (82 == cmd) {
                if (_itimediff(this.current, ts) >= 0) {
                    update_ack(_itimediff(this.current, ts));
                }
                parse_ack(sn);
                shrink_buf();
            } else if (81 == cmd) {
                if (_itimediff(sn, this.rcv_nxt + this.rcv_wnd) < 0) {
                    ack_push(sn, ts);
                    if (_itimediff(sn, this.rcv_nxt) >= 0) {
                        Segment seg = new Segment((int) length);
                        seg.conv = conv_;
                        seg.cmd = cmd;
                        seg.frg = frg;
                        seg.wnd = wnd;
                        seg.ts = ts;
                        seg.sn = sn;
                        seg.una = una;
                        if (length > 0) {
                            System.arraycopy(data, offset9, seg.data, 0, (int) length);
                        }
                        parse_data(seg);
                    }
                }
            } else if (83 == cmd) {
                this.probe |= 2;
            } else if (84 != cmd) {
                return -3;
            }
            offset = offset9 + ((int) length);
        }
        if (_itimediff(this.snd_una, s_una) > 0 && this.cwnd < this.rmt_wnd) {
            long mss_ = this.mss;
            if (this.cwnd < this.ssthresh) {
                this.cwnd++;
                this.incr += mss_;
            } else {
                if (this.incr < mss_) {
                    this.incr = mss_;
                }
                this.incr += ((mss_ * mss_) / this.incr) + (mss_ / 16);
                if ((this.cwnd + 1) * mss_ <= this.incr) {
                    this.cwnd++;
                }
            }
            if (this.cwnd > this.rmt_wnd) {
                this.cwnd = this.rmt_wnd;
                this.incr = this.rmt_wnd * mss_;
            }
        }
        return 0;
    }

    int wnd_unused() {
        if (this.nrcv_que.size() < this.rcv_wnd) {
            return ((int) this.rcv_wnd) - this.nrcv_que.size();
        }
        return 0;
    }

    void flush() {
        long current_ = this.current;
        byte[] bArr = this.buffer;
        int change = 0;
        int lost = 0;
        if (0 != this.updated) {
            Segment seg = new Segment(0);
            seg.conv = this.conv;
            seg.cmd = 82L;
            seg.wnd = wnd_unused();
            seg.una = this.rcv_nxt;
            int count = this.acklist.size() / 2;
            int offset = 0;
            for (int i = 0; i < count; i++) {
                if (offset + 24 > this.mtu) {
                    output(this.buffer, offset);
                    offset = 0;
                }
                seg.sn = this.acklist.get((i * 2) + 0).longValue();
                seg.ts = this.acklist.get((i * 2) + 1).longValue();
                offset += seg.encode(this.buffer, offset);
            }
            this.acklist.clear();
            if (0 != this.rmt_wnd) {
                this.ts_probe = 0L;
                this.probe_wait = 0L;
            } else if (0 == this.probe_wait) {
                this.probe_wait = 7000L;
                this.ts_probe = this.current + this.probe_wait;
            } else if (_itimediff(this.current, this.ts_probe) >= 0) {
                if (this.probe_wait < 7000) {
                    this.probe_wait = 7000L;
                }
                this.probe_wait += this.probe_wait / 2;
                if (this.probe_wait > 120000) {
                    this.probe_wait = 120000L;
                }
                this.ts_probe = this.current + this.probe_wait;
                this.probe |= 1;
            }
            if ((this.probe & 1) != 0) {
                seg.cmd = 83L;
                if (offset + 24 > this.mtu) {
                    output(this.buffer, offset);
                    offset = 0;
                }
                offset += seg.encode(this.buffer, offset);
            }
            if ((this.probe & 2) != 0) {
                seg.cmd = 84L;
                if (offset + 24 > this.mtu) {
                    output(this.buffer, offset);
                    offset = 0;
                }
                offset += seg.encode(this.buffer, offset);
            }
            this.probe = 0L;
            long cwnd_ = _imin_(this.snd_wnd, this.rmt_wnd);
            if (0 == this.nocwnd) {
                cwnd_ = _imin_(this.cwnd, cwnd_);
            }
            int count2 = 0;
            Iterator<Segment> it = this.nsnd_que.iterator();
            while (it.hasNext()) {
                Segment nsnd_que1 = it.next();
                if (_itimediff(this.snd_nxt, this.snd_una + cwnd_) >= 0) {
                    break;
                }
                nsnd_que1.conv = this.conv;
                nsnd_que1.cmd = 81L;
                nsnd_que1.wnd = seg.wnd;
                nsnd_que1.ts = current_;
                nsnd_que1.sn = this.snd_nxt;
                nsnd_que1.una = this.rcv_nxt;
                nsnd_que1.resendts = current_;
                nsnd_que1.rto = this.rx_rto;
                nsnd_que1.fastack = 0L;
                nsnd_que1.xmit = 0L;
                this.nsnd_buf.add(nsnd_que1);
                this.snd_nxt++;
                count2++;
            }
            if (count2 > 0) {
                slice(this.nsnd_que, count2, this.nsnd_que.size());
            }
            long resent = this.fastresend > 0 ? this.fastresend : -1L;
            long rtomin = this.nodelay == 0 ? this.rx_rto >> 3 : 0L;
            Iterator<Segment> it2 = this.nsnd_buf.iterator();
            while (it2.hasNext()) {
                Segment segment = it2.next();
                boolean needsend = false;
                if (0 == segment.xmit) {
                    needsend = true;
                    segment.xmit++;
                    segment.rto = this.rx_rto;
                    segment.resendts = segment.rto + current_ + rtomin;
                } else if (_itimediff(current_, segment.resendts) >= 0) {
                    needsend = true;
                    segment.xmit++;
                    this.xmit++;
                    if (0 == this.nodelay) {
                        segment.rto += this.rx_rto;
                    } else {
                        segment.rto += this.rx_rto / 2;
                    }
                    segment.resendts = segment.rto + current_;
                    lost = 1;
                } else if (segment.fastack >= resent) {
                    needsend = true;
                    segment.xmit++;
                    segment.fastack = 0L;
                    segment.resendts = segment.rto + current_;
                    change++;
                }
                if (needsend) {
                    segment.ts = current_;
                    segment.wnd = seg.wnd;
                    segment.una = this.rcv_nxt;
                    int need = segment.data.length + 24;
                    if (offset + need >= this.mtu) {
                        output(this.buffer, offset);
                        offset = 0;
                    }
                    offset += segment.encode(this.buffer, offset);
                    if (segment.data.length > 0) {
                        System.arraycopy(segment.data, 0, this.buffer, offset, segment.data.length);
                        offset += segment.data.length;
                    }
                    if (segment.xmit >= this.dead_link) {
                        this.state = -1L;
                    }
                }
            }
            if (offset > 0) {
                output(this.buffer, offset);
            }
            if (change != 0) {
                long inflight = this.snd_nxt - this.snd_una;
                this.ssthresh = inflight / 2;
                if (this.ssthresh < 2) {
                    this.ssthresh = 2L;
                }
                this.cwnd = this.ssthresh + resent;
                this.incr = this.cwnd * this.mss;
            }
            if (lost != 0) {
                this.ssthresh = this.cwnd / 2;
                if (this.ssthresh < 2) {
                    this.ssthresh = 2L;
                }
                this.cwnd = 1L;
                this.incr = this.mss;
            }
            if (this.cwnd < 1) {
                this.cwnd = 1L;
                this.incr = this.mss;
            }
        }
    }

    public void Update(long current_) {
        this.current = current_;
        if (0 == this.updated) {
            this.updated = 1L;
            this.ts_flush = this.current;
        }
        int slap = _itimediff(this.current, this.ts_flush);
        if (slap >= 10000 || slap < -10000) {
            this.ts_flush = this.current;
            slap = 0;
        }
        if (slap >= 0) {
            this.ts_flush += this.interval;
            if (_itimediff(this.current, this.ts_flush) >= 0) {
                this.ts_flush = this.current + this.interval;
            }
            flush();
        }
    }

    public long Check(long current_) {
        long ts_flush_ = this.ts_flush;
        long tm_packet = 2147483647L;
        if (0 != this.updated) {
            if (_itimediff(current_, ts_flush_) >= 10000 || _itimediff(current_, ts_flush_) < -10000) {
                ts_flush_ = current_;
            }
            if (_itimediff(current_, ts_flush_) < 0) {
                long tm_flush = _itimediff(ts_flush_, current_);
                Iterator<Segment> it = this.nsnd_buf.iterator();
                while (it.hasNext()) {
                    Segment seg = it.next();
                    int diff = _itimediff(seg.resendts, current_);
                    if (diff <= 0) {
                        return current_;
                    }
                    if (diff < tm_packet) {
                        tm_packet = diff;
                    }
                }
                long minimal = tm_packet < tm_flush ? tm_packet : tm_flush;
                if (minimal >= this.interval) {
                    minimal = this.interval;
                }
                return current_ + minimal;
            }
            return current_;
        }
        return current_;
    }

    public int SetMtu(int mtu_) {
        if (mtu_ < 50 || mtu_ < 24) {
            return -1;
        }
        byte[] buffer_ = new byte[(mtu_ + 24) * 3];
        if (buffer_ == null) {
            return -2;
        }
        this.mtu = mtu_;
        this.mss = this.mtu - 24;
        this.buffer = buffer_;
        return 0;
    }

    public int Interval(int interval_) {
        if (interval_ > 5000) {
            interval_ = 5000;
        } else if (interval_ < 10) {
            interval_ = 10;
        }
        this.interval = interval_;
        return 0;
    }

    public int NoDelay(int nodelay_, int interval_, int resend_, int nc_) {
        if (nodelay_ > 0) {
            this.nodelay = nodelay_;
            if (nodelay_ != 0) {
                this.rx_minrto = 30L;
            } else {
                this.rx_minrto = 100L;
            }
        }
        if (interval_ >= 0) {
            if (interval_ > 5000) {
                interval_ = 5000;
            } else if (interval_ < 10) {
                interval_ = 10;
            }
            this.interval = interval_;
        }
        if (resend_ >= 0) {
            this.fastresend = resend_;
        }
        if (nc_ >= 0) {
            this.nocwnd = nc_;
            return 0;
        }
        return 0;
    }

    public int WndSize(int sndwnd, int rcvwnd) {
        if (sndwnd > 0) {
            this.snd_wnd = sndwnd;
        }
        if (rcvwnd > 0) {
            this.rcv_wnd = rcvwnd;
            return 0;
        }
        return 0;
    }

    public int WaitSnd() {
        return this.nsnd_buf.size() + this.nsnd_que.size();
    }

    private void supportPatch() {
        LogUtil.v(Const.TYPE_TARGET_PATCH, PharosReplacebyPatch.class.toString());
    }
}
