package com.netease.mpay.widget.webview.js;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.os.Parcelable;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.widget.Toast;
import com.dodola.rocoo.Hack;
import com.sina.weibo.sdk.constant.WBConstants;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class AdvancedWebChromeClient extends WebChromeClient {
    protected WeakReference a;
    protected Integer b;
    private ValueCallback c;
    private ValueCallback d;
    private String e;

    public AdvancedWebChromeClient() {
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @SuppressLint({"NewApi"})
    private Intent a(String str) {
        File file = new File(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_PICTURES), "tmp");
        if (!file.exists()) {
            file.mkdirs();
        }
        this.e = file + File.separator + "IMG_" + String.valueOf(System.currentTimeMillis()) + ".jpg";
        Uri fromFile = Uri.fromFile(new File(this.e));
        Activity activity = (Activity) this.a.get();
        if (activity == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        Intent intent = new Intent("android.media.action.IMAGE_CAPTURE");
        for (ResolveInfo resolveInfo : activity.getPackageManager().queryIntentActivities(intent, 0)) {
            String str2 = resolveInfo.activityInfo.packageName;
            Intent intent2 = new Intent(intent);
            intent2.setComponent(new ComponentName(resolveInfo.activityInfo.packageName, resolveInfo.activityInfo.name));
            intent2.setPackage(str2);
            intent2.putExtra("output", fromFile);
            arrayList.add(intent2);
        }
        Intent intent3 = new Intent("android.intent.action.GET_CONTENT");
        intent3.addCategory("android.intent.category.OPENABLE");
        intent3.setType(str);
        Intent createChooser = Intent.createChooser(intent3, h.a(activity, "netease_mpay_webview_js__select_file_title"));
        createChooser.putExtra("android.intent.extra.INITIAL_INTENTS", (Parcelable[]) arrayList.toArray(new Parcelable[0]));
        return createChooser;
    }

    @SuppressLint({"DefaultLocale"})
    private boolean a(String[] strArr) {
        if (strArr == null || strArr.length != 1) {
            return false;
        }
        String str = strArr[0];
        return str != null && str.toLowerCase().contains(WBConstants.GAME_PARAMS_GAME_IMAGE_URL);
    }

    private Intent b(String[] strArr) {
        Intent intent = new Intent("android.intent.action.GET_CONTENT");
        intent.addCategory("android.intent.category.OPENABLE");
        if (strArr == null || strArr.length < 1) {
            intent.setType("*/*");
        } else {
            for (String str : strArr) {
                intent.setType(str);
            }
        }
        return intent;
    }

    protected void a(ValueCallback valueCallback, ValueCallback valueCallback2, String[] strArr) {
        if (this.a == null || this.a.get() == null) {
            return;
        }
        Activity activity = (Activity) this.a.get();
        if (this.c != null) {
            this.c.onReceiveValue(null);
        }
        this.c = valueCallback;
        if (this.d != null) {
            this.d.onReceiveValue(null);
        }
        this.d = valueCallback2;
        try {
            activity.startActivityForResult((!a(strArr) || Build.VERSION.SDK_INT <= 7) ? b(strArr) : a(strArr[0]), this.b.intValue());
        } catch (ActivityNotFoundException e) {
            Toast.makeText(activity, h.a(activity, "netease_mpay_webview_js__failed_to_select_file"), 1).show();
            g.a(e);
        }
    }

    public void enableUploadFiles(Activity activity, Integer num) {
        if (activity != null) {
            this.a = new WeakReference(activity);
        }
        this.b = num;
    }

    @Override // android.webkit.WebChromeClient
    @SuppressLint({"NewApi"})
    public boolean onShowFileChooser(WebView webView, ValueCallback valueCallback, WebChromeClient.FileChooserParams fileChooserParams) {
        a(null, valueCallback, fileChooserParams != null ? fileChooserParams.getAcceptTypes() : null);
        return true;
    }

    public void openFileChooser(ValueCallback valueCallback) {
        openFileChooser(valueCallback, null);
    }

    public void openFileChooser(ValueCallback valueCallback, String str) {
        openFileChooser(valueCallback, str, null);
    }

    public void openFileChooser(ValueCallback valueCallback, String str, String str2) {
        a(valueCallback, null, new String[]{str});
    }

    public void uploadFiles(int i, Intent intent) {
        Uri[] uriArr;
        boolean z = this.e != null && new File(this.e).exists();
        if (i == -1 && (z || intent != null)) {
            Uri fromFile = z ? Uri.fromFile(new File(this.e)) : intent.getData();
            if (this.c != null) {
                this.c.onReceiveValue(fromFile);
                this.c = null;
            } else if (this.d != null) {
                try {
                    uriArr = new Uri[]{fromFile};
                } catch (Exception e) {
                    uriArr = null;
                }
                this.d.onReceiveValue(uriArr);
                this.d = null;
            }
        } else if (this.c != null) {
            this.c.onReceiveValue(null);
            this.c = null;
        } else if (this.d != null) {
            this.d.onReceiveValue(null);
            this.d = null;
        }
        this.e = null;
    }
}
