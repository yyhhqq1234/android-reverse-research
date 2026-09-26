package com.netease.mobsecurity.poly;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public abstract class c extends Binder implements b {
    public static final int a = 1;
    public static final int b = 2;
    public static final int c = 3;
    public static final int d = 4;
    public static final int e = 7;
    public static final int f = 9;
    public static final int g = 11;
    public static final int h = 13;
    private static String i = "'rC\u000b%sJW+tJ\u000b-sZ@6sOIjiKI!mFJ*d\u0000l\u0014uAK!N[G\rsHJ";
    private static String j = a.d(i, "D\u001d.%");

    public c() {
        attachInterface(this, j);
    }

    public static b a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface(j);
        return (queryLocalInterface == null || !(queryLocalInterface instanceof b)) ? new d(iBinder) : (b) queryLocalInterface;
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this;
    }

    @Override // android.os.Binder
    public boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i3) throws RemoteException {
        switch (i2) {
            case 1:
                parcel.enforceInterface(j);
                String a2 = a();
                parcel2.writeNoException();
                parcel2.writeString(a2);
                return true;
            case 2:
                parcel.enforceInterface(j);
                String a3 = a(parcel.readInt());
                parcel2.writeNoException();
                parcel2.writeString(a3);
                return true;
            case 3:
                parcel.enforceInterface(j);
                String b2 = b(parcel.readInt());
                parcel2.writeNoException();
                parcel2.writeString(b2);
                return true;
            case 4:
                parcel.enforceInterface(j);
                String c2 = c(parcel.readInt());
                parcel2.writeNoException();
                parcel2.writeString(c2);
                return true;
            case 7:
                parcel.enforceInterface(j);
                String b3 = b();
                parcel2.writeNoException();
                parcel2.writeString(b3);
                return true;
            case 9:
                parcel.enforceInterface(j);
                String c3 = c();
                parcel2.writeNoException();
                parcel2.writeString(c3);
                return true;
            case 11:
                parcel.enforceInterface(j);
                String d2 = d();
                parcel2.writeNoException();
                parcel2.writeString(d2);
                return true;
            case 13:
                parcel.enforceInterface(j);
                String e2 = e();
                parcel2.writeNoException();
                parcel2.writeString(e2);
                return true;
            case 1598968902:
                parcel2.writeString(j);
                return true;
            default:
                return super.onTransact(i2, parcel, parcel2, i3);
        }
    }
}
