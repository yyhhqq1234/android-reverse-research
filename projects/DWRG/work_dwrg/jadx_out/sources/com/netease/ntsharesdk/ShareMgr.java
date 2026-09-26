package com.netease.ntsharesdk;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.net.Uri;
import android.text.format.Time;
import im.yixin.sdk.http.multipart.StringPart;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;

/* loaded from: classes.dex */
public class ShareMgr {
    private static ShareMgr inst = new ShareMgr();
    private String lastPlatform;
    private HashMap<String, Object> currentPlatform = null;
    private HashMap<String, Boolean> installedPlatfrom = null;
    private Time lastCheckInstalledPlatform = null;
    private String shareViewTitle = "分享";
    private OnShareEndListener shareEndListener = null;
    private Context myCtx = null;

    public static ShareMgr getInst() {
        return inst;
    }

    private ShareMgr() {
    }

    public void addPlatformSdk(String className) {
        String platformName = className.substring(32);
        if (Platform.hasPlatform(platformName)) {
            try {
                Class<?> localClass = Class.forName(className);
                if (localClass != null) {
                    this.currentPlatform.put(platformName, localClass);
                    Platform.dLog("sdk " + platformName + " found");
                }
            } catch (Throwable localThrowable3) {
                localThrowable3.printStackTrace();
            }
        }
    }

    private void checkCurrentPlatform(boolean noCheck) {
        if (this.currentPlatform == null) {
            this.currentPlatform = new HashMap<>();
            if (noCheck) {
                Platform.dLog("do not checkCurrentPlatform");
                return;
            }
            String jsonStr = null;
            try {
                InputStream is = this.myCtx.getAssets().open("ntshare_data", 3);
                int index = is.available();
                byte[] data = new byte[index];
                is.read(data);
                String jsonStr2 = new String(data, "UTF-8");
                jsonStr = jsonStr2;
            } catch (IOException e) {
                Platform.dLog("read ntshare_data error :" + e.getMessage());
            }
            Platform.dLog("read ntshare_data:" + jsonStr);
            if (jsonStr != null) {
                JSONTokener jsonParser = new JSONTokener(jsonStr);
                try {
                    JSONObject conf = (JSONObject) jsonParser.nextValue();
                    if (conf.has(this.myCtx.getPackageName())) {
                        conf = conf.getJSONObject(this.myCtx.getPackageName());
                    }
                    Iterator<String> it = Platform.getAllSupportPlatform().iterator();
                    while (it.hasNext()) {
                        String key = it.next();
                        if (conf.has(key)) {
                            Platform.dLog("checkCurrentPlatform:" + key);
                            addPlatformSdk("com.netease.ntsharesdk.platform." + key);
                        }
                    }
                } catch (JSONException e2) {
                    Platform.dLog("read ntshare_data error :" + e2.getMessage());
                }
            }
        }
    }

    private void checkInstalledPlatform() {
        Platform.dLog("checkInstalledPlatform...");
        if (this.lastCheckInstalledPlatform == null || new Time().gmtoff - this.lastCheckInstalledPlatform.gmtoff >= 7200) {
            this.lastCheckInstalledPlatform = new Time();
            this.installedPlatfrom = new HashMap<>();
            ArrayList<String> supportPlatform = Platform.getAllSupportPlatform();
            Iterator<String> it = supportPlatform.iterator();
            while (it.hasNext()) {
                String pf = it.next();
                this.installedPlatfrom.put(Platform.getPlatformAppName(pf), false);
            }
            List<ApplicationInfo> apps = this.myCtx.getPackageManager().getInstalledApplications(0);
            for (int i = 0; i < apps.size(); i++) {
                ApplicationInfo app = apps.get(i);
                if (this.installedPlatfrom.containsKey(app.packageName)) {
                    this.installedPlatfrom.put(app.packageName, true);
                }
            }
        }
    }

    public Platform getPlatform(String platform) {
        if (this.currentPlatform != null && this.currentPlatform.containsKey(platform)) {
            if (!(this.currentPlatform.get(platform) instanceof Platform)) {
                Platform.dLog("init sdk classs");
                Class<?> localClass = (Class) this.currentPlatform.get(platform);
                try {
                    Constructor<?> localConstructor = localClass.getConstructor(Context.class);
                    localConstructor.setAccessible(true);
                    Object localObject = localConstructor.newInstance(this.myCtx);
                    this.currentPlatform.put(platform, (Platform) localObject);
                    ((Platform) localObject).initSdk();
                } catch (IllegalAccessException e) {
                    e.printStackTrace();
                } catch (IllegalArgumentException e2) {
                    e2.printStackTrace();
                } catch (InstantiationException e3) {
                    e3.printStackTrace();
                } catch (NoSuchMethodException e4) {
                    e4.printStackTrace();
                } catch (InvocationTargetException e5) {
                    e5.printStackTrace();
                }
            }
            if (this.currentPlatform.get(platform) instanceof Platform) {
                Platform.dLog("direct get platform");
                return (Platform) this.currentPlatform.get(platform);
            }
        }
        return null;
    }

    public Boolean hasPlatform(String platform) {
        if (platform.equals(Platform.OTHER)) {
            return true;
        }
        if (this.installedPlatfrom.containsKey(Platform.getPlatformAppName(platform)) && this.installedPlatfrom.get(Platform.getPlatformAppName(platform)).booleanValue() && this.currentPlatform.containsKey(platform)) {
            return true;
        }
        return false;
    }

    public void share(final ShareArgs args, final String pfName, final Activity act) {
        Platform.dLog("ShareArgs:" + args);
        ((Activity) this.myCtx).runOnUiThread(new Runnable() { // from class: com.netease.ntsharesdk.ShareMgr.1
            @Override // java.lang.Runnable
            public void run() {
                String platform = pfName == null ? Platform.OTHER : pfName;
                Platform pf = ShareMgr.this.getPlatform(platform);
                if (pf != null) {
                    Platform.dLog("share via our jar");
                    pf.setShareEndListener(ShareMgr.this.shareEndListener);
                    pf.share(args, act);
                    ShareMgr.this.lastPlatform = platform;
                    Platform.dLog("sdk share to:" + platform);
                    return;
                }
                if (platform.equals(Platform.OTHER) || (ShareMgr.this.installedPlatfrom.containsKey(Platform.getPlatformAppName(platform)) && ((Boolean) ShareMgr.this.installedPlatfrom.get(Platform.getPlatformAppName(platform))).booleanValue())) {
                    Platform.dLog("default share");
                    Intent intent = new Intent("android.intent.action.SEND");
                    if (args.hasImage().booleanValue()) {
                        Uri uri = null;
                        if (args.getValue(ShareArgs.IMG_URL) != null) {
                            uri = Uri.parse(args.getValue(ShareArgs.IMG_URL).toString());
                        } else if (args.getValue(ShareArgs.IMG_PATH) != null) {
                            File f = new File(args.getValue(ShareArgs.IMG_PATH).toString());
                            uri = Uri.fromFile(f);
                        }
                        intent.putExtra("android.intent.extra.STREAM", uri);
                        intent.setType("image/*");
                    } else {
                        intent.setType(StringPart.DEFAULT_CONTENT_TYPE);
                    }
                    intent.putExtra("android.intent.extra.TEXT", args.getValue(ShareArgs.TEXT).toString());
                    intent.putExtra("android.intent.extra.TITLE", args.getValue("title").toString());
                    if (!platform.equals(Platform.OTHER)) {
                        ArrayList<String> pfInfo = Platform.getPlatformInfo(platform);
                        intent.setPackage(Platform.getPlatformAppName(platform));
                        if (pfInfo.size() > 1) {
                            Boolean isBlog = Boolean.valueOf(args.getValue(ShareArgs.TO_BLOG, "").toString().length() > 0);
                            intent.setClassName(pfInfo.get(0), pfInfo.get(isBlog.booleanValue() ? 2 : 1));
                            Platform.dLog("system share to:" + platform + " pg:" + pfInfo.get(0) + " at:" + pfInfo.get(isBlog.booleanValue() ? 2 : 1));
                        }
                        intent.getComponent();
                        Set<String> sc = intent.getCategories();
                        ShareMgr.this.myCtx.getPackageManager().queryIntentActivities(intent, 0);
                        if (sc != null) {
                            sc.size();
                        }
                    }
                    if (platform.equals(Platform.OTHER)) {
                        ((Activity) ShareMgr.this.myCtx).startActivityForResult(Intent.createChooser(intent, ShareMgr.this.shareViewTitle), 997);
                    } else {
                        ((Activity) ShareMgr.this.myCtx).startActivityForResult(intent, 997);
                    }
                }
            }
        });
    }

    public void share(ShareArgs args, String pfName) {
        share(args, pfName, (Activity) this.myCtx);
    }

    public void setShareViewTitle(String t) {
        this.shareViewTitle = t;
    }

    public void handleIntent(Intent intent) {
        if (this.currentPlatform.containsKey(this.lastPlatform)) {
            ((Platform) this.currentPlatform.get(this.lastPlatform)).handleIntent(intent);
        }
    }

    public void handleActivityResult(int requestCode, int resultCode, Intent data) {
        if (this.currentPlatform.containsKey(this.lastPlatform)) {
            ((Platform) this.currentPlatform.get(this.lastPlatform)).handleActivityResult(requestCode, resultCode, data);
        }
    }

    public void setShareEndListener(OnShareEndListener se) {
        this.shareEndListener = se;
    }

    public void setContext(Context con, boolean noCheckMyLib) {
        this.myCtx = con;
        checkCurrentPlatform(noCheckMyLib);
        checkInstalledPlatform();
    }

    public void setContext(Context con) {
        setContext(con, false);
    }

    public void updateApi(String key, String platform) {
        if (hasPlatform(platform).booleanValue()) {
            Platform.dLog("updateApi platform : " + platform + ", api : " + key);
            Platform pf = getPlatform(platform);
            if (pf != null) {
                pf.updateApi(key);
            }
        }
    }
}
