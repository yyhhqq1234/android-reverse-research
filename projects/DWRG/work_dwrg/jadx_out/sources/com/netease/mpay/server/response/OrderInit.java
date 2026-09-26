package com.netease.mpay.server.response;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.widget.TextView;
import com.dodola.rocoo.Hack;
import com.netease.mpay.widget.RIdentifier;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public class OrderInit extends ac {
    public String a;
    public String b;
    public String c;
    public String d;
    public String e;
    public ArrayList f;

    /* loaded from: classes.dex */
    public static class PayChannel implements Parcelable {
        public static final Parcelable.Creator CREATOR = new y();
        public String a;
        public String b;
        public String c;
        public String d;
        public boolean e;
        public String f;
        public String g;
        public String h;
        public String i;
        public boolean j;
        public int k;
        public int l;
        public String m;

        public PayChannel() {
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public PayChannel(Parcel parcel) {
            this.a = parcel.readString();
            this.b = parcel.readString();
            this.c = parcel.readString();
            this.d = parcel.readString();
            this.e = parcel.readByte() != 0;
            this.f = parcel.readString();
            this.g = parcel.readString();
            this.h = parcel.readString();
            this.i = parcel.readString();
            this.j = parcel.readByte() != 0;
            this.k = parcel.readInt();
            this.l = parcel.readInt();
            this.m = parcel.readString();
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeString(this.a);
            parcel.writeString(this.b);
            parcel.writeString(this.c);
            parcel.writeString(this.d);
            parcel.writeByte(this.e ? (byte) 1 : (byte) 0);
            parcel.writeString(this.f);
            parcel.writeString(this.g);
            parcel.writeString(this.h);
            parcel.writeString(this.i);
            parcel.writeByte(this.j ? (byte) 1 : (byte) 0);
            parcel.writeInt(this.k);
            parcel.writeInt(this.l);
            parcel.writeString(this.m);
        }
    }

    public OrderInit() {
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    public static void a(Context context, TextView textView, int i) {
        textView.setText(i > 0 ? context.getString(RIdentifier.h.s, Integer.valueOf(i)) : "  ");
        textView.setVisibility(0);
    }

    @Nullable
    public PayChannel a(@NonNull String str) {
        if (this.f == null) {
            return null;
        }
        Iterator it = this.f.iterator();
        while (it.hasNext()) {
            PayChannel payChannel = (PayChannel) it.next();
            if (payChannel.e && payChannel.a != null && str.equals(payChannel.a)) {
                return payChannel;
            }
        }
        return null;
    }

    public boolean a() {
        PayChannel a = a("ecard");
        return a != null && a.e;
    }

    public int b() {
        return (int) Math.ceil(Float.valueOf(this.d).floatValue() * 10.0f);
    }
}
