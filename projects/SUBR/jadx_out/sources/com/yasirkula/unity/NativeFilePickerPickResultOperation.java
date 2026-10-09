package com.yasirkula.unity;

import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.util.Log;
import android.webkit.MimeTypeMap;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.util.ArrayList;
import org.json.a9;

/* JADX INFO: loaded from: classes3.dex */
public class NativeFilePickerPickResultOperation {
    private boolean cancelled;
    private final Context context;
    private final Intent data;
    public boolean finished;
    private final NativeFilePickerResultReceiver mediaReceiver;
    public int progress;
    private final String savePathDirectory;
    private final String savePathFilename;
    private ArrayList<String> savedFiles;
    private final boolean selectMultiple;
    public boolean sentResult;
    private String unityResult;

    public NativeFilePickerPickResultOperation(final Context context, final NativeFilePickerResultReceiver resultReceiver, final Intent data, final boolean selectMultiple, final String savePathDirectory, final String savePathFilename) {
        this.context = context;
        this.mediaReceiver = resultReceiver;
        this.data = data;
        this.selectMultiple = selectMultiple;
        this.savePathDirectory = savePathDirectory;
        this.savePathFilename = savePathFilename;
    }

    public void execute() {
        this.unityResult = "";
        this.progress = -1;
        try {
            try {
                if (!this.selectMultiple || this.data.getClipData() == null) {
                    String pathFromURI = getPathFromURI(this.data.getData());
                    this.unityResult = pathFromURI;
                    if (pathFromURI == null || (pathFromURI.length() > 0 && !new File(this.unityResult).exists())) {
                        this.unityResult = "";
                    }
                } else {
                    int itemCount = this.data.getClipData().getItemCount();
                    boolean z = true;
                    for (int i = 0; i < itemCount; i++) {
                        if (this.cancelled) {
                            return;
                        }
                        String pathFromURI2 = getPathFromURI(this.data.getClipData().getItemAt(i).getUri());
                        if (pathFromURI2 != null && pathFromURI2.length() > 0 && new File(pathFromURI2).exists()) {
                            if (z) {
                                this.unityResult += pathFromURI2;
                                z = false;
                            } else {
                                this.unityResult += ">" + pathFromURI2;
                            }
                        }
                    }
                }
            } catch (Exception e) {
                Log.e("Unity", "Exception:", e);
            }
        } finally {
            this.progress = 100;
            this.finished = true;
        }
    }

    public void cancel() {
        if (this.cancelled || this.finished) {
            return;
        }
        Log.d("Unity", "Cancelled NativeFilePickerPickResultOperation!");
        this.cancelled = true;
        this.unityResult = "";
    }

    public void sendResultToUnity() {
        if (this.sentResult) {
            return;
        }
        this.sentResult = true;
        NativeFilePickerResultReceiver nativeFilePickerResultReceiver = this.mediaReceiver;
        if (nativeFilePickerResultReceiver == null) {
            Log.d("Unity", "NativeFilePickerPickResultOperation.mediaReceiver became null!");
        } else if (this.selectMultiple) {
            nativeFilePickerResultReceiver.OnMultipleFilesPicked(this.unityResult);
        } else {
            nativeFilePickerResultReceiver.OnFilePicked(this.unityResult);
        }
    }

    private String getPathFromURI(Uri uri) throws Throwable {
        FileInputStream fileInputStream = null;
        if (uri == null) {
            return null;
        }
        Log.d("Unity", "Selected media uri: " + uri.toString());
        String strGetPathFromURI = NativeFilePickerUtils.GetPathFromURI(this.context, uri);
        if (strGetPathFromURI != null && strGetPathFromURI.length() > 0) {
            try {
                FileInputStream fileInputStream2 = new FileInputStream(new File(strGetPathFromURI));
                try {
                    fileInputStream2.read();
                    try {
                        fileInputStream2.close();
                    } catch (Exception unused) {
                    }
                    return strGetPathFromURI;
                } catch (Exception unused2) {
                    fileInputStream = fileInputStream2;
                    if (fileInputStream != null) {
                        try {
                            fileInputStream.close();
                        } catch (Exception unused3) {
                        }
                    }
                    return copyToTempFile(uri);
                } catch (Throwable th) {
                    th = th;
                    fileInputStream = fileInputStream2;
                    if (fileInputStream != null) {
                        try {
                            fileInputStream.close();
                        } catch (Exception unused4) {
                        }
                    }
                    throw th;
                }
            } catch (Exception unused5) {
            } catch (Throwable th2) {
                th = th2;
            }
        }
        return copyToTempFile(uri);
    }

    /* JADX WARN: Code duplicated, block: B:100:0x0175 A[Catch: all -> 0x0192, TryCatch #2 {all -> 0x0192, blocks: (B:77:0x012c, B:78:0x0132, B:80:0x0138, B:83:0x013d, B:85:0x0142, B:87:0x0156, B:90:0x015f, B:92:0x0163, B:98:0x0171, B:100:0x0175, B:102:0x0179, B:103:0x0180, B:104:0x0185, B:97:0x016f), top: B:126:0x012c }] */
    /* JADX WARN: Code duplicated, block: B:102:0x0179 A[Catch: all -> 0x0192, TryCatch #2 {all -> 0x0192, blocks: (B:77:0x012c, B:78:0x0132, B:80:0x0138, B:83:0x013d, B:85:0x0142, B:87:0x0156, B:90:0x015f, B:92:0x0163, B:98:0x0171, B:100:0x0175, B:102:0x0179, B:103:0x0180, B:104:0x0185, B:97:0x016f), top: B:126:0x012c }] */
    /* JADX WARN: Code duplicated, block: B:106:0x018b A[Catch: Exception -> 0x019f, TRY_ENTER, TryCatch #0 {Exception -> 0x019f, blocks: (B:51:0x00ba, B:62:0x00d3, B:65:0x00e9, B:67:0x00f1, B:69:0x00ff, B:70:0x0117, B:71:0x0119, B:106:0x018b, B:107:0x018e, B:114:0x0198, B:115:0x019b, B:116:0x019e), top: B:123:0x00ba }] */
    /* JADX WARN: Code duplicated, block: B:121:0x01a7  */
    /* JADX WARN: Code duplicated, block: B:128:0x00c7 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:139:0x0117 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:143:0x015d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:16:0x0042  */
    /* JADX WARN: Code duplicated, block: B:29:0x005e  */
    /* JADX WARN: Code duplicated, block: B:35:0x0075  */
    /* JADX WARN: Code duplicated, block: B:37:0x007b  */
    /* JADX WARN: Code duplicated, block: B:42:0x009a  */
    /* JADX WARN: Code duplicated, block: B:44:0x009d  */
    /* JADX WARN: Code duplicated, block: B:47:0x00a4  */
    /* JADX WARN: Code duplicated, block: B:48:0x00a7  */
    /* JADX WARN: Code duplicated, block: B:50:0x00ad  */
    /* JADX WARN: Code duplicated, block: B:53:0x00c0 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:54:0x00c1  */
    /* JADX WARN: Code duplicated, block: B:61:0x00d2  */
    /* JADX WARN: Code duplicated, block: B:64:0x00e6  */
    /* JADX WARN: Code duplicated, block: B:67:0x00f1 A[Catch: Exception -> 0x019f, TryCatch #0 {Exception -> 0x019f, blocks: (B:51:0x00ba, B:62:0x00d3, B:65:0x00e9, B:67:0x00f1, B:69:0x00ff, B:70:0x0117, B:71:0x0119, B:106:0x018b, B:107:0x018e, B:114:0x0198, B:115:0x019b, B:116:0x019e), top: B:123:0x00ba }] */
    /* JADX WARN: Code duplicated, block: B:69:0x00ff A[Catch: Exception -> 0x019f, TryCatch #0 {Exception -> 0x019f, blocks: (B:51:0x00ba, B:62:0x00d3, B:65:0x00e9, B:67:0x00f1, B:69:0x00ff, B:70:0x0117, B:71:0x0119, B:106:0x018b, B:107:0x018e, B:114:0x0198, B:115:0x019b, B:116:0x019e), top: B:123:0x00ba }] */
    /* JADX WARN: Code duplicated, block: B:75:0x0129  */
    /* JADX WARN: Code duplicated, block: B:76:0x012b  */
    /* JADX WARN: Code duplicated, block: B:85:0x0142 A[Catch: all -> 0x0192, TryCatch #2 {all -> 0x0192, blocks: (B:77:0x012c, B:78:0x0132, B:80:0x0138, B:83:0x013d, B:85:0x0142, B:87:0x0156, B:90:0x015f, B:92:0x0163, B:98:0x0171, B:100:0x0175, B:102:0x0179, B:103:0x0180, B:104:0x0185, B:97:0x016f), top: B:126:0x012c }] */
    /* JADX WARN: Code duplicated, block: B:87:0x0156 A[Catch: all -> 0x0192, TryCatch #2 {all -> 0x0192, blocks: (B:77:0x012c, B:78:0x0132, B:80:0x0138, B:83:0x013d, B:85:0x0142, B:87:0x0156, B:90:0x015f, B:92:0x0163, B:98:0x0171, B:100:0x0175, B:102:0x0179, B:103:0x0180, B:104:0x0185, B:97:0x016f), top: B:126:0x012c }] */
    /* JADX WARN: Code duplicated, block: B:92:0x0163 A[Catch: all -> 0x0192, TRY_LEAVE, TryCatch #2 {all -> 0x0192, blocks: (B:77:0x012c, B:78:0x0132, B:80:0x0138, B:83:0x013d, B:85:0x0142, B:87:0x0156, B:90:0x015f, B:92:0x0163, B:98:0x0171, B:100:0x0175, B:102:0x0179, B:103:0x0180, B:104:0x0185, B:97:0x016f), top: B:126:0x012c }] */
    /* JADX WARN: Code duplicated, block: B:95:0x016b A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:96:0x016d  */
    /* JADX WARN: Instruction removed from duplicated block: B:69:0x00ff, please report this as an issue */
    private String copyToTempFile(Uri uri) throws Throwable {
        Cursor cursorQuery;
        String strSubstring;
        int iLastIndexOf;
        String type;
        String strSubstring2;
        String extensionFromMimeType;
        int i;
        InputStream inputStreamOpenInputStream;
        long j;
        String str;
        File file;
        FileOutputStream fileOutputStream;
        int i2;
        byte[] bArr;
        int i3;
        int i4;
        int i5;
        int i6;
        ContentResolver contentResolver = this.context.getContentResolver();
        Cursor cursor = null;
        long jAvailable = -1;
        try {
            cursorQuery = contentResolver.query(uri, null, null, null, null);
            if (cursorQuery != null) {
                try {
                    try {
                        if (cursorQuery.moveToFirst()) {
                            strSubstring = cursorQuery.getString(cursorQuery.getColumnIndex("_display_name"));
                            try {
                                jAvailable = cursorQuery.getLong(cursorQuery.getColumnIndex("_size"));
                            } catch (Exception e) {
                                e = e;
                                Log.e("Unity", "Exception:", e);
                                if (cursorQuery != null) {
                                }
                                if (strSubstring != null) {
                                    strSubstring = a9.D;
                                } else {
                                    strSubstring = a9.D;
                                }
                                iLastIndexOf = strSubstring.lastIndexOf(46);
                                if (iLastIndexOf <= 0) {
                                    type = contentResolver.getType(uri);
                                    if (type != null) {
                                        strSubstring2 = null;
                                    } else {
                                        strSubstring2 = null;
                                    }
                                } else {
                                    type = contentResolver.getType(uri);
                                    if (type != null) {
                                        strSubstring2 = null;
                                    } else {
                                        strSubstring2 = null;
                                    }
                                }
                                if (strSubstring2 == null) {
                                    strSubstring2 = ".tmp";
                                }
                                i = 0;
                                if (!NativeFilePickerPickFragment.tryPreserveFilenames) {
                                    strSubstring = this.savePathFilename;
                                } else if (strSubstring.endsWith(strSubstring2)) {
                                    strSubstring = strSubstring.substring(0, strSubstring.length() - strSubstring2.length());
                                }
                                inputStreamOpenInputStream = contentResolver.openInputStream(uri);
                                if (inputStreamOpenInputStream == null) {
                                    return null;
                                }
                                j = 0;
                                if (jAvailable < 0) {
                                    try {
                                        jAvailable = inputStreamOpenInputStream.available();
                                    } catch (Exception unused) {
                                    }
                                    if (jAvailable < 0) {
                                        jAvailable = 0;
                                    }
                                }
                                str = strSubstring + strSubstring2;
                                if (this.savedFiles != null) {
                                    i5 = 0;
                                    i6 = 1;
                                    while (i5 < this.savedFiles.size()) {
                                        if (this.savedFiles.get(i5).equals(str)) {
                                            int i7 = i6 + 1;
                                            i6 = i7;
                                            str = strSubstring + i7 + strSubstring2;
                                            i5 = -1;
                                        }
                                        i5++;
                                    }
                                }
                                file = new File(this.savePathDirectory, str);
                                try {
                                    fileOutputStream = new FileOutputStream(file, false);
                                    if (jAvailable > 0) {
                                        i2 = 0;
                                    } else {
                                        i2 = -1;
                                    }
                                    try {
                                        this.progress = i2;
                                        bArr = new byte[4096];
                                        while (true) {
                                            i3 = inputStreamOpenInputStream.read(bArr);
                                            if (i3 > 0) {
                                                break;
                                            }
                                            fileOutputStream.write(bArr, i, i3);
                                            if (jAvailable > 0) {
                                                byte[] bArr2 = bArr;
                                                long j2 = j + ((long) i3);
                                                i4 = (int) ((j2 / jAvailable) * 100.0d);
                                                this.progress = i4;
                                                if (i4 > 100) {
                                                    this.progress = 100;
                                                }
                                                bArr = bArr2;
                                                j = j2;
                                                i = 0;
                                            }
                                        }
                                        if (this.cancelled) {
                                            fileOutputStream.close();
                                            file.delete();
                                            fileOutputStream = null;
                                        } else if (jAvailable > 0) {
                                            this.progress = 100;
                                        }
                                        if (this.selectMultiple) {
                                            if (this.savedFiles == null) {
                                                this.savedFiles = new ArrayList<>();
                                            }
                                            this.savedFiles.add(str);
                                        }
                                        String absolutePath = file.getAbsolutePath();
                                        if (fileOutputStream != null) {
                                            fileOutputStream.close();
                                        }
                                        inputStreamOpenInputStream.close();
                                        return absolutePath;
                                    } catch (Throwable th) {
                                        th = th;
                                        if (fileOutputStream != null) {
                                            fileOutputStream.close();
                                        }
                                        inputStreamOpenInputStream.close();
                                        throw th;
                                    }
                                } catch (Throwable th2) {
                                    th = th2;
                                    fileOutputStream = null;
                                }
                            }
                        } else {
                            strSubstring = null;
                        }
                    } catch (Exception e2) {
                        e = e2;
                        strSubstring = null;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    cursor = cursorQuery;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            } else {
                strSubstring = null;
            }
            if (cursorQuery != null) {
                cursorQuery.close();
            }
        } catch (Exception e3) {
            e = e3;
            cursorQuery = null;
            strSubstring = null;
        } catch (Throwable th4) {
            th = th4;
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
        if (strSubstring != null || strSubstring.length() < 3) {
            strSubstring = a9.D;
        }
        iLastIndexOf = strSubstring.lastIndexOf(46);
        if (iLastIndexOf <= 0 && iLastIndexOf < strSubstring.length() - 1) {
            strSubstring2 = strSubstring.substring(iLastIndexOf);
        } else {
            type = contentResolver.getType(uri);
            if (type != null || (extensionFromMimeType = MimeTypeMap.getSingleton().getExtensionFromMimeType(type)) == null || extensionFromMimeType.length() <= 0) {
                strSubstring2 = null;
            } else {
                strSubstring2 = "." + extensionFromMimeType;
            }
        }
        if (strSubstring2 == null) {
            strSubstring2 = ".tmp";
        }
        i = 0;
        if (!NativeFilePickerPickFragment.tryPreserveFilenames) {
            strSubstring = this.savePathFilename;
        } else if (strSubstring.endsWith(strSubstring2)) {
            strSubstring = strSubstring.substring(0, strSubstring.length() - strSubstring2.length());
        }
        try {
            inputStreamOpenInputStream = contentResolver.openInputStream(uri);
            if (inputStreamOpenInputStream == null) {
                return null;
            }
            j = 0;
            if (jAvailable < 0) {
                jAvailable = inputStreamOpenInputStream.available();
                if (jAvailable < 0) {
                    jAvailable = 0;
                }
            }
            str = strSubstring + strSubstring2;
            if (this.savedFiles != null) {
                i5 = 0;
                i6 = 1;
                while (i5 < this.savedFiles.size()) {
                    if (this.savedFiles.get(i5).equals(str)) {
                        int i8 = i6 + 1;
                        i6 = i8;
                        str = strSubstring + i8 + strSubstring2;
                        i5 = -1;
                    }
                    i5++;
                }
            }
            file = new File(this.savePathDirectory, str);
            fileOutputStream = new FileOutputStream(file, false);
            if (jAvailable > 0) {
                i2 = 0;
            } else {
                i2 = -1;
            }
            this.progress = i2;
            bArr = new byte[4096];
            while (true) {
                i3 = inputStreamOpenInputStream.read(bArr);
                if (i3 > 0 || this.cancelled) {
                    break;
                    break;
                }
                fileOutputStream.write(bArr, i, i3);
                if (jAvailable > 0) {
                    byte[] bArr3 = bArr;
                    long j3 = j + ((long) i3);
                    i4 = (int) ((j3 / jAvailable) * 100.0d);
                    this.progress = i4;
                    if (i4 > 100) {
                        this.progress = 100;
                    }
                    bArr = bArr3;
                    j = j3;
                    i = 0;
                }
            }
            if (this.cancelled) {
                fileOutputStream.close();
                file.delete();
                fileOutputStream = null;
            } else if (jAvailable > 0) {
                this.progress = 100;
            }
            if (this.selectMultiple) {
                if (this.savedFiles == null) {
                    this.savedFiles = new ArrayList<>();
                }
                this.savedFiles.add(str);
            }
            String absolutePath2 = file.getAbsolutePath();
            if (fileOutputStream != null) {
                fileOutputStream.close();
            }
            inputStreamOpenInputStream.close();
            return absolutePath2;
        } catch (Exception e4) {
            Log.e("Unity", "Exception:", e4);
            return null;
        }
    }
}
