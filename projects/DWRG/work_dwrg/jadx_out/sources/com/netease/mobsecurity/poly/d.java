package com.netease.mobsecurity.poly;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public class d implements b {
    private IBinder a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(IBinder iBinder) {
        this.a = iBinder;
    }

    @Override // com.netease.mobsecurity.poly.b
    public String a() throws RemoteException {
        String str;
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            str = c.j;
            obtain.writeInterfaceToken(str);
            this.a.transact(1, obtain, obtain2, 0);
            obtain2.readException();
            return obtain2.readString();
        } finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }

    @Override // com.netease.mobsecurity.poly.b
    public String a(int i) throws RemoteException {
        String str;
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            str = c.j;
            obtain.writeInterfaceToken(str);
            obtain.writeInt(i);
            this.a.transact(2, obtain, obtain2, 0);
            obtain2.readException();
            return obtain2.readString();
        } finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this.a;
    }

    @Override // com.netease.mobsecurity.poly.b
    public String b() throws RemoteException {
        String str;
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            str = c.j;
            obtain.writeInterfaceToken(str);
            this.a.transact(7, obtain, obtain2, 0);
            obtain2.readException();
            return obtain2.readString();
        } finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }

    @Override // com.netease.mobsecurity.poly.b
    public String b(int i) throws RemoteException {
        String str;
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            str = c.j;
            obtain.writeInterfaceToken(str);
            obtain.writeInt(i);
            this.a.transact(3, obtain, obtain2, 0);
            obtain2.readException();
            return obtain2.readString();
        } finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }

    @Override // com.netease.mobsecurity.poly.b
    public String c() throws RemoteException {
        String str;
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            str = c.j;
            obtain.writeInterfaceToken(str);
            this.a.transact(9, obtain, obtain2, 0);
            obtain2.readException();
            return obtain2.readString();
        } finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }

    @Override // com.netease.mobsecurity.poly.b
    public String c(int i) throws RemoteException {
        String str;
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            str = c.j;
            obtain.writeInterfaceToken(str);
            obtain.writeInt(i);
            this.a.transact(4, obtain, obtain2, 0);
            obtain2.readException();
            return obtain2.readString();
        } finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }

    @Override // com.netease.mobsecurity.poly.b
    public String d() throws RemoteException {
        String str;
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            str = c.j;
            obtain.writeInterfaceToken(str);
            this.a.transact(11, obtain, obtain2, 0);
            obtain2.readException();
            return obtain2.readString();
        } finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }

    @Override // com.netease.mobsecurity.poly.b
    public String e() throws RemoteException {
        String str;
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            str = c.j;
            obtain.writeInterfaceToken(str);
            this.a.transact(13, obtain, obtain2, 0);
            obtain2.readException();
            return obtain2.readString();
        } finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }

    public String f() {
        String str;
        str = c.j;
        return str;
    }
}
