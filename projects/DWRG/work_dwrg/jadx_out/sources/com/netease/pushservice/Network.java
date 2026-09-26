package com.netease.pushservice;

import android.annotation.SuppressLint;
import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.netease.download.Const;
import com.netease.ntunisdk.base.PatchPlaceholder;
import com.netease.push.proto.ProtoClientWrapper;
import com.netease.push.utils.PushSetting;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.net.SocketAddress;
import java.net.SocketException;
import java.util.Arrays;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.locks.ReentrantLock;

@SuppressLint({"DefaultLocale"})
/* loaded from: classes.dex */
public class Network implements Runnable {
    private static final String TAG = "NGPush_" + Network.class.getSimpleName();
    private Timer mTimer;
    private InetAddress inetAddr = null;
    private SocketAddress socketAddr = null;
    private Socket socket = null;
    private DataOutputStream socketWriter = null;
    private DataInputStream socketReader = null;
    private boolean mbConnected = false;
    private ReentrantLock mLock = new ReentrantLock();
    private boolean isEnable = false;
    private TimerTask heartBeatTask = null;
    private int HEART_BEAT_TIME = 240000;
    private int retryCount = 0;
    private String mKey = "";

    private void patchPlaceholder() {
        Log.i(TAG, PatchPlaceholder.class.getSimpleName());
    }

    public Network() {
        this.mTimer = null;
        this.mTimer = new Timer();
        Log.i(TAG, "Network constructed, this=" + this);
    }

    public void setHeartBeatTime(int v) {
        Log.d(TAG, "setHeartBeatTime:" + v);
        this.HEART_BEAT_TIME = v;
    }

    private int getRetrySecond() {
        if (this.retryCount > 7) {
            this.retryCount = 7;
        }
        int after = this.retryCount * 36 * this.retryCount;
        if (after <= 0) {
            after = 2;
        }
        this.retryCount++;
        return after;
    }

    public void connectAuto(Context ctx) {
        Log.i(TAG, "connectAuto, this=" + this);
        PushServiceInfo pushServiceInfo = PushServiceHelper.getInstance().getNotificationServiceInfo();
        String data = PushSetting.getPushAddr(ctx);
        if (TextUtils.isEmpty(data)) {
            data = pushServiceInfo.getPushSrv();
        }
        Log.d(TAG, "unipush addr:" + data);
        int position = data.indexOf(Const.RESP_CONTENT_SPIT2);
        if (position != -1) {
            String host = data.substring(0, position);
            String port = data.substring(position + 1);
            int iPort = Integer.parseInt(port);
            Log.d(TAG, String.format("connect to unipush %s:%s", host, port));
            connect(host, iPort);
        }
    }

    public void connect(String host, int port) {
        this.mLock.lock();
        Log.i(TAG, "connect");
        Log.d(TAG, "host:" + host);
        Log.d(TAG, "port:" + port);
        Log.d(TAG, "connect, this=" + this);
        if (this.mbConnected) {
            Log.w(TAG, "already connected");
            this.mLock.unlock();
            return;
        }
        if (!this.isEnable) {
            Log.w(TAG, "Disabled Network");
            this.mLock.unlock();
            return;
        }
        try {
            this.inetAddr = InetAddress.getByName(host);
            this.socketAddr = new InetSocketAddress(this.inetAddr, port);
            this.socket = new Socket();
            this.socket.setKeepAlive(true);
            this.socket.setSoTimeout(0);
            this.socket.connect(this.socketAddr, 5000);
            Log.i(TAG, "connect success");
            this.mbConnected = true;
            Log.d(TAG, "connect, this=" + this);
            this.socketReader = new DataInputStream(this.socket.getInputStream());
            this.socketWriter = new DataOutputStream(this.socket.getOutputStream());
            Thread thread = new Thread(this);
            thread.start();
            startHeartBeat();
            PushServiceHelper.getInstance().refreshToken();
            this.retryCount = 0;
        } catch (Exception e) {
            Log.e(TAG, "connect exception:" + e.toString());
            this.mbConnected = false;
            e.printStackTrace();
        }
        if (!this.mbConnected) {
            disconnect();
            Log.d(TAG, "disconnectRetry in connect()");
            final int retryAfter = getRetrySecond();
            PushServiceHelper.getInstance().getTaskSubmitter().submit(new Runnable() { // from class: com.netease.pushservice.Network.1
                @Override // java.lang.Runnable
                public void run() {
                    Log.d(Network.TAG, "disconnectRetry from connect()");
                    Network.this.connectRetry(retryAfter);
                }
            });
        }
        this.mLock.unlock();
    }

    public void disconnect() {
        this.mLock.lock();
        Log.i(TAG, "disconnect");
        try {
            if (this.socketReader != null) {
                this.socketReader.close();
            }
            if (this.socketWriter != null) {
                this.socketWriter.close();
            }
            if (this.socket != null) {
                this.socket.close();
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
        this.socket = null;
        this.socketWriter = null;
        this.socketReader = null;
        this.mbConnected = false;
        Log.d(TAG, "disconnect, this=" + this);
        endHeartBeat();
        this.mTimer.purge();
        this.mLock.unlock();
    }

    public void stop() {
        Log.i(TAG, "stop");
        this.mLock.lock();
        disconnect();
        this.isEnable = false;
        this.mLock.unlock();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void connectRetry(int second) {
        this.mLock.lock();
        Log.i(TAG, "connectRetry");
        if (this.mbConnected) {
            Log.w(TAG, "already connected");
            this.mLock.unlock();
        } else if (!this.isEnable) {
            Log.w(TAG, "connect not enable");
            this.mLock.unlock();
        } else {
            Log.d(TAG, "retry connect after:" + second);
            this.mTimer.schedule(new TimerTask() { // from class: com.netease.pushservice.Network.2
                @Override // java.util.TimerTask, java.lang.Runnable
                public void run() {
                    PushServiceHelper.getInstance().connect(false);
                }
            }, second * 1000);
            this.mLock.unlock();
        }
    }

    private void startHeartBeat() {
        Log.d(TAG, "startHeartBeat");
        endHeartBeat();
        this.heartBeatTask = new TimerTask() { // from class: com.netease.pushservice.Network.3
            @Override // java.util.TimerTask, java.lang.Runnable
            public void run() {
                byte[] data = new byte[2];
                ProtoClientWrapper.Uint16ToBytes(data, 0, 2);
                Network.this.sendData(data);
                Log.d(Network.TAG, "sent a heart beat");
            }
        };
        this.mTimer.schedule(this.heartBeatTask, this.HEART_BEAT_TIME, this.HEART_BEAT_TIME);
    }

    private void endHeartBeat() {
        Log.d(TAG, "endHeartBeat");
        if (this.heartBeatTask != null) {
            this.heartBeatTask.cancel();
        }
    }

    public void disconnectRetry(int second) {
        this.mLock.lock();
        Log.d(TAG, "disconnectRetry after:" + second);
        if (this.mbConnected) {
            Log.w(TAG, "already connected");
            this.mLock.unlock();
        } else {
            disconnect();
            connectRetry(second);
            this.mLock.unlock();
        }
    }

    public void sendData(byte[] data) {
        this.mLock.lock();
        if (!this.mbConnected) {
            Log.e(TAG, "not connected");
            this.mLock.unlock();
            return;
        }
        if (!this.socket.isConnected()) {
            Log.e(TAG, "socket not connected");
            this.mLock.unlock();
            return;
        }
        try {
            this.socketWriter.write(data);
        } catch (SocketException e) {
            Log.e(TAG, "SocketException:" + e.toString());
            disconnect();
            e.printStackTrace();
        } catch (IOException e2) {
            Log.e(TAG, "IOException:" + e2.toString());
            disconnect();
            e2.printStackTrace();
        }
        this.mLock.unlock();
    }

    @Override // java.lang.Runnable
    @SuppressLint({"NewApi"})
    public void run() {
        Log.i(TAG, "run");
        Log.d(TAG, "isEnable:" + this.isEnable);
        Log.d(TAG, "mbConnected:" + this.mbConnected);
        this.mLock.lock();
        if (!this.isEnable || !this.mbConnected) {
            this.mLock.unlock();
            return;
        }
        this.mLock.unlock();
        byte[] tmpBuff = new byte[4096];
        while (true) {
            try {
                int length = this.socketReader.readShort() & 65535;
                Log.d(TAG, "receive length:" + length);
                ProtoClientWrapper.Uint16ToBytes(tmpBuff, 0, length);
                this.socketReader.readFully(tmpBuff, 2, length - 2);
                onReceive(Arrays.copyOfRange(tmpBuff, 0, length));
            } catch (Exception e) {
                Log.d(TAG, "run, this=" + this);
                Log.e(TAG, "receive exception:" + e.toString());
                e.printStackTrace();
                disconnect();
                Log.d(TAG, "connectRetry in receive thread");
                final int retryAfter = getRetrySecond();
                PushServiceHelper.getInstance().getTaskSubmitter().submit(new Runnable() { // from class: com.netease.pushservice.Network.4
                    @Override // java.lang.Runnable
                    public void run() {
                        Log.d(Network.TAG, "connectRetry from receive thread");
                        Network.this.connectRetry(retryAfter);
                    }
                });
                return;
            }
        }
    }

    public void sendData(ProtoClientWrapper.Packet packet) {
        byte[] data = packet.Marshal();
        sendData(data);
    }

    public void sendData(byte cmdType, ProtoClientWrapper.DataMarshal object, String key) {
        Log.i(TAG, "sendData, cmdType=" + ((int) cmdType));
        if (4 == cmdType) {
            this.mKey = key;
        }
        byte[] data = ProtoClientWrapper.MarshalObject(cmdType, object, this.mKey);
        sendData(data);
    }

    private void onReceive(byte[] data) {
        Log.i(TAG, String.format("OnReceive len=%d", Integer.valueOf(data.length)));
        ProtoClientWrapper.Packet packet = ProtoClientWrapper.UnmarshalPacket(data, this.mKey);
        if (packet != null) {
            Log.i(TAG, String.format("OnReceive, cmdType=%d", Byte.valueOf(packet.type)));
            PushServiceHelper.getInstance().onReceive(packet);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setEnable(boolean flag) {
        Log.d(TAG, "setEnable:" + flag);
        this.mLock.lock();
        this.isEnable = flag;
        if (!this.isEnable) {
            disconnect();
        }
        this.mLock.unlock();
    }
}
