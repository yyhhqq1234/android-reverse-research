package com.yasirkula.unity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.webkit.MimeTypeMap;
import java.util.ArrayList;
import java.util.Locale;

/* JADX INFO: loaded from: classes3.dex */
public class NativeFilePicker {
    public static boolean UseDefaultFilePickerApp;

    public static boolean CanExportFiles() {
        return true;
    }

    public static boolean CanExportMultipleFiles() {
        return true;
    }

    public static boolean CanPickMultipleFiles() {
        return true;
    }

    public static void PickFiles(Context context, final NativeFilePickerResultReceiver resultReceiver, final boolean selectMultiple, final String savePath, final String[] mimes, final String title) {
        if (CheckPermission(context, true) != 1) {
            if (!selectMultiple) {
                resultReceiver.OnFilePicked("");
                return;
            } else {
                resultReceiver.OnMultipleFilesPicked("");
                return;
            }
        }
        ArrayList<String> arrayList = new ArrayList<>(mimes.length);
        for (String str : mimes) {
            arrayList.add(str);
        }
        Bundle bundle = new Bundle();
        bundle.putBoolean(NativeFilePickerPickFragment.SELECT_MULTIPLE_ID, selectMultiple);
        bundle.putString(NativeFilePickerPickFragment.SAVE_PATH_ID, savePath);
        bundle.putStringArrayList(NativeFilePickerPickFragment.MIMES_ID, arrayList);
        bundle.putString(NativeFilePickerPickFragment.TITLE_ID, title);
        NativeFilePickerPickFragment nativeFilePickerPickFragment = new NativeFilePickerPickFragment(resultReceiver);
        nativeFilePickerPickFragment.setArguments(bundle);
        ((Activity) context).getFragmentManager().beginTransaction().add(0, nativeFilePickerPickFragment).commit();
    }

    public static void ExportFiles(Context context, final NativeFilePickerResultReceiver resultReceiver, final String[] files, final int dummyParameter) {
        if (CheckPermission(context, false) != 1) {
            resultReceiver.OnFilesExported(false);
            return;
        }
        ArrayList<String> arrayList = new ArrayList<>(files.length);
        for (String str : files) {
            arrayList.add(str);
        }
        Bundle bundle = new Bundle();
        bundle.putStringArrayList(NativeFilePickerExportFragment.FILES_ID, arrayList);
        NativeFilePickerExportFragment nativeFilePickerExportFragment = new NativeFilePickerExportFragment(resultReceiver);
        nativeFilePickerExportFragment.setArguments(bundle);
        ((Activity) context).getFragmentManager().beginTransaction().add(0, nativeFilePickerExportFragment).commit();
    }

    public static int CheckPermission(Context context, final boolean readPermissionOnly) {
        if (Build.VERSION.SDK_INT < 23) {
            return 1;
        }
        if ((Build.VERSION.SDK_INT < 33 || context.getApplicationInfo().targetSdkVersion < 33) && context.checkSelfPermission("android.permission.READ_EXTERNAL_STORAGE") != 0) {
            return 0;
        }
        return (readPermissionOnly || Build.VERSION.SDK_INT >= 30 || context.checkSelfPermission("android.permission.WRITE_EXTERNAL_STORAGE") == 0) ? 1 : 0;
    }

    public static void RequestPermission(Context context, final NativeFilePickerPermissionReceiver permissionReceiver, final boolean readPermissionOnly, final int lastCheckResult) {
        if (CheckPermission(context, readPermissionOnly) == 1) {
            permissionReceiver.OnPermissionResult(1);
            return;
        }
        if (lastCheckResult == 0) {
            permissionReceiver.OnPermissionResult(0);
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putBoolean(NativeFilePickerPermissionFragment.READ_PERMISSION_ONLY, readPermissionOnly);
        NativeFilePickerPermissionFragment nativeFilePickerPermissionFragment = new NativeFilePickerPermissionFragment(permissionReceiver);
        nativeFilePickerPermissionFragment.setArguments(bundle);
        ((Activity) context).getFragmentManager().beginTransaction().add(0, nativeFilePickerPermissionFragment).commit();
    }

    public static void OpenSettings(Context context) {
        Uri uriFromParts = Uri.fromParts("package", context.getPackageName(), null);
        Intent intent = new Intent();
        intent.setAction("android.settings.APPLICATION_DETAILS_SETTINGS");
        intent.setData(uriFromParts);
        context.startActivity(intent);
    }

    public static String GetMimeTypeFromExtension(String extension) {
        String mimeTypeFromExtension;
        return (extension == null || extension.length() == 0 || (mimeTypeFromExtension = MimeTypeMap.getSingleton().getMimeTypeFromExtension(extension.toLowerCase(Locale.ENGLISH))) == null) ? "" : mimeTypeFromExtension;
    }
}
