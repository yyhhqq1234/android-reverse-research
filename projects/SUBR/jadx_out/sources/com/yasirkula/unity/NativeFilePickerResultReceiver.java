package com.yasirkula.unity;

/* JADX INFO: loaded from: classes3.dex */
public interface NativeFilePickerResultReceiver {
    void OnFilePicked(String path);

    void OnFilesExported(boolean result);

    void OnMultipleFilesPicked(String paths);
}
