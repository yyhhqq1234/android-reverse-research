package com.netease.pharos.link.kcp;

import com.netease.download.Const;
import com.netease.ntunisdk.base.PharosReplacebyPatch;
import com.netease.pharos.util.LogUtil;
import java.io.IOException;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;

/* loaded from: classes.dex */
public class KcpJavaClient extends KcpJava {
    public DatagramSocket mDatagramSocket;
    private InetAddress mInetAddress;
    private int mPort;

    public KcpJavaClient(long conv_, String addr, int port) throws IOException {
        super(conv_);
        this.mDatagramSocket = null;
        this.mInetAddress = null;
        this.mDatagramSocket = new DatagramSocket();
        this.mInetAddress = InetAddress.getByName(addr);
        this.mPort = port;
    }

    @Override // com.netease.pharos.link.kcp.KcpJava
    public void output(byte[] buffer, int size) {
        DatagramPacket datagramPacket = new DatagramPacket(buffer, size, this.mInetAddress, this.mPort);
        try {
            this.mDatagramSocket.send(datagramPacket);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void supportPatch() {
        LogUtil.v(Const.TYPE_TARGET_PATCH, PharosReplacebyPatch.class.toString());
    }
}
