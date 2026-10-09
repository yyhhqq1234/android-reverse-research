package com.yasirkula.unity;

import android.app.Fragment;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import android.webkit.MimeTypeMap;
import android.widget.Toast;
import com.unity3d.services.UnityAdsConstants;
import java.io.File;
import java.io.FileInputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Locale;

/* JADX INFO: loaded from: classes3.dex */
public class NativeFilePickerExportFragment extends Fragment {
    private static final int EXPORT_FILE_CODE = 625441;
    public static final String FILES_ID = "NFPE_FILES";
    private ArrayList<String> files;
    private final NativeFilePickerResultReceiver resultReceiver;

    public NativeFilePickerExportFragment() {
        this.resultReceiver = null;
    }

    public NativeFilePickerExportFragment(final NativeFilePickerResultReceiver resultReceiver) {
        this.resultReceiver = resultReceiver;
    }

    @Override // android.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        Intent intent;
        super.onCreate(savedInstanceState);
        if (this.resultReceiver == null) {
            onActivityResult(EXPORT_FILE_CODE, 0, null);
            return;
        }
        ArrayList<String> stringArrayList = getArguments().getStringArrayList(FILES_ID);
        this.files = stringArrayList;
        if (stringArrayList.size() == 1) {
            for (int size = this.files.size() - 1; size >= 1; size--) {
                this.files.remove(size);
            }
            intent = new Intent("android.intent.action.CREATE_DOCUMENT");
            intent.setType(GetMimeTypeFromFile(this.files.get(0)));
            intent.putExtra("android.intent.extra.TITLE", new File(this.files.get(0)).getName());
            intent.addCategory("android.intent.category.OPENABLE");
        } else {
            intent = new Intent("android.intent.action.OPEN_DOCUMENT_TREE");
            intent.putExtra("android.content.extra.SHOW_ADVANCED", true);
            intent.putExtra("android.content.extra.FANCY", true);
            intent.putExtra("android.content.extra.SHOW_FILESIZE", true);
        }
        intent.addFlags(3);
        try {
            if (!NativeFilePicker.UseDefaultFilePickerApp && (Build.VERSION.SDK_INT != 30 || !NativeFilePickerUtils.IsXiaomiOrMIUI())) {
                startActivityForResult(Intent.createChooser(intent, ""), EXPORT_FILE_CODE);
                return;
            }
            startActivityForResult(intent, EXPORT_FILE_CODE);
        } catch (ActivityNotFoundException unused) {
            Toast.makeText(getActivity(), "No apps can perform this action.", 1).show();
            onActivityResult(EXPORT_FILE_CODE, 0, null);
        }
    }

    private String GetMimeTypeFromFile(String file) {
        String mimeTypeFromExtension;
        int iLastIndexOf = file.lastIndexOf(46);
        return (iLastIndexOf < 0 || iLastIndexOf == file.length() + (-1) || (mimeTypeFromExtension = MimeTypeMap.getSingleton().getMimeTypeFromExtension(file.substring(iLastIndexOf + 1).toLowerCase(Locale.ENGLISH))) == null || mimeTypeFromExtension.length() == 0) ? "application/octet-stream" : mimeTypeFromExtension;
    }

    private boolean ExportMultipleFilesToDirectory(ArrayList<String> files, Uri directoryUri) {
        NativeFilePickerSAFEntry nativeFilePickerSAFEntryFromTreeUri = NativeFilePickerSAFEntry.fromTreeUri(getActivity(), directoryUri);
        if (nativeFilePickerSAFEntryFromTreeUri == null) {
            Log.e("Unity", "Couldn't access export directory: " + directoryUri.toString());
            return false;
        }
        boolean zWriteFileToStream = true;
        for (int i = 0; i < files.size(); i++) {
            File file = new File(files.get(i));
            if (file.exists()) {
                NativeFilePickerSAFEntry nativeFilePickerSAFEntryCreateFile = nativeFilePickerSAFEntryFromTreeUri.createFile(GetMimeTypeFromFile(files.get(i)), file.getName());
                if (nativeFilePickerSAFEntryCreateFile == null) {
                    Log.e("Unity", "Couldn't create file inside directory: " + directoryUri.toString() + UnityAdsConstants.DefaultUrls.AD_ASSET_PATH + file.getName());
                    zWriteFileToStream = false;
                }
                try {
                    zWriteFileToStream &= WriteFileToStream(file, getActivity().getContentResolver().openOutputStream(nativeFilePickerSAFEntryCreateFile.getUri()));
                } catch (Exception e) {
                    Log.e("Unity", "Exception:", e);
                    zWriteFileToStream = false;
                }
            } else {
                Log.e("Unity", "Can't export " + files.get(i) + ", file doesn't exist!");
            }
        }
        return zWriteFileToStream;
    }

    private boolean WriteFileToStream(File file, OutputStream out) {
        try {
            try {
                FileInputStream fileInputStream = new FileInputStream(file);
                try {
                    byte[] bArr = new byte[1024];
                    while (true) {
                        int i = fileInputStream.read(bArr);
                        if (i > 0) {
                            out.write(bArr, 0, i);
                        } else {
                            try {
                                break;
                            } catch (Exception e) {
                                Log.e("Unity", "Exception:", e);
                            }
                        }
                    }
                    fileInputStream.close();
                    try {
                        out.close();
                        return true;
                    } catch (Exception e2) {
                        Log.e("Unity", "Exception:", e2);
                        return true;
                    }
                } catch (Throwable th) {
                    try {
                        fileInputStream.close();
                    } catch (Exception e3) {
                        Log.e("Unity", "Exception:", e3);
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                try {
                    out.close();
                } catch (Exception e4) {
                    Log.e("Unity", "Exception:", e4);
                }
                throw th2;
            }
        } catch (Exception e5) {
            Log.e("Unity", "Exception:", e5);
            try {
                out.close();
            } catch (Exception e6) {
                Log.e("Unity", "Exception:", e6);
            }
            return false;
        }
    }

    @Override // android.app.Fragment
    public void onActivityResult(int requestCode, int resultCode, Intent data) {
        if (requestCode != EXPORT_FILE_CODE) {
            return;
        }
        ArrayList<String> arrayList = this.files;
        boolean zExportMultipleFilesToDirectory = false;
        if (arrayList == null || arrayList.size() == 0) {
            Log.e("Unity", "Fragment data got reset while exporting files!");
        } else if (resultCode != -1 || data == null || data.getData() == null) {
            Log.d("Unity", "Export operation cancelled");
        } else if (this.files.size() == 1) {
            File file = new File(this.files.get(0));
            if (!file.exists()) {
                Log.e("Unity", "Can't export " + this.files.get(0) + ", file doesn't exist!");
            } else {
                try {
                    zExportMultipleFilesToDirectory = WriteFileToStream(file, getActivity().getContentResolver().openOutputStream(data.getData()));
                } catch (Exception e) {
                    Log.e("Unity", "Exception:", e);
                }
            }
        } else {
            zExportMultipleFilesToDirectory = ExportMultipleFilesToDirectory(this.files, data.getData());
        }
        NativeFilePickerResultReceiver nativeFilePickerResultReceiver = this.resultReceiver;
        if (nativeFilePickerResultReceiver != null) {
            nativeFilePickerResultReceiver.OnFilesExported(zExportMultipleFilesToDirectory);
        }
        getFragmentManager().beginTransaction().remove(this).commit();
    }
}
