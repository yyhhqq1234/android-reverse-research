package com.netease.epay.sdk.card;

import android.content.Context;
import android.content.Intent;
import com.netease.epay.sdk.card.ui.AddCardActivity;
import com.netease.epay.sdk.card.ui.ValidateCardActivity;

/* compiled from: JumpUtil.java */
/* loaded from: classes.dex */
public class a {
    public static void a(Context context, int i) {
        Intent intent = new Intent(context, (Class<?>) ValidateCardActivity.class);
        intent.putExtra("type", i);
        context.startActivity(intent);
    }

    public static void b(Context context, int i) {
        Intent intent = new Intent(context, (Class<?>) AddCardActivity.class);
        intent.putExtra("type", i);
        context.startActivity(intent);
    }
}
