package com.netease.push.proto.nano;

import android.support.v4.view.MotionEventCompat;
import android.util.Log;
import com.google.protobuf.nano.CodedInputByteBufferNano;
import com.google.protobuf.nano.CodedOutputByteBufferNano;
import com.google.protobuf.nano.InternalNano;
import com.google.protobuf.nano.InvalidProtocolBufferNanoException;
import com.google.protobuf.nano.MessageNano;
import com.google.protobuf.nano.WireFormatNano;
import com.netease.ntunisdk.base.PatchPlaceholder;
import com.tencent.mm.opensdk.modelmsg.WXMediaMessage;
import java.io.IOException;

/* loaded from: classes.dex */
public interface ProtoClient {

    /* loaded from: classes.dex */
    public static final class PbDevInfo extends MessageNano {
        private static volatile PbDevInfo[] _emptyArray;
        public String id;
        public String mac;
        public String model;
        public String os;
        public String osver;
        public String screen;

        public static PbDevInfo[] emptyArray() {
            if (_emptyArray == null) {
                synchronized (InternalNano.LAZY_INIT_LOCK) {
                    if (_emptyArray == null) {
                        _emptyArray = new PbDevInfo[0];
                    }
                }
            }
            return _emptyArray;
        }

        public PbDevInfo() {
            clear();
        }

        public PbDevInfo clear() {
            this.model = "";
            this.screen = "";
            this.os = "";
            this.osver = "";
            this.mac = "";
            this.id = "";
            this.cachedSize = -1;
            return this;
        }

        @Override // com.google.protobuf.nano.MessageNano
        public void writeTo(CodedOutputByteBufferNano output) throws IOException {
            if (!this.model.equals("")) {
                output.writeString(1, this.model);
            }
            if (!this.screen.equals("")) {
                output.writeString(2, this.screen);
            }
            if (!this.os.equals("")) {
                output.writeString(3, this.os);
            }
            if (!this.osver.equals("")) {
                output.writeString(4, this.osver);
            }
            if (!this.mac.equals("")) {
                output.writeString(5, this.mac);
            }
            if (!this.id.equals("")) {
                output.writeString(6, this.id);
            }
            super.writeTo(output);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.nano.MessageNano
        public int computeSerializedSize() {
            int size = super.computeSerializedSize();
            if (!this.model.equals("")) {
                size += CodedOutputByteBufferNano.computeStringSize(1, this.model);
            }
            if (!this.screen.equals("")) {
                size += CodedOutputByteBufferNano.computeStringSize(2, this.screen);
            }
            if (!this.os.equals("")) {
                size += CodedOutputByteBufferNano.computeStringSize(3, this.os);
            }
            if (!this.osver.equals("")) {
                size += CodedOutputByteBufferNano.computeStringSize(4, this.osver);
            }
            if (!this.mac.equals("")) {
                size += CodedOutputByteBufferNano.computeStringSize(5, this.mac);
            }
            if (!this.id.equals("")) {
                return size + CodedOutputByteBufferNano.computeStringSize(6, this.id);
            }
            return size;
        }

        @Override // com.google.protobuf.nano.MessageNano
        public PbDevInfo mergeFrom(CodedInputByteBufferNano input) throws IOException {
            while (true) {
                int tag = input.readTag();
                switch (tag) {
                    case 0:
                        break;
                    case 10:
                        this.model = input.readString();
                        break;
                    case 18:
                        this.screen = input.readString();
                        break;
                    case WXMediaMessage.IMediaObject.TYPE_EMOTIONLIST_SHARED /* 26 */:
                        this.os = input.readString();
                        break;
                    case 34:
                        this.osver = input.readString();
                        break;
                    case MotionEventCompat.AXIS_GENERIC_11 /* 42 */:
                        this.mac = input.readString();
                        break;
                    case 50:
                        this.id = input.readString();
                        break;
                    default:
                        if (!WireFormatNano.parseUnknownField(input, tag)) {
                            break;
                        } else {
                            break;
                        }
                }
            }
            return this;
        }

        public static PbDevInfo parseFrom(byte[] data) throws InvalidProtocolBufferNanoException {
            return (PbDevInfo) MessageNano.mergeFrom(new PbDevInfo(), data);
        }

        public static PbDevInfo parseFrom(CodedInputByteBufferNano input) throws IOException {
            return new PbDevInfo().mergeFrom(input);
        }
    }

    /* loaded from: classes.dex */
    public static final class PbDevServiceInfo extends MessageNano {
        private static volatile PbDevServiceInfo[] _emptyArray;
        public String id;
        public String service;
        public long time;

        public static PbDevServiceInfo[] emptyArray() {
            if (_emptyArray == null) {
                synchronized (InternalNano.LAZY_INIT_LOCK) {
                    if (_emptyArray == null) {
                        _emptyArray = new PbDevServiceInfo[0];
                    }
                }
            }
            return _emptyArray;
        }

        public PbDevServiceInfo() {
            clear();
        }

        public PbDevServiceInfo clear() {
            this.id = "";
            this.service = "";
            this.time = 0L;
            this.cachedSize = -1;
            return this;
        }

        @Override // com.google.protobuf.nano.MessageNano
        public void writeTo(CodedOutputByteBufferNano output) throws IOException {
            if (!this.id.equals("")) {
                output.writeString(1, this.id);
            }
            if (!this.service.equals("")) {
                output.writeString(2, this.service);
            }
            if (this.time != 0) {
                output.writeInt64(3, this.time);
            }
            super.writeTo(output);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.nano.MessageNano
        public int computeSerializedSize() {
            int size = super.computeSerializedSize();
            if (!this.id.equals("")) {
                size += CodedOutputByteBufferNano.computeStringSize(1, this.id);
            }
            if (!this.service.equals("")) {
                size += CodedOutputByteBufferNano.computeStringSize(2, this.service);
            }
            if (this.time != 0) {
                return size + CodedOutputByteBufferNano.computeInt64Size(3, this.time);
            }
            return size;
        }

        @Override // com.google.protobuf.nano.MessageNano
        public PbDevServiceInfo mergeFrom(CodedInputByteBufferNano input) throws IOException {
            while (true) {
                int tag = input.readTag();
                switch (tag) {
                    case 0:
                        break;
                    case 10:
                        this.id = input.readString();
                        break;
                    case 18:
                        this.service = input.readString();
                        break;
                    case 24:
                        this.time = input.readInt64();
                        break;
                    default:
                        if (!WireFormatNano.parseUnknownField(input, tag)) {
                            break;
                        } else {
                            break;
                        }
                }
            }
            return this;
        }

        private void patchPlaceholder() {
            Log.i("NGPush_ProtoClient", PatchPlaceholder.class.getSimpleName());
        }

        public static PbDevServiceInfo parseFrom(byte[] data) throws InvalidProtocolBufferNanoException {
            return (PbDevServiceInfo) MessageNano.mergeFrom(new PbDevServiceInfo(), data);
        }

        public static PbDevServiceInfo parseFrom(CodedInputByteBufferNano input) throws IOException {
            return new PbDevServiceInfo().mergeFrom(input);
        }
    }

    /* loaded from: classes.dex */
    public static final class PbServiceInfo extends MessageNano {
        private static volatile PbServiceInfo[] _emptyArray;
        public String service;
        public long time;

        public static PbServiceInfo[] emptyArray() {
            if (_emptyArray == null) {
                synchronized (InternalNano.LAZY_INIT_LOCK) {
                    if (_emptyArray == null) {
                        _emptyArray = new PbServiceInfo[0];
                    }
                }
            }
            return _emptyArray;
        }

        public PbServiceInfo() {
            clear();
        }

        public PbServiceInfo clear() {
            this.service = "";
            this.time = 0L;
            this.cachedSize = -1;
            return this;
        }

        @Override // com.google.protobuf.nano.MessageNano
        public void writeTo(CodedOutputByteBufferNano output) throws IOException {
            if (!this.service.equals("")) {
                output.writeString(1, this.service);
            }
            if (this.time != 0) {
                output.writeInt64(2, this.time);
            }
            super.writeTo(output);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.nano.MessageNano
        public int computeSerializedSize() {
            int size = super.computeSerializedSize();
            if (!this.service.equals("")) {
                size += CodedOutputByteBufferNano.computeStringSize(1, this.service);
            }
            if (this.time != 0) {
                return size + CodedOutputByteBufferNano.computeInt64Size(2, this.time);
            }
            return size;
        }

        @Override // com.google.protobuf.nano.MessageNano
        public PbServiceInfo mergeFrom(CodedInputByteBufferNano input) throws IOException {
            while (true) {
                int tag = input.readTag();
                switch (tag) {
                    case 0:
                        break;
                    case 10:
                        this.service = input.readString();
                        break;
                    case 16:
                        this.time = input.readInt64();
                        break;
                    default:
                        if (!WireFormatNano.parseUnknownField(input, tag)) {
                            break;
                        } else {
                            break;
                        }
                }
            }
            return this;
        }

        public static PbServiceInfo parseFrom(byte[] data) throws InvalidProtocolBufferNanoException {
            return (PbServiceInfo) MessageNano.mergeFrom(new PbServiceInfo(), data);
        }

        public static PbServiceInfo parseFrom(CodedInputByteBufferNano input) throws IOException {
            return new PbServiceInfo().mergeFrom(input);
        }
    }

    /* loaded from: classes.dex */
    public static final class PbLoginInfo extends MessageNano {
        private static volatile PbLoginInfo[] _emptyArray;
        public String id;
        public String key;
        public PbServiceInfo[] serviceinfos;
        public String ver;

        public static PbLoginInfo[] emptyArray() {
            if (_emptyArray == null) {
                synchronized (InternalNano.LAZY_INIT_LOCK) {
                    if (_emptyArray == null) {
                        _emptyArray = new PbLoginInfo[0];
                    }
                }
            }
            return _emptyArray;
        }

        public PbLoginInfo() {
            clear();
        }

        public PbLoginInfo clear() {
            this.id = "";
            this.serviceinfos = PbServiceInfo.emptyArray();
            this.ver = "";
            this.key = "";
            this.cachedSize = -1;
            return this;
        }

        @Override // com.google.protobuf.nano.MessageNano
        public void writeTo(CodedOutputByteBufferNano output) throws IOException {
            if (!this.id.equals("")) {
                output.writeString(1, this.id);
            }
            if (this.serviceinfos != null && this.serviceinfos.length > 0) {
                for (int i = 0; i < this.serviceinfos.length; i++) {
                    PbServiceInfo element = this.serviceinfos[i];
                    if (element != null) {
                        output.writeMessage(2, element);
                    }
                }
            }
            if (!this.ver.equals("")) {
                output.writeString(3, this.ver);
            }
            if (!this.key.equals("")) {
                output.writeString(4, this.key);
            }
            super.writeTo(output);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.nano.MessageNano
        public int computeSerializedSize() {
            int size = super.computeSerializedSize();
            if (!this.id.equals("")) {
                size += CodedOutputByteBufferNano.computeStringSize(1, this.id);
            }
            if (this.serviceinfos != null && this.serviceinfos.length > 0) {
                for (int i = 0; i < this.serviceinfos.length; i++) {
                    PbServiceInfo element = this.serviceinfos[i];
                    if (element != null) {
                        size += CodedOutputByteBufferNano.computeMessageSize(2, element);
                    }
                }
            }
            if (!this.ver.equals("")) {
                size += CodedOutputByteBufferNano.computeStringSize(3, this.ver);
            }
            if (!this.key.equals("")) {
                return size + CodedOutputByteBufferNano.computeStringSize(4, this.key);
            }
            return size;
        }

        @Override // com.google.protobuf.nano.MessageNano
        public PbLoginInfo mergeFrom(CodedInputByteBufferNano input) throws IOException {
            while (true) {
                int tag = input.readTag();
                switch (tag) {
                    case 0:
                        break;
                    case 10:
                        this.id = input.readString();
                        break;
                    case 18:
                        int arrayLength = WireFormatNano.getRepeatedFieldArrayLength(input, 18);
                        int i = this.serviceinfos == null ? 0 : this.serviceinfos.length;
                        PbServiceInfo[] newArray = new PbServiceInfo[i + arrayLength];
                        if (i != 0) {
                            System.arraycopy(this.serviceinfos, 0, newArray, 0, i);
                        }
                        while (i < newArray.length - 1) {
                            newArray[i] = new PbServiceInfo();
                            input.readMessage(newArray[i]);
                            input.readTag();
                            i++;
                        }
                        newArray[i] = new PbServiceInfo();
                        input.readMessage(newArray[i]);
                        this.serviceinfos = newArray;
                        break;
                    case WXMediaMessage.IMediaObject.TYPE_EMOTIONLIST_SHARED /* 26 */:
                        this.ver = input.readString();
                        break;
                    case 34:
                        this.key = input.readString();
                        break;
                    default:
                        if (!WireFormatNano.parseUnknownField(input, tag)) {
                            break;
                        } else {
                            break;
                        }
                }
            }
            return this;
        }

        public static PbLoginInfo parseFrom(byte[] data) throws InvalidProtocolBufferNanoException {
            return (PbLoginInfo) MessageNano.mergeFrom(new PbLoginInfo(), data);
        }

        public static PbLoginInfo parseFrom(CodedInputByteBufferNano input) throws IOException {
            return new PbLoginInfo().mergeFrom(input);
        }
    }

    /* loaded from: classes.dex */
    public static final class PbNewIdInfo extends MessageNano {
        private static volatile PbNewIdInfo[] _emptyArray;
        public String id;

        public static PbNewIdInfo[] emptyArray() {
            if (_emptyArray == null) {
                synchronized (InternalNano.LAZY_INIT_LOCK) {
                    if (_emptyArray == null) {
                        _emptyArray = new PbNewIdInfo[0];
                    }
                }
            }
            return _emptyArray;
        }

        public PbNewIdInfo() {
            clear();
        }

        public PbNewIdInfo clear() {
            this.id = "";
            this.cachedSize = -1;
            return this;
        }

        @Override // com.google.protobuf.nano.MessageNano
        public void writeTo(CodedOutputByteBufferNano output) throws IOException {
            if (!this.id.equals("")) {
                output.writeString(1, this.id);
            }
            super.writeTo(output);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.nano.MessageNano
        public int computeSerializedSize() {
            int size = super.computeSerializedSize();
            if (!this.id.equals("")) {
                return size + CodedOutputByteBufferNano.computeStringSize(1, this.id);
            }
            return size;
        }

        @Override // com.google.protobuf.nano.MessageNano
        public PbNewIdInfo mergeFrom(CodedInputByteBufferNano input) throws IOException {
            while (true) {
                int tag = input.readTag();
                switch (tag) {
                    case 0:
                        break;
                    case 10:
                        this.id = input.readString();
                        break;
                    default:
                        if (!WireFormatNano.parseUnknownField(input, tag)) {
                            break;
                        } else {
                            break;
                        }
                }
            }
            return this;
        }

        public static PbNewIdInfo parseFrom(byte[] data) throws InvalidProtocolBufferNanoException {
            return (PbNewIdInfo) MessageNano.mergeFrom(new PbNewIdInfo(), data);
        }

        public static PbNewIdInfo parseFrom(CodedInputByteBufferNano input) throws IOException {
            return new PbNewIdInfo().mergeFrom(input);
        }
    }

    /* loaded from: classes.dex */
    public static final class PbMessage extends MessageNano {
        private static volatile PbMessage[] _emptyArray;
        public String content;
        public String ext;
        public int mode;
        public String packagename;
        public String service;
        public long tTL;
        public long time;
        public String title;

        public static PbMessage[] emptyArray() {
            if (_emptyArray == null) {
                synchronized (InternalNano.LAZY_INIT_LOCK) {
                    if (_emptyArray == null) {
                        _emptyArray = new PbMessage[0];
                    }
                }
            }
            return _emptyArray;
        }

        public PbMessage() {
            clear();
        }

        public PbMessage clear() {
            this.content = "";
            this.time = 0L;
            this.service = "";
            this.packagename = "";
            this.mode = 0;
            this.ext = "";
            this.title = "";
            this.tTL = 0L;
            this.cachedSize = -1;
            return this;
        }

        @Override // com.google.protobuf.nano.MessageNano
        public void writeTo(CodedOutputByteBufferNano output) throws IOException {
            if (!this.content.equals("")) {
                output.writeString(1, this.content);
            }
            if (this.time != 0) {
                output.writeInt64(2, this.time);
            }
            if (!this.service.equals("")) {
                output.writeString(3, this.service);
            }
            if (!this.packagename.equals("")) {
                output.writeString(4, this.packagename);
            }
            if (this.mode != 0) {
                output.writeInt32(5, this.mode);
            }
            if (!this.ext.equals("")) {
                output.writeString(6, this.ext);
            }
            if (!this.title.equals("")) {
                output.writeString(7, this.title);
            }
            if (this.tTL != 0) {
                output.writeInt64(8, this.tTL);
            }
            super.writeTo(output);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.nano.MessageNano
        public int computeSerializedSize() {
            int size = super.computeSerializedSize();
            if (!this.content.equals("")) {
                size += CodedOutputByteBufferNano.computeStringSize(1, this.content);
            }
            if (this.time != 0) {
                size += CodedOutputByteBufferNano.computeInt64Size(2, this.time);
            }
            if (!this.service.equals("")) {
                size += CodedOutputByteBufferNano.computeStringSize(3, this.service);
            }
            if (!this.packagename.equals("")) {
                size += CodedOutputByteBufferNano.computeStringSize(4, this.packagename);
            }
            if (this.mode != 0) {
                size += CodedOutputByteBufferNano.computeInt32Size(5, this.mode);
            }
            if (!this.ext.equals("")) {
                size += CodedOutputByteBufferNano.computeStringSize(6, this.ext);
            }
            if (!this.title.equals("")) {
                size += CodedOutputByteBufferNano.computeStringSize(7, this.title);
            }
            if (this.tTL != 0) {
                return size + CodedOutputByteBufferNano.computeInt64Size(8, this.tTL);
            }
            return size;
        }

        @Override // com.google.protobuf.nano.MessageNano
        public PbMessage mergeFrom(CodedInputByteBufferNano input) throws IOException {
            while (true) {
                int tag = input.readTag();
                switch (tag) {
                    case 0:
                        break;
                    case 10:
                        this.content = input.readString();
                        break;
                    case 16:
                        this.time = input.readInt64();
                        break;
                    case WXMediaMessage.IMediaObject.TYPE_EMOTIONLIST_SHARED /* 26 */:
                        this.service = input.readString();
                        break;
                    case 34:
                        this.packagename = input.readString();
                        break;
                    case 40:
                        this.mode = input.readInt32();
                        break;
                    case 50:
                        this.ext = input.readString();
                        break;
                    case 58:
                        this.title = input.readString();
                        break;
                    case 64:
                        this.tTL = input.readInt64();
                        break;
                    default:
                        if (!WireFormatNano.parseUnknownField(input, tag)) {
                            break;
                        } else {
                            break;
                        }
                }
            }
            return this;
        }

        public static PbMessage parseFrom(byte[] data) throws InvalidProtocolBufferNanoException {
            return (PbMessage) MessageNano.mergeFrom(new PbMessage(), data);
        }

        public static PbMessage parseFrom(CodedInputByteBufferNano input) throws IOException {
            return new PbMessage().mergeFrom(input);
        }
    }

    /* loaded from: classes.dex */
    public static final class PbMessageInfo extends MessageNano {
        private static volatile PbMessageInfo[] _emptyArray;
        public String id;
        public byte[][] messages;

        public static PbMessageInfo[] emptyArray() {
            if (_emptyArray == null) {
                synchronized (InternalNano.LAZY_INIT_LOCK) {
                    if (_emptyArray == null) {
                        _emptyArray = new PbMessageInfo[0];
                    }
                }
            }
            return _emptyArray;
        }

        public PbMessageInfo() {
            clear();
        }

        public PbMessageInfo clear() {
            this.id = "";
            this.messages = WireFormatNano.EMPTY_BYTES_ARRAY;
            this.cachedSize = -1;
            return this;
        }

        @Override // com.google.protobuf.nano.MessageNano
        public void writeTo(CodedOutputByteBufferNano output) throws IOException {
            if (!this.id.equals("")) {
                output.writeString(1, this.id);
            }
            if (this.messages != null && this.messages.length > 0) {
                for (int i = 0; i < this.messages.length; i++) {
                    byte[] element = this.messages[i];
                    if (element != null) {
                        output.writeBytes(2, element);
                    }
                }
            }
            super.writeTo(output);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.nano.MessageNano
        public int computeSerializedSize() {
            int size = super.computeSerializedSize();
            if (!this.id.equals("")) {
                size += CodedOutputByteBufferNano.computeStringSize(1, this.id);
            }
            if (this.messages != null && this.messages.length > 0) {
                int dataCount = 0;
                int dataSize = 0;
                for (int i = 0; i < this.messages.length; i++) {
                    byte[] element = this.messages[i];
                    if (element != null) {
                        dataCount++;
                        dataSize += CodedOutputByteBufferNano.computeBytesSizeNoTag(element);
                    }
                }
                return size + dataSize + (dataCount * 1);
            }
            return size;
        }

        @Override // com.google.protobuf.nano.MessageNano
        public PbMessageInfo mergeFrom(CodedInputByteBufferNano input) throws IOException {
            while (true) {
                int tag = input.readTag();
                switch (tag) {
                    case 0:
                        break;
                    case 10:
                        this.id = input.readString();
                        break;
                    case 18:
                        int arrayLength = WireFormatNano.getRepeatedFieldArrayLength(input, 18);
                        int i = this.messages == null ? 0 : this.messages.length;
                        byte[][] newArray = new byte[i + arrayLength];
                        if (i != 0) {
                            System.arraycopy(this.messages, 0, newArray, 0, i);
                        }
                        while (i < newArray.length - 1) {
                            newArray[i] = input.readBytes();
                            input.readTag();
                            i++;
                        }
                        newArray[i] = input.readBytes();
                        this.messages = newArray;
                        break;
                    default:
                        if (!WireFormatNano.parseUnknownField(input, tag)) {
                            break;
                        } else {
                            break;
                        }
                }
            }
            return this;
        }

        public static PbMessageInfo parseFrom(byte[] data) throws InvalidProtocolBufferNanoException {
            return (PbMessageInfo) MessageNano.mergeFrom(new PbMessageInfo(), data);
        }

        public static PbMessageInfo parseFrom(CodedInputByteBufferNano input) throws IOException {
            return new PbMessageInfo().mergeFrom(input);
        }
    }
}
