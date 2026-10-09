package com.yasirkula.unity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import android.webkit.MimeTypeMap;
import androidx.webkit.ProxyConfig;
import androidx.webkit.internal.AssetHelper;
import com.google.common.primitives.Ints;
import com.unity3d.services.UnityAdsConstants;
import java.io.BufferedReader;
import java.io.File;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes3.dex */
public class NativeShare {
    public static boolean alwaysUseCustomShareDialog;
    public static String authority;
    private static int isXiaomiOrMIUI;
    public static NativeShareResultReceiver shareResultReceiver;

    public static void Share(final Context context, final NativeShareResultReceiver shareResultReceiver2, final String[] targetPackages, final String[] targetClasses, final String[] files, final String[] mimes, final String[] emailRecipients, final String subject, final String text, final String title) {
        if (files.length > 0 && GetAuthority(context) == null) {
            Log.e("Unity", "Can't find ContentProvider, share not possible!");
            shareResultReceiver2.OnShareCompleted(2, "");
            return;
        }
        shareResultReceiver = shareResultReceiver2;
        Bundle bundle = new Bundle();
        bundle.putString(NativeShareFragment.SUBJECT_ID, subject);
        bundle.putString(NativeShareFragment.TEXT_ID, text);
        bundle.putString(NativeShareFragment.TITLE_ID, title);
        bundle.putStringArrayList(NativeShareFragment.FILES_ID, ConvertArrayToArrayList(files));
        bundle.putStringArrayList(NativeShareFragment.MIMES_ID, ConvertArrayToArrayList(mimes));
        bundle.putStringArrayList(NativeShareFragment.EMAIL_RECIPIENTS_ID, ConvertArrayToArrayList(emailRecipients));
        bundle.putStringArrayList(NativeShareFragment.TARGET_PACKAGE_ID, ConvertArrayToArrayList(targetPackages));
        bundle.putStringArrayList(NativeShareFragment.TARGET_CLASS_ID, ConvertArrayToArrayList(targetClasses));
        boolean z = true;
        boolean z2 = alwaysUseCustomShareDialog || targetPackages.length > 1;
        if (!z2 && shareResultReceiver2.HasManagedCallback() && "huawei".equalsIgnoreCase(Build.MANUFACTURER)) {
            z2 = true;
        }
        if (z2 || !IsXiaomiOrMIUI() || (Build.VERSION.SDK_INT != 30 && !IsUnityInLandscapeMode((Activity) context))) {
            z = z2;
        }
        if (z) {
            Log.d("Unity", "Creating custom share dialog");
            Intent intent = new Intent(context, (Class<?>) NativeShareCustomShareDialogActivity.class);
            intent.putExtras(bundle);
            intent.setFlags(Ints.MAX_POWER_OF_TWO);
            context.startActivity(intent);
            return;
        }
        Log.d("Unity", "Creating standard share dialog");
        NativeShareFragment nativeShareFragment = new NativeShareFragment();
        nativeShareFragment.setArguments(bundle);
        ((Activity) context).getFragmentManager().beginTransaction().add(0, nativeShareFragment).commit();
    }

    public static Intent CreateIntentFromBundle(Context context, Bundle bundle, ArrayList<Uri> fileUris) {
        String str;
        String mimeTypeFromExtension;
        int iIndexOf;
        String string = bundle.getString(NativeShareFragment.SUBJECT_ID);
        String string2 = bundle.getString(NativeShareFragment.TEXT_ID);
        String string3 = bundle.getString(NativeShareFragment.TITLE_ID);
        ArrayList<String> stringArrayList = bundle.getStringArrayList(NativeShareFragment.FILES_ID);
        ArrayList<String> stringArrayList2 = bundle.getStringArrayList(NativeShareFragment.MIMES_ID);
        ArrayList<String> stringArrayList3 = bundle.getStringArrayList(NativeShareFragment.EMAIL_RECIPIENTS_ID);
        ArrayList<String> stringArrayList4 = bundle.getStringArrayList(NativeShareFragment.TARGET_PACKAGE_ID);
        ArrayList<String> stringArrayList5 = bundle.getStringArrayList(NativeShareFragment.TARGET_CLASS_ID);
        Intent intent = new Intent();
        if (string.length() > 0) {
            intent.putExtra("android.intent.extra.SUBJECT", string);
        }
        if (string2.length() > 0) {
            intent.putExtra("android.intent.extra.TEXT", string2);
        }
        int i = 1;
        if (stringArrayList.size() > 0) {
            String str2 = null;
            String str3 = null;
            int i2 = 0;
            while (i2 < stringArrayList.size()) {
                if (stringArrayList2.get(i2).length() > 0) {
                    mimeTypeFromExtension = stringArrayList2.get(i2);
                } else {
                    int iLastIndexOf = stringArrayList.get(i2).lastIndexOf(46);
                    if (iLastIndexOf >= 0 && iLastIndexOf != stringArrayList.get(i2).length() - i) {
                        mimeTypeFromExtension = MimeTypeMap.getSingleton().getMimeTypeFromExtension(stringArrayList.get(i2).substring(iLastIndexOf + 1).toLowerCase(Locale.ENGLISH));
                    }
                    str2 = ProxyConfig.MATCH_ALL_SCHEMES;
                    str3 = str2;
                    break;
                }
                if (mimeTypeFromExtension != null && mimeTypeFromExtension.length() != 0 && (iIndexOf = mimeTypeFromExtension.indexOf(47)) > 0 && iIndexOf != mimeTypeFromExtension.length() - 1) {
                    ArrayList<String> arrayList = stringArrayList2;
                    String strSubstring = mimeTypeFromExtension.substring(0, iIndexOf);
                    String strSubstring2 = mimeTypeFromExtension.substring(iIndexOf + 1);
                    if (str2 == null) {
                        str2 = strSubstring;
                    } else if (!str2.equals(strSubstring)) {
                    }
                    if (str3 == null) {
                        str3 = strSubstring2;
                    } else if (!str3.equals(strSubstring2)) {
                        str3 = ProxyConfig.MATCH_ALL_SCHEMES;
                    }
                    i2++;
                    stringArrayList2 = arrayList;
                    i = 1;
                }
                str2 = ProxyConfig.MATCH_ALL_SCHEMES;
                str3 = str2;
            }
            str = str2 + UnityAdsConstants.DefaultUrls.AD_ASSET_PATH + str3;
            if (stringArrayList.size() == 1) {
                intent.setAction("android.intent.action.SEND");
                Uri uriForFile = NativeShareContentProvider.getUriForFile(context, authority, new File(stringArrayList.get(0)));
                fileUris.add(uriForFile);
                intent.putExtra("android.intent.extra.STREAM", uriForFile);
            } else {
                intent.setAction("android.intent.action.SEND_MULTIPLE");
                for (int i3 = 0; i3 < stringArrayList.size(); i3++) {
                    fileUris.add(NativeShareContentProvider.getUriForFile(context, authority, new File(stringArrayList.get(i3))));
                }
                intent.putParcelableArrayListExtra("android.intent.extra.STREAM", fileUris);
            }
        } else {
            intent.setAction("android.intent.action.SEND");
            str = AssetHelper.DEFAULT_MIME_TYPE;
        }
        if (stringArrayList3.size() > 0) {
            String[] strArr = new String[stringArrayList3.size()];
            stringArrayList3.toArray(strArr);
            intent.putExtra("android.intent.extra.EMAIL", strArr);
        }
        if (string3.length() > 0) {
            intent.putExtra("android.intent.extra.TITLE", string3);
        }
        intent.setType(str);
        intent.setFlags(1);
        if (stringArrayList4.size() == 1) {
            intent.setPackage(stringArrayList4.get(0));
            if (stringArrayList5.get(0).length() > 0) {
                intent.setClassName(stringArrayList4.get(0), stringArrayList5.get(0));
            }
        }
        return intent;
    }

    public static void GrantURIPermissionsToShareIntentTargets(Context context, List<ResolveInfo> shareTargets, ArrayList<Uri> fileUris) {
        try {
            for (int size = shareTargets.size() - 1; size >= 0; size--) {
                for (int size2 = fileUris.size() - 1; size2 >= 0; size2--) {
                    context.grantUriPermission(shareTargets.get(size).activityInfo.packageName, fileUris.get(size2), 1);
                }
            }
        } catch (Exception e) {
            Log.e("Unity", "NativeShare couldn't call grantUriPermission:", e);
        }
    }

    private static String GetAuthority(Context context) {
        if (authority == null) {
            try {
                ProviderInfo[] providerInfoArr = context.getPackageManager().getPackageInfo(context.getPackageName(), 8).providers;
                if (providerInfoArr != null) {
                    for (ProviderInfo providerInfo : providerInfoArr) {
                        if (providerInfo.name != null && providerInfo.packageName != null && providerInfo.authority != null && providerInfo.name.equals(NativeShareContentProvider.class.getName()) && providerInfo.packageName.equals(context.getPackageName()) && providerInfo.authority.length() > 0) {
                            authority = providerInfo.authority;
                            break;
                        }
                    }
                }
            } catch (Exception e) {
                Log.e("Unity", "Exception:", e);
            }
        }
        return authority;
    }

    private static ArrayList<String> ConvertArrayToArrayList(String[] arr) {
        ArrayList<String> arrayList = new ArrayList<>(arr.length);
        for (String str : arr) {
            arrayList.add(str);
        }
        return arrayList;
    }

    private static boolean IsUnityInLandscapeMode(Activity unityActivity) {
        return unityActivity.getResources().getConfiguration().orientation == 2;
    }

    private static boolean IsXiaomiOrMIUI() throws Throwable {
        int i = isXiaomiOrMIUI;
        if (i > 0) {
            return true;
        }
        if (i < 0) {
            return false;
        }
        if ("xiaomi".equalsIgnoreCase(Build.MANUFACTURER)) {
            isXiaomiOrMIUI = 1;
            return true;
        }
        BufferedReader bufferedReader = null;
        try {
            try {
                BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(Runtime.getRuntime().exec("getprop ro.miui.ui.version.name").getInputStream()), 1024);
                try {
                    String line = bufferedReader2.readLine();
                    if (line != null && line.length() > 0) {
                        isXiaomiOrMIUI = 1;
                        try {
                            bufferedReader2.close();
                        } catch (Exception unused) {
                        }
                        return true;
                    }
                    isXiaomiOrMIUI = -1;
                    try {
                        bufferedReader2.close();
                    } catch (Exception unused2) {
                    }
                    return false;
                } catch (Exception unused3) {
                    bufferedReader = bufferedReader2;
                    isXiaomiOrMIUI = -1;
                    if (bufferedReader != null) {
                        try {
                            bufferedReader.close();
                        } catch (Exception unused4) {
                        }
                    }
                    return false;
                } catch (Throwable th) {
                    th = th;
                    bufferedReader = bufferedReader2;
                    if (bufferedReader != null) {
                        try {
                            bufferedReader.close();
                        } catch (Exception unused5) {
                        }
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception unused6) {
        }
    }

    public static boolean TargetExists(Context context, String packageName, String className) {
        try {
            if (className.length() == 0) {
                context.getPackageManager().getPackageInfo(packageName, 0);
                return true;
            }
            ActivityInfo[] activityInfoArr = context.getPackageManager().getPackageInfo(packageName, 1).activities;
            if (activityInfoArr != null) {
                for (ActivityInfo activityInfo : activityInfoArr) {
                    if (activityInfo.name.equals(className)) {
                        return true;
                    }
                }
            }
            return false;
        } catch (PackageManager.NameNotFoundException unused) {
        }
    }

    public static String FindMatchingTarget(Context context, String packageNameRegex, String classNameRegex) {
        ActivityInfo[] activityInfoArr;
        List<PackageInfo> installedPackages = context.getPackageManager().getInstalledPackages(1);
        if (installedPackages == null) {
            return "";
        }
        Pattern patternCompile = Pattern.compile(packageNameRegex);
        Pattern patternCompile2 = classNameRegex.length() > 0 ? Pattern.compile(classNameRegex) : null;
        for (PackageInfo packageInfo : installedPackages) {
            if (patternCompile.matcher(packageInfo.packageName).find() && (activityInfoArr = packageInfo.activities) != null) {
                for (ActivityInfo activityInfo : activityInfoArr) {
                    if (patternCompile2 == null || patternCompile2.matcher(activityInfo.name).find()) {
                        return packageInfo.packageName + ">" + activityInfo.name;
                    }
                }
            }
        }
        return "";
    }
}
