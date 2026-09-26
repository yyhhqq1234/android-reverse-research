package com.netease.push.proto;

import android.support.v4.internal.view.SupportMenu;
import android.support.v4.os.EnvironmentCompat;
import android.text.TextUtils;
import android.util.Log;
import com.google.protobuf.nano.MessageNano;
import com.netease.ntunisdk.base.PatchPlaceholder;
import com.netease.push.proto.nano.ProtoClient;
import com.netease.push.utils.Crypto;
import com.netease.push.utils.PushConstants;
import com.netease.unisdk.gmbridge.UnisdkNtGmBridge;
import java.util.Arrays;

/* loaded from: classes.dex */
public class ProtoClientWrapper {
    public static final byte GET_NEW_ID_TYPE = 1;
    public static final byte GOT_TIME_TYPE = 5;
    public static final short HB_FLAG = 2;
    public static final byte HB_TYPE = 3;
    public static final byte LOGIN_TYPE = 4;
    public static final byte NEW_ID_TYPE = 52;
    public static final byte PROTO_VER = 3;
    public static final byte PUSH_TYPE = 50;
    public static final byte REGISTER_TYPE = 6;
    public static final byte RESET_TYPE = 51;
    public static final byte SET_NEW_ID_TYPE = 2;
    private static final String TAG = "NGPush_" + ProtoClientWrapper.class.getSimpleName();
    public static final byte UNREGISTER_TYPE = 7;
    private static final int headLen = 4;

    /* loaded from: classes.dex */
    public interface DataMarshal {
        byte[] Marshal();
    }

    private void patchPlaceholder() {
        Log.i(TAG, PatchPlaceholder.class.getSimpleName());
    }

    public static void Uint16ToBytes(byte[] byteArr, int pos, int cData) {
        int cData2 = cData & SupportMenu.USER_MASK;
        byteArr[pos] = (byte) ((cData2 >> 8) & 255);
        byteArr[pos + 1] = (byte) (cData2 & 255);
    }

    public static int BytesToUint16(byte[] buf, int pos) {
        int v = ((buf[pos] & 255) << 8) + (buf[pos + 1] & 255);
        return v;
    }

    public static final byte[] MarshalObject(byte cmdType, DataMarshal object, String key) {
        byte[] messageBytes = object.Marshal();
        if (messageBytes == null) {
            messageBytes = new byte[0];
        }
        byte[] msg = messageBytes;
        if (messageBytes.length > 0) {
            if (4 == cmdType) {
                try {
                    Log.i(TAG, "rsaEncrypt, cmd=" + ((int) cmdType));
                    String str = Crypto.rsaEncrypt(messageBytes, Crypto.RSA_PUBLIC_KEY);
                    msg = str.getBytes("UTF_8");
                } catch (Exception e) {
                    Log.e(TAG, "rsaEncrypt error:" + e.toString());
                    e.printStackTrace();
                    msg = messageBytes;
                }
            } else if (!TextUtils.isEmpty(key)) {
                try {
                    Log.i(TAG, "aesEncrypt, cmd=" + ((int) cmdType));
                    msg = Crypto.aesEncrypt(messageBytes, key);
                } catch (Exception e2) {
                    Log.e(TAG, "aesEncrypt error:" + e2.toString());
                    e2.printStackTrace();
                    msg = messageBytes;
                }
            }
        }
        int length = msg.length + 4;
        byte[] data = new byte[length];
        Uint16ToBytes(data, 0, length);
        data[2] = 3;
        data[3] = cmdType;
        System.arraycopy(msg, 0, data, 4, msg.length);
        return data;
    }

    public static Packet UnmarshalPacket(byte[] data, String key) {
        if (data.length < 4) {
            Log.e(TAG, "data error:" + data);
            return null;
        }
        Packet packet = new Packet();
        packet.length = BytesToUint16(data, 0);
        if (packet.length < 4 || packet.length > data.length) {
            Log.e(TAG, "packet length error:" + packet.length + " not in [4, " + data.length + "]");
            return null;
        }
        packet.version = data[2];
        packet.type = data[3];
        packet.data = new byte[packet.length - 4];
        if (packet.length > 4) {
            System.arraycopy(data, 4, packet.data, 0, packet.data.length);
            if (!TextUtils.isEmpty(key)) {
                byte[] msg = null;
                try {
                    Log.i(TAG, "aesDecrypt, cmd=" + ((int) packet.type));
                    msg = Crypto.aesDecrypt(packet.data, key);
                } catch (Exception e) {
                    Log.e(TAG, "aesDecrypt error:" + e.toString());
                    e.printStackTrace();
                }
                if (msg != null) {
                    packet.length = msg.length + 4;
                    packet.data = msg;
                    return packet;
                }
                return packet;
            }
            return packet;
        }
        return packet;
    }

    public static String getTypeName(byte type) {
        switch (type) {
            case 50:
                return "push";
            case UnisdkNtGmBridge.WINDOW_GRAVITY_LT /* 51 */:
                return "reset";
            case 52:
                return "newid";
            default:
                return EnvironmentCompat.MEDIA_UNKNOWN;
        }
    }

    /* loaded from: classes.dex */
    public static class Packet {
        public byte[] data;
        public int length;
        public byte type;
        public byte version;

        private void patchPlaceholder() {
            Log.i(ProtoClientWrapper.TAG, PatchPlaceholder.class.getSimpleName());
        }

        public Packet() {
            this.length = 0;
        }

        public Packet(byte cmdType) {
            this.length = 4;
            this.type = cmdType;
            this.version = (byte) 3;
            this.data = null;
        }

        public Packet(byte cmdType, byte[] data) {
            this.length = data.length + 4;
            this.type = cmdType;
            this.version = (byte) 3;
            this.data = new byte[data.length];
            System.arraycopy(data, 0, this.data, 0, data.length);
        }

        public byte[] Marshal() {
            int _length = this.data != null ? 4 + this.data.length : 4;
            byte[] msgData = new byte[_length];
            ProtoClientWrapper.Uint16ToBytes(msgData, 0, _length);
            msgData[2] = 3;
            msgData[3] = this.type;
            if (this.data != null) {
                System.arraycopy(this.data, 0, msgData, 4, this.data.length);
            }
            return msgData;
        }

        public int UnmarshalPacket(byte[] _data) {
            if (_data.length < 4) {
                Log.e(PushConstants.ANDROIR_PUHS_TAG, "data error:" + _data);
                return 0;
            }
            this.length = ProtoClientWrapper.BytesToUint16(_data, 0);
            this.version = _data[2];
            this.type = _data[3];
            this.data = new byte[_data.length - 4];
            System.arraycopy(_data, 4, this.data, 0, _data.length - 4);
            return 1;
        }
    }

    /* loaded from: classes.dex */
    public static class DevInfo implements DataMarshal {
        public String model = "";
        public String screen = "";
        public String os = "";
        public String osver = "";
        public String mac = "";
        public String id = "";

        private void patchPlaceholder() {
            Log.i(ProtoClientWrapper.TAG, PatchPlaceholder.class.getSimpleName());
        }

        @Override // com.netease.push.proto.ProtoClientWrapper.DataMarshal
        public byte[] Marshal() {
            ProtoClient.PbDevInfo pbDevInfo = new ProtoClient.PbDevInfo();
            pbDevInfo.model = this.model;
            pbDevInfo.screen = this.screen;
            pbDevInfo.os = this.os;
            pbDevInfo.osver = this.osver;
            pbDevInfo.mac = this.mac;
            pbDevInfo.id = this.id;
            byte[] data = MessageNano.toByteArray(pbDevInfo);
            return data;
        }

        public static DevInfo UnmarshalDevInfo(byte[] data) throws Exception {
            DevInfo devInfo = new DevInfo();
            try {
                ProtoClient.PbDevInfo pbDevInfo = ProtoClient.PbDevInfo.parseFrom(data);
                devInfo.model = pbDevInfo.model;
                devInfo.screen = pbDevInfo.screen;
                devInfo.os = pbDevInfo.os;
                devInfo.osver = pbDevInfo.osver;
                devInfo.mac = pbDevInfo.mac;
                devInfo.id = pbDevInfo.id;
                return devInfo;
            } catch (Exception e) {
                Log.e(PushConstants.ANDROIR_PUHS_TAG, "parse data error:" + Arrays.toString(data));
                throw e;
            }
        }
    }

    /* loaded from: classes.dex */
    public static class ServiceInfo {
        public String service;
        public long time;

        private void patchPlaceholder() {
            Log.i(ProtoClientWrapper.TAG, PatchPlaceholder.class.getSimpleName());
        }
    }

    /* loaded from: classes.dex */
    public static class DevServiceInfos implements DataMarshal {
        public String id;
        public String key;
        public ServiceInfo[] serviceInfos;
        public String ver;

        private void patchPlaceholder() {
            Log.i(ProtoClientWrapper.TAG, PatchPlaceholder.class.getSimpleName());
        }

        @Override // com.netease.push.proto.ProtoClientWrapper.DataMarshal
        public byte[] Marshal() {
            ProtoClient.PbLoginInfo pbLoginInfo = new ProtoClient.PbLoginInfo();
            if (!TextUtils.isEmpty(this.id)) {
                pbLoginInfo.id = this.id;
            }
            if (!TextUtils.isEmpty(this.ver)) {
                pbLoginInfo.ver = this.ver;
            }
            if (!TextUtils.isEmpty(this.key)) {
                pbLoginInfo.key = this.key;
            }
            int length = this.serviceInfos.length;
            pbLoginInfo.serviceinfos = new ProtoClient.PbServiceInfo[length];
            for (int i = 0; i < length; i++) {
                pbLoginInfo.serviceinfos[i] = new ProtoClient.PbServiceInfo();
                pbLoginInfo.serviceinfos[i].service = new String(this.serviceInfos[i].service);
                pbLoginInfo.serviceinfos[i].time = this.serviceInfos[i].time;
            }
            byte[] data = MessageNano.toByteArray(pbLoginInfo);
            return data;
        }

        public static DevServiceInfos unmarshalDevServiceInfos(byte[] data) throws Exception {
            DevServiceInfos devServiceInfos = new DevServiceInfos();
            try {
                ProtoClient.PbLoginInfo pbLoginInfo = ProtoClient.PbLoginInfo.parseFrom(data);
                devServiceInfos.id = pbLoginInfo.id;
                devServiceInfos.ver = pbLoginInfo.ver;
                devServiceInfos.key = pbLoginInfo.key;
                int length = pbLoginInfo.serviceinfos.length;
                devServiceInfos.serviceInfos = new ServiceInfo[length];
                for (int i = 0; i < length; i++) {
                    devServiceInfos.serviceInfos[i].service = pbLoginInfo.serviceinfos[i].service;
                    devServiceInfos.serviceInfos[i].time = pbLoginInfo.serviceinfos[i].time;
                }
                return devServiceInfos;
            } catch (Exception e) {
                Log.e(PushConstants.ANDROIR_PUHS_TAG, "parse data devserviceinfos error:" + Arrays.toString(data));
                throw e;
            }
        }
    }

    /* loaded from: classes.dex */
    public static class DevServiceInfo implements DataMarshal {
        public String id;
        public String service;
        public long time;

        private void patchPlaceholder() {
            Log.i(ProtoClientWrapper.TAG, PatchPlaceholder.class.getSimpleName());
        }

        @Override // com.netease.push.proto.ProtoClientWrapper.DataMarshal
        public byte[] Marshal() {
            ProtoClient.PbDevServiceInfo pbDevServiceInfo = new ProtoClient.PbDevServiceInfo();
            pbDevServiceInfo.id = this.id;
            pbDevServiceInfo.service = this.service;
            pbDevServiceInfo.time = this.time;
            byte[] data = MessageNano.toByteArray(pbDevServiceInfo);
            return data;
        }

        public static DevServiceInfo unmarshalDevServiceInfo(byte[] data) throws Exception {
            DevServiceInfo devServiceInfo = new DevServiceInfo();
            try {
                ProtoClient.PbDevServiceInfo pbDevServiceInfo = ProtoClient.PbDevServiceInfo.parseFrom(data);
                devServiceInfo.id = pbDevServiceInfo.id;
                devServiceInfo.service = pbDevServiceInfo.service;
                devServiceInfo.time = pbDevServiceInfo.time;
                return devServiceInfo;
            } catch (Exception e) {
                Log.e(PushConstants.ANDROIR_PUHS_TAG, "parse data devserviceinfo error:" + Arrays.toString(data));
                throw e;
            }
        }
    }

    /* loaded from: classes.dex */
    public static class NewIdInfo implements DataMarshal {
        public String id;

        private void patchPlaceholder() {
            Log.i(ProtoClientWrapper.TAG, PatchPlaceholder.class.getSimpleName());
        }

        @Override // com.netease.push.proto.ProtoClientWrapper.DataMarshal
        public byte[] Marshal() {
            ProtoClient.PbNewIdInfo pbNewIdInfo = new ProtoClient.PbNewIdInfo();
            pbNewIdInfo.id = this.id;
            byte[] data = MessageNano.toByteArray(pbNewIdInfo);
            return data;
        }

        public static NewIdInfo UnmarshalNewIdInfo(byte[] data) throws Exception {
            NewIdInfo newIdInfo = new NewIdInfo();
            try {
                ProtoClient.PbNewIdInfo pbNewIdInfo = ProtoClient.PbNewIdInfo.parseFrom(data);
                newIdInfo.id = pbNewIdInfo.id;
                return newIdInfo;
            } catch (Exception e) {
                Log.e(PushConstants.ANDROIR_PUHS_TAG, "parse data error:" + Arrays.toString(data));
                throw e;
            }
        }
    }

    /* loaded from: classes.dex */
    public static class Message implements DataMarshal {
        public String content;
        public String ext;
        public int mode;
        public String packagename;
        public String service;
        public long time;
        public String title;

        private void patchPlaceholder() {
            Log.i(ProtoClientWrapper.TAG, PatchPlaceholder.class.getSimpleName());
        }

        @Override // com.netease.push.proto.ProtoClientWrapper.DataMarshal
        public byte[] Marshal() {
            ProtoClient.PbMessage pbMessage = new ProtoClient.PbMessage();
            pbMessage.content = this.content;
            pbMessage.time = this.time;
            pbMessage.service = this.service;
            pbMessage.packagename = this.packagename;
            pbMessage.mode = this.mode;
            pbMessage.ext = this.ext;
            pbMessage.title = this.title;
            byte[] data = MessageNano.toByteArray(pbMessage);
            return data;
        }

        public static Message UnmarshalMessage(byte[] data) throws Exception {
            Message message = new Message();
            try {
                ProtoClient.PbMessage pbMessage = ProtoClient.PbMessage.parseFrom(data);
                message.content = pbMessage.content;
                message.time = pbMessage.time;
                message.service = pbMessage.service;
                message.packagename = pbMessage.packagename;
                message.mode = pbMessage.mode;
                message.ext = pbMessage.ext;
                message.title = pbMessage.title;
                return message;
            } catch (Exception e) {
                Log.e(PushConstants.ANDROIR_PUHS_TAG, "parse data error:" + Arrays.toString(data));
                throw e;
            }
        }
    }

    /* loaded from: classes.dex */
    public static class MessageInfo implements DataMarshal {
        public String id;
        public Message[] messages;

        private void patchPlaceholder() {
            Log.i(ProtoClientWrapper.TAG, PatchPlaceholder.class.getSimpleName());
        }

        @Override // com.netease.push.proto.ProtoClientWrapper.DataMarshal
        public byte[] Marshal() {
            byte[] data = new byte[0];
            return data;
        }

        public static MessageInfo unmarshalMessageInfo(byte[] data) throws Exception {
            MessageInfo messageInfo = new MessageInfo();
            try {
                ProtoClient.PbMessageInfo pbMessageInfo = ProtoClient.PbMessageInfo.parseFrom(data);
                messageInfo.id = pbMessageInfo.id;
                int length = pbMessageInfo.messages.length;
                messageInfo.messages = new Message[length];
                for (int i = 0; i < length; i++) {
                    messageInfo.messages[i] = Message.UnmarshalMessage(pbMessageInfo.messages[i]);
                }
                return messageInfo;
            } catch (Exception e) {
                Log.e(PushConstants.ANDROIR_PUHS_TAG, "parse data devserviceinfos error:" + Arrays.toString(data));
                throw e;
            }
        }
    }
}
