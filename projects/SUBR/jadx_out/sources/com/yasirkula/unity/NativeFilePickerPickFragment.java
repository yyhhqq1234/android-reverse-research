package com.yasirkula.unity;

import android.app.Fragment;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import android.widget.Toast;
import androidx.webkit.ProxyConfig;
import com.unity3d.services.UnityAdsConstants;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes3.dex */
public class NativeFilePickerPickFragment extends Fragment {
    public static final String MIMES_ID = "NFPP_MIME";
    private static final int PICKER_MODE_DEFAULT = 0;
    private static final int PICKER_MODE_GET_CONTENT = 1;
    private static final int PICKER_MODE_OPEN_DOCUMENT = 2;
    private static final int PICK_FILE_CODE = 121455;
    public static final String SAVE_PATH_ID = "NFPP_SAVE_PATH";
    public static final String SELECT_MULTIPLE_ID = "NFPP_MULTIPLE";
    public static final String TITLE_ID = "NFPP_TITLE";
    public static int pickerMode = 0;
    public static boolean showProgressbar = true;
    public static boolean tryPreserveFilenames = true;
    private final NativeFilePickerResultReceiver resultReceiver;
    private String savePathDirectory;
    private String savePathFilename;
    private boolean selectMultiple;

    public NativeFilePickerPickFragment() {
        this.resultReceiver = null;
    }

    public NativeFilePickerPickFragment(final NativeFilePickerResultReceiver resultReceiver) {
        this.resultReceiver = resultReceiver;
    }

    @Override // android.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        Intent intent;
        super.onCreate(savedInstanceState);
        if (this.resultReceiver == null) {
            onActivityResult(PICK_FILE_CODE, 0, null);
            return;
        }
        ArrayList<String> stringArrayList = getArguments().getStringArrayList(MIMES_ID);
        String string = getArguments().getString(TITLE_ID);
        this.selectMultiple = getArguments().getBoolean(SELECT_MULTIPLE_ID);
        String string2 = getArguments().getString(SAVE_PATH_ID);
        int iLastIndexOf = string2.lastIndexOf(47);
        this.savePathFilename = iLastIndexOf >= 0 ? string2.substring(iLastIndexOf + 1) : string2;
        this.savePathDirectory = iLastIndexOf > 0 ? string2.substring(0, iLastIndexOf) : getActivity().getCacheDir().getAbsolutePath();
        if (stringArrayList.size() <= 1) {
            if (pickerMode != 2) {
                intent = new Intent("android.intent.action.GET_CONTENT");
            } else {
                intent = new Intent("android.intent.action.OPEN_DOCUMENT");
            }
        } else {
            if (pickerMode == 1) {
                intent = new Intent("android.intent.action.GET_CONTENT");
            } else {
                intent = new Intent("android.intent.action.OPEN_DOCUMENT");
            }
            String[] strArr = new String[stringArrayList.size()];
            for (int i = 0; i < stringArrayList.size(); i++) {
                strArr[i] = stringArrayList.get(i);
            }
            intent.putExtra("android.intent.extra.MIME_TYPES", strArr);
        }
        intent.setType(getCombinedMimeType(stringArrayList));
        intent.addCategory("android.intent.category.OPENABLE");
        intent.addFlags(1);
        if (this.selectMultiple) {
            intent.putExtra("android.intent.extra.ALLOW_MULTIPLE", true);
        }
        if (string != null && string.length() > 0) {
            intent.putExtra("android.intent.extra.TITLE", string);
        }
        try {
            if (!NativeFilePicker.UseDefaultFilePickerApp && (Build.VERSION.SDK_INT != 30 || !NativeFilePickerUtils.IsXiaomiOrMIUI())) {
                startActivityForResult(Intent.createChooser(intent, string), PICK_FILE_CODE);
                return;
            }
            startActivityForResult(intent, PICK_FILE_CODE);
        } catch (ActivityNotFoundException unused) {
            Toast.makeText(getActivity(), "No apps can perform this action.", 1).show();
            onActivityResult(PICK_FILE_CODE, 0, null);
        }
    }

    private String getCombinedMimeType(ArrayList<String> mimes) {
        int iIndexOf;
        if (mimes.size() == 0) {
            return "*/*";
        }
        if (mimes.size() == 1) {
            return mimes.get(0);
        }
        String str = null;
        String str2 = null;
        for (int i = 0; i < mimes.size(); i++) {
            String str3 = mimes.get(i);
            if (str3 == null || str3.length() == 0 || (iIndexOf = str3.indexOf(47)) <= 0 || iIndexOf == str3.length() - 1) {
                return "*/*";
            }
            String strSubstring = str3.substring(0, iIndexOf);
            String strSubstring2 = str3.substring(iIndexOf + 1);
            if (str == null) {
                str = strSubstring;
            } else if (!str.equals(strSubstring)) {
                return "*/*";
            }
            if (str2 == null) {
                str2 = strSubstring2;
            } else if (!str2.equals(strSubstring2)) {
                str2 = ProxyConfig.MATCH_ALL_SCHEMES;
            }
        }
        return str + UnityAdsConstants.DefaultUrls.AD_ASSET_PATH + str2;
    }

    /* JADX WARN: Code duplicated, block: B:22:0x004c  */
    /* JADX WARN: Code duplicated, block: B:23:0x005c  */
    @Override // android.app.Fragment
    public void onActivityResult(int requestCode, int resultCode, Intent data) {
        NativeFilePickerPickResultFragment nativeFilePickerPickResultFragment;
        if (requestCode != PICK_FILE_CODE) {
            return;
        }
        NativeFilePickerResultReceiver nativeFilePickerResultReceiver = this.resultReceiver;
        if (nativeFilePickerResultReceiver == null) {
            Log.d("Unity", "NativeFilePickerPickFragment.resultReceiver became null!");
        } else if (resultCode != -1 || data == null) {
            if (!this.selectMultiple) {
                nativeFilePickerResultReceiver.OnFilePicked("");
            } else {
                nativeFilePickerResultReceiver.OnMultipleFilesPicked("");
            }
        } else {
            NativeFilePickerPickResultOperation nativeFilePickerPickResultOperation = new NativeFilePickerPickResultOperation(getActivity(), this.resultReceiver, data, this.selectMultiple, this.savePathDirectory, this.savePathFilename);
            if (showProgressbar) {
                nativeFilePickerPickResultFragment = new NativeFilePickerPickResultFragment(nativeFilePickerPickResultOperation);
            } else {
                nativeFilePickerPickResultOperation.execute();
                nativeFilePickerPickResultOperation.sendResultToUnity();
            }
            if (nativeFilePickerPickResultFragment == null) {
                getFragmentManager().beginTransaction().remove(this).commit();
            } else {
                getFragmentManager().beginTransaction().remove(this).add(0, nativeFilePickerPickResultFragment).commit();
            }
        }
        nativeFilePickerPickResultFragment = null;
        if (nativeFilePickerPickResultFragment == null) {
            getFragmentManager().beginTransaction().remove(this).commit();
        } else {
            getFragmentManager().beginTransaction().remove(this).add(0, nativeFilePickerPickResultFragment).commit();
        }
    }
}
