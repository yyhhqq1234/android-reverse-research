package com.netease.mkey;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.netease.mkey.b;

/* compiled from: ILoginAuthService.java */
/* loaded from: classes.dex */
public interface a extends IInterface {
    void a(String str, b bVar);

    /* compiled from: ILoginAuthService.java */
    /* renamed from: com.netease.mkey.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static abstract class AbstractBinderC0029a extends Binder implements a {
        public static a a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.netease.mkey.ILoginAuthService");
            if (queryLocalInterface != null && (queryLocalInterface instanceof a)) {
                return (a) queryLocalInterface;
            }
            return new C0030a(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int code, Parcel data, Parcel reply, int flags) {
            switch (code) {
                case 1:
                    data.enforceInterface("com.netease.mkey.ILoginAuthService");
                    a(data.readString(), b.a.a(data.readStrongBinder()));
                    reply.writeNoException();
                    return true;
                case 1598968902:
                    reply.writeString("com.netease.mkey.ILoginAuthService");
                    return true;
                default:
                    return super.onTransact(code, data, reply, flags);
            }
        }

        /* compiled from: ILoginAuthService.java */
        /* renamed from: com.netease.mkey.a$a$a, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        private static class C0030a implements a {
            private IBinder a;

            C0030a(IBinder iBinder) {
                this.a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.a;
            }

            @Override // com.netease.mkey.a
            public void a(String str, b bVar) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.netease.mkey.ILoginAuthService");
                    obtain.writeString(str);
                    obtain.writeStrongBinder(bVar != null ? bVar.asBinder() : null);
                    this.a.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }
    }
}
