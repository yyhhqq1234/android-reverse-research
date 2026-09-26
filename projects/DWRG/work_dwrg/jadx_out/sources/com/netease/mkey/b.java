package com.netease.mkey;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* compiled from: ILoginAuthServiceCallback.java */
/* loaded from: classes.dex */
public interface b extends IInterface {
    String a();

    void a(int i, String str);

    /* compiled from: ILoginAuthServiceCallback.java */
    /* loaded from: classes.dex */
    public static abstract class a extends Binder implements b {
        public a() {
            attachInterface(this, "com.netease.mkey.ILoginAuthServiceCallback");
        }

        public static b a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.netease.mkey.ILoginAuthServiceCallback");
            if (queryLocalInterface != null && (queryLocalInterface instanceof b)) {
                return (b) queryLocalInterface;
            }
            return new C0031a(iBinder);
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int code, Parcel data, Parcel reply, int flags) {
            switch (code) {
                case 1:
                    data.enforceInterface("com.netease.mkey.ILoginAuthServiceCallback");
                    a(data.readInt(), data.readString());
                    reply.writeNoException();
                    return true;
                case 2:
                    data.enforceInterface("com.netease.mkey.ILoginAuthServiceCallback");
                    String a = a();
                    reply.writeNoException();
                    reply.writeString(a);
                    return true;
                case 1598968902:
                    reply.writeString("com.netease.mkey.ILoginAuthServiceCallback");
                    return true;
                default:
                    return super.onTransact(code, data, reply, flags);
            }
        }

        /* compiled from: ILoginAuthServiceCallback.java */
        /* renamed from: com.netease.mkey.b$a$a, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        private static class C0031a implements b {
            private IBinder a;

            C0031a(IBinder iBinder) {
                this.a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.a;
            }

            @Override // com.netease.mkey.b
            public void a(int i, String str) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.netease.mkey.ILoginAuthServiceCallback");
                    obtain.writeInt(i);
                    obtain.writeString(str);
                    this.a.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.netease.mkey.b
            public String a() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.netease.mkey.ILoginAuthServiceCallback");
                    this.a.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }
    }
}
