package com.netease.mpay;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v4.view.MotionEventCompat;
import com.dodola.rocoo.Hack;
import com.netease.mpay.eb;
import com.netease.push.utils.PushConstants;
import com.tencent.mm.opensdk.modelmsg.WXMediaMessage;

/* loaded from: classes.dex */
public class b {

    /* loaded from: classes.dex */
    public enum a {
        NetTestActivity,
        LoginActivity,
        UrsLoginActivity,
        UrsLoginByPasswordActivity,
        UrsLoginByPasswordSmsActivity,
        BindUrsActivity,
        ExitDialogActivity,
        ShareActivity,
        WeiboSSOLoginActivity,
        WeixinLoginActivity,
        QQLoginActivity,
        MobileLoginActivity,
        GoogleLoginActivity,
        FacebookLoginActivity,
        BindLoginActivity,
        AppealActivity,
        PermissionActivity,
        PayChannelDispatcherActivity,
        EpayActivity,
        PayLoaderActivity,
        EcardActivity,
        McardActivity,
        UppayActivity,
        BankCardPayActivity,
        AlipayActivity,
        WeixinPayActivity,
        TenpayActivity,
        PrepayChannelSelectorActivity,
        PrepayMcardActivity,
        PrepayEcardActivity,
        PrepayEcardSelectorActivity,
        ScanCodeActivity,
        ScanCodeLoginActivity,
        ScanCodePayActivity,
        LoginLoaderActivity,
        WeiboLoginActivity,
        RegistrationActivity,
        WebLinksActivity,
        ShareWebActivity,
        UserCenterActivity,
        MobileManagementActivity,
        UserMessageCenterActivity,
        UserMessageDetailActivity,
        FeedbackActivity,
        SetRealnameActivity,
        SetRelatedMobileActivity,
        LoginAssistActivity,
        EnterGameLoginActivity;

        a() {
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public Intent a(Activity activity, Bundle bundle, Class cls) {
            Intent intent = new Intent(activity, (Class<?>) cls);
            intent.setAction(b());
            if (bundle != null) {
                intent.putExtras(bundle);
            }
            return intent;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public Intent a(Activity activity, com.netease.mpay.b.a aVar, C0036b c0036b) {
            if (c0036b == null || !eb.a.b(activity)) {
                return a(activity, aVar.e(), (RegistrationActivity != this || aVar.c().mCustomActivityClass == null) ? a() : aVar.c().mCustomActivityClass);
            }
            return LoginAssistActivity.a(activity, new com.netease.mpay.b.j(aVar.d(), c0036b.a, this, aVar), (C0036b) null);
        }

        public static com.netease.mpay.a a(FragmentActivity fragmentActivity) {
            switch (c.a[a(fragmentActivity.getIntent().getAction()).ordinal()]) {
                case 1:
                    return new eb(fragmentActivity);
                case 2:
                    return new bu(fragmentActivity);
                case 3:
                    return new ij(fragmentActivity);
                case 4:
                    return new bz(fragmentActivity);
                case 5:
                    return new iz(fragmentActivity);
                case 6:
                    return new bl(fragmentActivity);
                case 7:
                    return new ed(fragmentActivity);
                case 8:
                    return new li(fragmentActivity);
                case 9:
                    return new x(fragmentActivity);
                case 10:
                    return new e(fragmentActivity);
                case 11:
                    return new ox(fragmentActivity);
                case 12:
                    return new lh(fragmentActivity);
                case 13:
                    return new jb(fragmentActivity);
                case 14:
                    return new kd(fragmentActivity);
                case 15:
                    return new jg(fragmentActivity);
                case 16:
                    return new jt(fragmentActivity);
                case 17:
                    return new com.netease.mpay.codescanner.e(fragmentActivity);
                case 18:
                    return new com.netease.mpay.codescanner.m(fragmentActivity);
                case 19:
                    return new com.netease.mpay.codescanner.y(fragmentActivity);
                case 20:
                    return new ec(fragmentActivity);
                case MotionEventCompat.AXIS_WHEEL /* 21 */:
                    return new le(fragmentActivity);
                case MotionEventCompat.AXIS_GAS /* 22 */:
                    return new oj(fragmentActivity);
                case 23:
                    return new oi(fragmentActivity);
                case 24:
                    return new com.netease.mpay.sharer.g(fragmentActivity);
                case 25:
                    return new nc(fragmentActivity);
                case WXMediaMessage.IMediaObject.TYPE_EMOTIONLIST_SHARED /* 26 */:
                    return new fi(fragmentActivity);
                case 27:
                    return new np(fragmentActivity);
                case 28:
                    return new oc(fragmentActivity);
                case 29:
                    return new ck(fragmentActivity);
                case 30:
                    return new lf(fragmentActivity);
                case PushConstants.WORKDAY /* 31 */:
                    return new lg(fragmentActivity);
                case 32:
                    return new hl(fragmentActivity);
                case 33:
                    return new dp(fragmentActivity);
                case 34:
                    return new lq(fragmentActivity);
                case MotionEventCompat.AXIS_GENERIC_4 /* 35 */:
                    return new mb(fragmentActivity);
                case 36:
                    return new mk(fragmentActivity);
                case MotionEventCompat.AXIS_GENERIC_6 /* 37 */:
                    return new al(fragmentActivity);
                case 38:
                    return new ce(fragmentActivity);
                case 39:
                    return new com.netease.mpay.sharer.b(fragmentActivity);
                case 40:
                    return new om(fragmentActivity);
                case MotionEventCompat.AXIS_GENERIC_10 /* 41 */:
                    return new or(fragmentActivity);
                case MotionEventCompat.AXIS_GENERIC_11 /* 42 */:
                    return new kr(fragmentActivity);
                case 43:
                    return new ex(fragmentActivity);
                case MotionEventCompat.AXIS_GENERIC_13 /* 44 */:
                    return new com.netease.mpay.a.k(fragmentActivity);
                case 45:
                    return new com.netease.mpay.a.e(fragmentActivity);
                case MotionEventCompat.AXIS_GENERIC_15 /* 46 */:
                    return new ah(fragmentActivity);
                case MotionEventCompat.AXIS_GENERIC_16 /* 47 */:
                    return new o(fragmentActivity);
                case 48:
                    return new ja(fragmentActivity);
                default:
                    return null;
            }
        }

        private static a a(int i) {
            try {
                return values()[i];
            } catch (Exception e) {
                return LoginActivity;
            }
        }

        private static a a(String str) {
            try {
                return a(valueOf(str).ordinal());
            } catch (Exception e) {
                return LoginActivity;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public Class a() {
            switch (c.a[ordinal()]) {
                case 1:
                case 2:
                    return MpayLoginActionBarActivity.class;
                case 3:
                case 4:
                case 5:
                case 6:
                case 7:
                case 8:
                case 9:
                case 10:
                case 11:
                case 12:
                case 13:
                case 14:
                case 15:
                case 16:
                case 17:
                case 18:
                case 19:
                case 20:
                case MotionEventCompat.AXIS_WHEEL /* 21 */:
                case MotionEventCompat.AXIS_GAS /* 22 */:
                case 23:
                case 24:
                case 25:
                case WXMediaMessage.IMediaObject.TYPE_EMOTIONLIST_SHARED /* 26 */:
                case 27:
                case 28:
                case 29:
                case 30:
                case PushConstants.WORKDAY /* 31 */:
                    return MpayActivity.class;
                default:
                    return MpayLoginActivity.class;
            }
        }

        private String b() {
            return name();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.netease.mpay.b$b, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0036b {
        boolean a;

        /* JADX INFO: Access modifiers changed from: package-private */
        public C0036b(boolean z) {
            this.a = z;
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }
    }

    private static void a(Activity activity, Intent intent, Integer num) {
        if (num != null) {
            activity.startActivityForResult(intent, num.intValue());
        } else {
            activity.startActivity(intent);
        }
    }

    public static void a(Activity activity, a aVar, Bundle bundle, Integer num) {
        a(activity, aVar.a(activity, bundle, aVar.a()), num);
    }

    public static void a(Activity activity, a aVar, com.netease.mpay.b.a aVar2, C0036b c0036b, Integer num) {
        a(activity, aVar.a(activity, aVar2, c0036b), num);
    }
}
