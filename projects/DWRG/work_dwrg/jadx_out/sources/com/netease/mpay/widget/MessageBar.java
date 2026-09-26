package com.netease.mpay.widget;

import android.R;
import android.app.Activity;
import android.os.Handler;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AlphaAnimation;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.alipay.android.phone.mrpc.core.RpcException;
import com.dodola.rocoo.Hack;
import com.netease.mpay.widget.RIdentifier;
import java.lang.ref.SoftReference;
import java.util.LinkedList;

/* loaded from: classes.dex */
public class MessageBar {
    private static SparseArray d = new SparseArray();
    private View a;
    private TextView b;
    private Message e;
    private boolean f;
    private Handler g;
    private AlphaAnimation h;
    private AlphaAnimation i;
    private LinkedList c = new LinkedList();
    private final Runnable j = new aj(this);

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class Message implements Parcelable {
        public static final Parcelable.Creator CREATOR = new ak();
        final String a;
        final String b;
        final int c;
        final Parcelable d;
        int e;

        public Message(Parcel parcel) {
            this.e = RpcException.ErrorCode.SERVER_SESSIONSTATUS;
            this.a = parcel.readString();
            this.b = parcel.readString();
            this.c = parcel.readInt();
            this.d = parcel.readParcelable(getClass().getClassLoader());
            this.e = parcel.readInt();
        }

        public Message(String str, int i, String str2, int i2, Parcelable parcelable) {
            this.e = RpcException.ErrorCode.SERVER_SESSIONSTATUS;
            this.a = str;
            this.b = str2;
            this.c = i2;
            this.d = parcelable;
            this.e = i;
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeString(this.a);
            parcel.writeString(this.b);
            parcel.writeInt(this.c);
            parcel.writeParcelable(this.d, 0);
            parcel.writeInt(this.e);
        }
    }

    private MessageBar(Activity activity) {
        ViewGroup viewGroup = (ViewGroup) activity.findViewById(R.id.content);
        View inflate = activity.getLayoutInflater().inflate(RIdentifier.g.ak, viewGroup, false);
        viewGroup.addView(inflate, new ViewGroup.LayoutParams(viewGroup.getWidth(), viewGroup.getHeight()));
        a(inflate);
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    public static synchronized MessageBar a(Activity activity) {
        MessageBar messageBar;
        synchronized (MessageBar.class) {
            SoftReference softReference = (SoftReference) d.get(activity.hashCode());
            messageBar = softReference != null ? (MessageBar) softReference.get() : null;
            if (messageBar == null || messageBar.a.getWidth() == 0 || messageBar.a.getHeight() == 0) {
                messageBar = new MessageBar(activity);
                d.put(activity.hashCode(), new SoftReference(messageBar));
            }
        }
        return messageBar;
    }

    private void a(View view) {
        if (this.a == null) {
            this.a = view.findViewById(RIdentifier.f.f0do);
        }
        this.a.setVisibility(8);
        this.b = (TextView) view.findViewById(RIdentifier.f.dn);
        this.h = new AlphaAnimation(0.0f, 1.0f);
        this.i = new AlphaAnimation(1.0f, 0.0f);
        this.i.setDuration(600L);
        this.i.setAnimationListener(new ai(this));
        this.g = new Handler();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Message message) {
        a(message, false);
    }

    private void a(Message message, boolean z) {
        this.f = true;
        this.a.setVisibility(0);
        this.e = message;
        this.b.setText(message.a);
        if (message.b != null) {
            this.b.setGravity(19);
        } else {
            this.b.setGravity(17);
        }
        if (z) {
            this.h.setDuration(0L);
        } else {
            this.h.setDuration(600L);
        }
        this.a.startAnimation(this.h);
        this.g.postDelayed(this.j, message.e);
    }

    public void a(String str) {
        a(str, (String) null);
    }

    public void a(String str, int i, int i2, int i3) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.a.getLayoutParams();
        if (i2 < 0 && i3 < 0) {
            layoutParams.gravity = 17;
        } else if (i2 < 0) {
            layoutParams.gravity = 1;
            layoutParams.topMargin = i3;
        } else if (i3 < 0) {
            layoutParams.gravity = 16;
            layoutParams.leftMargin = i2;
        } else {
            layoutParams.leftMargin = i2;
            layoutParams.topMargin = i3;
        }
        layoutParams.width = -2;
        this.a.setLayoutParams(layoutParams);
        Message message = new Message(str, i, null, 0, null);
        if (this.f) {
            this.c.add(message);
        } else {
            a(message);
        }
    }

    public void a(String str, String str2) {
        a(str, str2, 0);
    }

    public void a(String str, String str2, int i) {
        a(str, str2, i, (Parcelable) null);
    }

    public void a(String str, String str2, int i, Parcelable parcelable) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.a.getLayoutParams();
        layoutParams.topMargin = 0;
        layoutParams.gravity = 17;
        this.a.setLayoutParams(layoutParams);
        Message message = new Message(str, RpcException.ErrorCode.SERVER_SESSIONSTATUS, str2, i, parcelable);
        if (this.f) {
            this.c.add(message);
        } else {
            a(message);
        }
    }
}
