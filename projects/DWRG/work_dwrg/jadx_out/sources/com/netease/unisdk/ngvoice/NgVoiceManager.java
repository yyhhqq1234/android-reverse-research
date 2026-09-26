package com.netease.unisdk.ngvoice;

import android.app.Activity;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.media.AudioManager;
import android.media.MediaPlayer;
import android.media.MediaRecorder;
import android.os.Build;
import android.os.Looper;
import android.support.v4.app.ActivityCompat;
import android.support.v4.content.PermissionChecker;
import android.text.TextUtils;
import com.netease.unisdk.ngvoice.log.NgLog;
import com.netease.unisdk.ngvoice.task.TaskExecutor;
import com.netease.unisdk.ngvoice.utils.FileUtil;
import com.netease.unisdk.ngvoice.utils.StorageUtil;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class NgVoiceManager implements NgVoiceInterface {
    public static final int IDLE_STATE = 0;
    private static final int MIN_USABLE_SPACE = 5242880;
    private static final int NG_VIDEO_PERMISSIONS_REQUEST_CODE = 105;
    public static final int PLAYING_STATE = 2;
    public static final int RECORDING_STATE = 1;
    private static final String TAG = "ng_voice Manager";
    private static final String VOICE_DIR_NAME = "ng_voice";
    private static final String VOICE_FILE_SUFFIX = ".amr";
    private static NgVoiceManager sInstance;
    private AudioManager mAudioManager;
    private NgVoiceCallback mCallback;
    private Context mContext;
    private NgVoiceHttpHelper mHttpHelper = new NgVoiceHttpHelper();
    private MediaPlayer mPlayer;
    private MediaRecorder mRecorder;
    private NgVoiceSettings mSettings;
    private long mStartRecordTime;
    private int mState;
    private File mVoiceFile;

    private NgVoiceManager(Context context) {
        this.mContext = context;
        TaskExecutor.init(2, 5, 0);
    }

    public static NgVoiceManager getInstance(Context context) {
        if (sInstance == null) {
            synchronized (NgVoiceManager.class) {
                if (sInstance == null) {
                    sInstance = new NgVoiceManager(context);
                    NgLog.checkIsDebug(context);
                }
            }
        }
        return sInstance;
    }

    public void setCallback(NgVoiceCallback callback) {
        this.mCallback = callback;
    }

    public void setVoiceSettings(NgVoiceSettings settings) {
        this.mSettings = settings;
        this.mHttpHelper.setVoiceSettings(settings);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startRecord(String voiceFileName) {
        NgLog.i(TAG, "start record in thread : " + Thread.currentThread().getId());
        if (Looper.myLooper() == null) {
            Looper.prepare();
        }
        if (this.mSettings == null) {
            this.mSettings = new NgVoiceSettings();
            this.mHttpHelper.setVoiceSettings(this.mSettings);
        }
        File dir = getFileDir(5242880L);
        if (dir == null) {
            NgLog.e(TAG, "can't find a path to save voice file");
            TaskExecutor.runTaskOnUiThread(new Runnable() { // from class: com.netease.unisdk.ngvoice.NgVoiceManager.1
                @Override // java.lang.Runnable
                public void run() {
                    NgVoiceManager.this.mCallback.onRecordFinish(false, null, 0.0f, NgVoiceCallback.ERROR_NO_ENOUGH_SPACE);
                }
            });
            return;
        }
        if (TextUtils.isEmpty(voiceFileName)) {
            voiceFileName = System.currentTimeMillis() + VOICE_FILE_SUFFIX;
        }
        this.mVoiceFile = FileUtil.createFile(dir, voiceFileName);
        if (this.mVoiceFile == null) {
            NgLog.e(TAG, "can't create voice file");
            TaskExecutor.runTaskOnUiThread(new Runnable() { // from class: com.netease.unisdk.ngvoice.NgVoiceManager.2
                @Override // java.lang.Runnable
                public void run() {
                    NgVoiceManager.this.mCallback.onRecordFinish(false, null, 0.0f, NgVoiceCallback.ERROR_CREATE_FILE_ERROR);
                }
            });
            return;
        }
        NgLog.i(TAG, "voice file save path = %s", this.mVoiceFile.getAbsolutePath());
        if (this.mRecorder != null) {
            stopRecord(false, false);
        }
        NgLog.i(TAG, "new MediaRecorder");
        this.mRecorder = new MediaRecorder();
        try {
            this.mRecorder.setAudioSource(1);
            this.mRecorder.setOutputFormat(3);
            this.mRecorder.setAudioEncoder(1);
            this.mRecorder.setAudioEncodingBitRate(4750);
            this.mRecorder.setMaxDuration(this.mSettings.maxDuration);
            this.mRecorder.setOutputFile(this.mVoiceFile.getAbsolutePath());
            this.mRecorder.setOnErrorListener(new MediaRecorder.OnErrorListener() { // from class: com.netease.unisdk.ngvoice.NgVoiceManager.3
                @Override // android.media.MediaRecorder.OnErrorListener
                public void onError(MediaRecorder mr, int what, int extra) {
                    NgLog.e(NgVoiceManager.TAG, "record onError what = %d,extra = %d", Integer.valueOf(what), Integer.valueOf(extra));
                    NgVoiceManager.this.stopRecord(false, true);
                    TaskExecutor.runTaskOnUiThread(new Runnable() { // from class: com.netease.unisdk.ngvoice.NgVoiceManager.3.1
                        @Override // java.lang.Runnable
                        public void run() {
                            NgVoiceManager.this.mCallback.onRecordFinish(false, null, 0.0f, "exception");
                        }
                    });
                }
            });
            this.mRecorder.setOnInfoListener(new MediaRecorder.OnInfoListener() { // from class: com.netease.unisdk.ngvoice.NgVoiceManager.4
                @Override // android.media.MediaRecorder.OnInfoListener
                public void onInfo(MediaRecorder mr, int what, int extra) {
                    NgLog.i(NgVoiceManager.TAG, "record onInfo what = %d,extra = %d", Integer.valueOf(what), Integer.valueOf(extra));
                    if (what == 800) {
                        NgVoiceManager.this.stopRecord(true, true);
                    }
                }
            });
            this.mRecorder.prepare();
            try {
                this.mRecorder.start();
                this.mStartRecordTime = System.currentTimeMillis();
                this.mState = 1;
                NgLog.i(TAG, "startRecord end");
            } catch (Exception e) {
                NgLog.e(TAG, "Recorder.start Exception : " + e.getMessage());
                stopRecord(false, false);
                TaskExecutor.runTaskOnUiThread(new Runnable() { // from class: com.netease.unisdk.ngvoice.NgVoiceManager.6
                    @Override // java.lang.Runnable
                    public void run() {
                        NgVoiceManager.this.mCallback.onRecordFinish(false, null, 0.0f, "exception");
                    }
                });
            }
        } catch (Exception e2) {
            NgLog.e(TAG, "prepare >> " + e2.getMessage());
            stopRecord(false, false);
            TaskExecutor.runTaskOnUiThread(new Runnable() { // from class: com.netease.unisdk.ngvoice.NgVoiceManager.5
                @Override // java.lang.Runnable
                public void run() {
                    NgVoiceManager.this.mCallback.onRecordFinish(false, null, 0.0f, "exception");
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void stopRecord(boolean needCallback, boolean needStop) {
        if (needStop) {
            try {
                this.mRecorder.stop();
            } catch (Exception e) {
                NgLog.e(TAG, "stopRecord Exception : " + e.getMessage());
            }
        }
        this.mRecorder.release();
        if (needCallback && this.mVoiceFile != null) {
            float duration = (((float) (System.currentTimeMillis() - this.mStartRecordTime)) * 1.0f) / 1000.0f;
            this.mCallback.onRecordFinish(true, this.mVoiceFile.getAbsolutePath(), duration, null);
        }
        this.mRecorder = null;
        this.mState = 0;
    }

    private boolean requestFocus() {
        this.mAudioManager = (AudioManager) this.mContext.getSystemService("audio");
        if (this.mAudioManager == null) {
            return false;
        }
        int result = this.mAudioManager.requestAudioFocus(new AudioManager.OnAudioFocusChangeListener() { // from class: com.netease.unisdk.ngvoice.NgVoiceManager.7
            @Override // android.media.AudioManager.OnAudioFocusChangeListener
            public void onAudioFocusChange(int focusChange) {
                NgLog.i(NgVoiceManager.TAG, "onAudioFocusChange = " + focusChange);
                if (focusChange == -2) {
                    if (NgVoiceManager.this.mPlayer != null && NgVoiceManager.this.mPlayer.isPlaying()) {
                        NgVoiceManager.this.mPlayer.pause();
                        return;
                    }
                    return;
                }
                if (focusChange == 1) {
                    if (NgVoiceManager.this.mPlayer != null) {
                        NgVoiceManager.this.mPlayer.start();
                    }
                } else if (focusChange == -1) {
                    NgVoiceManager.this.mAudioManager.abandonAudioFocus(this);
                }
            }
        }, 3, 1);
        return result == 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startPlayback(String voiceFilePath) {
        NgLog.i(TAG, "start playback in thread : " + Thread.currentThread().getId());
        if (!requestFocus()) {
            NgLog.e(TAG, "requestFocus error");
            TaskExecutor.runTaskOnUiThread(new Runnable() { // from class: com.netease.unisdk.ngvoice.NgVoiceManager.8
                @Override // java.lang.Runnable
                public void run() {
                    NgVoiceManager.this.mCallback.onPlaybackFinish(false);
                }
            });
            return;
        }
        this.mPlayer = new MediaPlayer();
        try {
            FileInputStream fis = new FileInputStream(voiceFilePath);
            this.mPlayer.reset();
            this.mPlayer.setDataSource(fis.getFD());
            this.mPlayer.setOnCompletionListener(new MediaPlayer.OnCompletionListener() { // from class: com.netease.unisdk.ngvoice.NgVoiceManager.9
                @Override // android.media.MediaPlayer.OnCompletionListener
                public void onCompletion(MediaPlayer mp) {
                    NgLog.i(NgVoiceManager.TAG, "play onCompletion");
                    NgVoiceManager.this.stopPlayback();
                    TaskExecutor.runTaskOnUiThread(new Runnable() { // from class: com.netease.unisdk.ngvoice.NgVoiceManager.9.1
                        @Override // java.lang.Runnable
                        public void run() {
                            NgVoiceManager.this.mCallback.onPlaybackFinish(true);
                        }
                    });
                }
            });
            this.mPlayer.setOnErrorListener(new MediaPlayer.OnErrorListener() { // from class: com.netease.unisdk.ngvoice.NgVoiceManager.10
                @Override // android.media.MediaPlayer.OnErrorListener
                public boolean onError(MediaPlayer mp, int what, int extra) {
                    NgLog.e(NgVoiceManager.TAG, "play onError what = %d,extra = %d", Integer.valueOf(what), Integer.valueOf(extra));
                    NgVoiceManager.this.stopPlayback();
                    TaskExecutor.runTaskOnUiThread(new Runnable() { // from class: com.netease.unisdk.ngvoice.NgVoiceManager.10.1
                        @Override // java.lang.Runnable
                        public void run() {
                            NgVoiceManager.this.mCallback.onPlaybackFinish(false);
                        }
                    });
                    return false;
                }
            });
            this.mPlayer.prepare();
            this.mPlayer.start();
            this.mState = 2;
        } catch (Exception e) {
            e.printStackTrace();
            stopPlayback();
            TaskExecutor.runTaskOnUiThread(new Runnable() { // from class: com.netease.unisdk.ngvoice.NgVoiceManager.11
                @Override // java.lang.Runnable
                public void run() {
                    NgVoiceManager.this.mCallback.onPlaybackFinish(false);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void stopPlayback() {
        if (this.mPlayer != null && this.mState == 2) {
            try {
                this.mPlayer.stop();
                this.mPlayer.release();
            } catch (Exception e) {
            }
            this.mPlayer = null;
            this.mState = 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void uploadVoiceFile(final String filePath) {
        final String key = this.mHttpHelper.upload(new File(filePath));
        final boolean success = !TextUtils.isEmpty(key);
        TaskExecutor.runTaskOnUiThread(new Runnable() { // from class: com.netease.unisdk.ngvoice.NgVoiceManager.12
            @Override // java.lang.Runnable
            public void run() {
                NgVoiceManager.this.mCallback.onUploadFinish(success, filePath, key);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void translateFinish(final String key, final String text) {
        TaskExecutor.runTaskOnUiThread(new Runnable() { // from class: com.netease.unisdk.ngvoice.NgVoiceManager.13
            @Override // java.lang.Runnable
            public void run() {
                NgVoiceManager.this.mCallback.onTranslateFinish(key, text);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public File getFileDir(long minSpace) {
        if (StorageUtil.isSDCardAvailable()) {
            File fileDir = checkDirUsable(StorageUtil.getExternalFileDir(this.mContext), minSpace);
            if (fileDir == null) {
                return checkDirUsable(this.mContext.getFilesDir(), minSpace);
            }
            return fileDir;
        }
        return checkDirUsable(this.mContext.getFilesDir(), minSpace);
    }

    private File checkDirUsable(File file, long minSpace) {
        if (file == null) {
            return null;
        }
        File file2 = new File(file, VOICE_DIR_NAME);
        if (FileUtil.createDir(file2) == null) {
            NgLog.w(TAG, "can't create dir <%s>", file2.getAbsolutePath());
            return null;
        }
        if (!hasUsableSpace(file2, minSpace)) {
            NgLog.w(TAG, "<%s> has't enough space", file2.getAbsolutePath());
            return null;
        }
        return file2;
    }

    private boolean hasUsableSpace(File dir, long minSpace) {
        long usableSize = StorageUtil.getUsableSpace(dir);
        NgLog.i(TAG, " %s :usable size = " + usableSize, dir.getAbsolutePath());
        return usableSize > minSpace;
    }

    @Override // com.netease.unisdk.ngvoice.NgVoiceInterface
    public boolean hasPermissions() {
        boolean audioPermission = checkPermissions("android.permission.RECORD_AUDIO");
        boolean storagePermission = checkPermissions("android.permission.WRITE_EXTERNAL_STORAGE");
        return audioPermission && storagePermission;
    }

    @Override // com.netease.unisdk.ngvoice.NgVoiceInterface
    public void onRequestPermissionsResult(int requestCode, String[] permissions, int[] grantResults) {
        if (requestCode == 105 && grantResults != null) {
            boolean getPermissionFlag = true;
            int length = grantResults.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    break;
                }
                int res = grantResults[i];
                if (res == 0) {
                    i++;
                } else {
                    getPermissionFlag = false;
                    break;
                }
            }
            this.mCallback.onRequestPermissions(getPermissionFlag);
        }
    }

    @Override // com.netease.unisdk.ngvoice.NgVoiceInterface
    public void requestPermissions() {
        if (Build.VERSION.SDK_INT >= 23) {
            final boolean audioPermission = checkPermissions("android.permission.RECORD_AUDIO");
            final boolean storagePermission = checkPermissions("android.permission.WRITE_EXTERNAL_STORAGE");
            NgLog.i(TAG, "permission.RECORD_AUDIO : " + audioPermission);
            NgLog.i(TAG, "permission.WRITE_EXTERNAL_STORAGE : " + storagePermission);
            if (audioPermission && storagePermission) {
                this.mCallback.onRequestPermissions(true);
                return;
            } else {
                TaskExecutor.runTaskOnUiThread(new Runnable() { // from class: com.netease.unisdk.ngvoice.NgVoiceManager.14
                    @Override // java.lang.Runnable
                    public void run() {
                        ArrayList<String> list = new ArrayList<>();
                        if (!audioPermission && !ActivityCompat.shouldShowRequestPermissionRationale((Activity) NgVoiceManager.this.mContext, "android.permission.RECORD_AUDIO")) {
                            list.add("android.permission.RECORD_AUDIO");
                        }
                        if (!storagePermission && !ActivityCompat.shouldShowRequestPermissionRationale((Activity) NgVoiceManager.this.mContext, "android.permission.WRITE_EXTERNAL_STORAGE")) {
                            list.add("android.permission.WRITE_EXTERNAL_STORAGE");
                        }
                        if (list.size() == 2) {
                            ActivityCompat.requestPermissions((Activity) NgVoiceManager.this.mContext, (String[]) list.toArray(new String[list.size()]), 105);
                        } else {
                            NgVoiceManager.this.mCallback.onRequestPermissions(false);
                        }
                    }
                });
                return;
            }
        }
        this.mCallback.onRequestPermissions(true);
    }

    @Override // com.netease.unisdk.ngvoice.NgVoiceInterface
    public void ntStartRecord(final String voiceFileName) {
        NgLog.i(TAG, "nt start record ... " + voiceFileName);
        if (this.mState == 2) {
            stopPlayback();
        } else if (this.mState == 1) {
            stopRecord(false, true);
        }
        TaskExecutor.executeTask(new Runnable() { // from class: com.netease.unisdk.ngvoice.NgVoiceManager.15
            @Override // java.lang.Runnable
            public void run() {
                NgVoiceManager.this.startRecord(voiceFileName);
            }
        });
    }

    private boolean checkPermissions(String permission) {
        int targetSdkVersion = 0;
        try {
            PackageInfo info = this.mContext.getPackageManager().getPackageInfo(this.mContext.getPackageName(), 0);
            targetSdkVersion = info.applicationInfo.targetSdkVersion;
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
        }
        NgLog.i(TAG, "targetSdkVersion = " + targetSdkVersion);
        if (Build.VERSION.SDK_INT >= 23) {
            return targetSdkVersion >= 23 ? this.mContext.checkSelfPermission(permission) == 0 : PermissionChecker.checkSelfPermission(this.mContext, permission) == 0;
        }
        return true;
    }

    @Override // com.netease.unisdk.ngvoice.NgVoiceInterface
    public void ntStopRecord() {
        NgLog.i(TAG, "nt stop record ... ");
        if (this.mRecorder == null || this.mState != 1) {
            TaskExecutor.runTaskOnUiThread(new Runnable() { // from class: com.netease.unisdk.ngvoice.NgVoiceManager.16
                @Override // java.lang.Runnable
                public void run() {
                    NgVoiceManager.this.mCallback.onRecordFinish(false, null, 0.0f, "short_time");
                }
            });
        } else {
            stopRecord(true, true);
        }
    }

    @Override // com.netease.unisdk.ngvoice.NgVoiceInterface
    public void ntStartPlayback(final String voiceFilePath) {
        NgLog.i(TAG, "nt start playback ... " + voiceFilePath);
        if (this.mState == 2) {
            stopPlayback();
        } else if (this.mState == 1) {
            stopRecord(false, true);
        }
        TaskExecutor.executeTask(new Runnable() { // from class: com.netease.unisdk.ngvoice.NgVoiceManager.17
            @Override // java.lang.Runnable
            public void run() {
                NgVoiceManager.this.startPlayback(voiceFilePath);
            }
        });
    }

    @Override // com.netease.unisdk.ngvoice.NgVoiceInterface
    public void ntStopPlayback() {
        NgLog.i(TAG, "nt stop playback ... ");
        stopPlayback();
    }

    @Override // com.netease.unisdk.ngvoice.NgVoiceInterface
    public void ntCancelRecord() {
        NgLog.i(TAG, "nt cancel record ... ");
        stopRecord(false, true);
        if (this.mVoiceFile != null) {
            this.mVoiceFile.delete();
        }
    }

    @Override // com.netease.unisdk.ngvoice.NgVoiceInterface
    public void ntUploadVoiceFile(final String filePath) {
        NgLog.i(TAG, "nt upload voice file ... " + filePath);
        if (!NgVoiceHttpHelper.isNetworkAvailable(this.mContext)) {
            NgLog.e(TAG, "network not available");
            this.mCallback.onUploadFinish(false, filePath, null);
        } else {
            TaskExecutor.executeTask(new Runnable() { // from class: com.netease.unisdk.ngvoice.NgVoiceManager.18
                @Override // java.lang.Runnable
                public void run() {
                    NgVoiceManager.this.uploadVoiceFile(filePath);
                }
            });
        }
    }

    @Override // com.netease.unisdk.ngvoice.NgVoiceInterface
    public void ntDownloadVoiceFile(final String key, final String voiceFileName) {
        NgLog.i(TAG, "nt download voice file ... key = %s,voiceFileName = %s", key, voiceFileName);
        if (!NgVoiceHttpHelper.isNetworkAvailable(this.mContext)) {
            NgLog.e(TAG, "network not available");
            this.mCallback.onDownloadFinish(false, key, null);
        } else {
            TaskExecutor.executeTask(new Runnable() { // from class: com.netease.unisdk.ngvoice.NgVoiceManager.19
                @Override // java.lang.Runnable
                public void run() {
                    InputStream fileStream = NgVoiceManager.this.mHttpHelper.downloadVoiceFile(key);
                    String code = null;
                    byte[] firstCharBytes = new byte[1];
                    try {
                        fileStream.read(firstCharBytes);
                        String code2 = new String(firstCharBytes);
                        code = code2;
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                    if ("0".equals(code)) {
                        File dir = NgVoiceManager.this.getFileDir(5242880L);
                        if (dir == null) {
                            TaskExecutor.runTaskOnUiThread(new Runnable() { // from class: com.netease.unisdk.ngvoice.NgVoiceManager.19.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    NgVoiceManager.this.mCallback.onDownloadFinish(false, key, null);
                                }
                            });
                            return;
                        }
                        String fileName = voiceFileName;
                        if (TextUtils.isEmpty(fileName)) {
                            fileName = System.currentTimeMillis() + NgVoiceManager.VOICE_FILE_SUFFIX;
                        }
                        final File saveFile = FileUtil.createFile(dir, fileName);
                        if (!NgVoiceManager.this.saveDownloadVoiceFile(fileStream, saveFile)) {
                            NgVoiceManager.this.downloadError(key, null);
                            return;
                        } else {
                            TaskExecutor.runTaskOnUiThread(new Runnable() { // from class: com.netease.unisdk.ngvoice.NgVoiceManager.19.2
                                @Override // java.lang.Runnable
                                public void run() {
                                    NgVoiceManager.this.mCallback.onDownloadFinish(true, key, saveFile.getAbsolutePath());
                                }
                            });
                            return;
                        }
                    }
                    NgVoiceManager.this.downloadError(key, null);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void downloadError(final String key, final String path) {
        TaskExecutor.runTaskOnUiThread(new Runnable() { // from class: com.netease.unisdk.ngvoice.NgVoiceManager.20
            @Override // java.lang.Runnable
            public void run() {
                NgVoiceManager.this.mCallback.onDownloadFinish(false, key, path);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean saveDownloadVoiceFile(InputStream stream, File file) {
        try {
            OutputStream out = new FileOutputStream(file);
            stream.skip(1L);
            byte[] buf = new byte[1024];
            while (true) {
                int len = stream.read(buf);
                if (len > 0) {
                    out.write(buf, 0, len);
                } else {
                    out.close();
                    stream.close();
                    return true;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    @Override // com.netease.unisdk.ngvoice.NgVoiceInterface
    public void ntGetTranslation(final String key) {
        NgLog.i(TAG, "nt get translation ... " + key);
        if (!NgVoiceHttpHelper.isNetworkAvailable(this.mContext)) {
            NgLog.e(TAG, "network not available");
            this.mCallback.onTranslateFinish(key, "");
        } else {
            TaskExecutor.executeTask(new Runnable() { // from class: com.netease.unisdk.ngvoice.NgVoiceManager.21
                @Override // java.lang.Runnable
                public void run() {
                    String text = NgVoiceManager.this.mHttpHelper.getTranslation(key);
                    NgVoiceManager.this.translateFinish(key, text);
                }
            });
        }
    }

    @Override // com.netease.unisdk.ngvoice.NgVoiceInterface
    public void ntClearVoiceCache(long time) {
        if (StorageUtil.isSDCardAvailable()) {
            doDelete(new File(StorageUtil.getExternalFileDir(this.mContext), VOICE_DIR_NAME), time);
        }
        doDelete(new File(this.mContext.getFilesDir(), VOICE_DIR_NAME), time);
    }

    @Override // com.netease.unisdk.ngvoice.NgVoiceInterface
    public float ntGetVoiceAmplitude() {
        if (this.mRecorder == null) {
            return 0.0f;
        }
        float ratio = (this.mRecorder.getMaxAmplitude() * 1.0f) / 300.0f;
        float db = 0.0f;
        if (ratio > 1.0f) {
            db = (float) (20.0d * Math.log10(ratio));
        }
        return db / 70.0f;
    }

    private void doDelete(File dir, long time) {
        File[] files;
        if (dir != null && dir.exists() && (files = dir.listFiles()) != null && files.length != 0) {
            for (File file : files) {
                if (System.currentTimeMillis() - file.lastModified() > 1000 * time) {
                    NgLog.i(TAG, "delete file :%s", file.getAbsolutePath());
                    file.delete();
                }
            }
        }
    }

    public static void clear() {
        if (sInstance != null) {
            TaskExecutor.shutdown();
        }
        sInstance = null;
    }
}
