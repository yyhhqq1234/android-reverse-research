package com.netease.dwrg;

import android.app.Activity;
import android.media.MediaPlayer;
import android.media.MediaRecorder;
import android.util.Log;
import com.netease.neox.NativeInterface;
import com.netease.pharos.Const;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;

/* loaded from: classes.dex */
public class GameVoiceUtils {
    private static final int PLAYER_STATE_IDLE = 1;
    private static final int PLAYER_STATE_NONE = 0;
    private static final int PLAYER_STATE_PLAYING = 3;
    private static final int PLAYER_STATE_PREPARED = 2;
    private static final int PLAYER_STATE_RELEASED = 4;
    private static final int RECORDER_STATE_IDLE = 1;
    private static final int RECORDER_STATE_NONE = 0;
    private static final int RECORDER_STATE_PREPARED = 2;
    private static final int RECORDER_STATE_RECORDING = 3;
    private static final int RECORDER_STATE_RELEASED = 4;
    private static final String TAG = "GameVoiceUtils";
    public static Activity context;
    private static int mRecorderState = 0;
    private static int mPlayerState = 0;
    public static MediaRecorder mRecorder = null;
    private static GameVoiceRecorderListener mRecorderListener = null;
    private static MediaPlayer mPlayer = null;
    private static GameVoicePlayerListener mPlayerListener = null;
    private static float mPlayVolume = 1.0f;

    private static native void nativeOnRecorderListener(int i);

    private static void interruptAll() {
        if (isPlaying()) {
            stopPlay();
            onPlayerListener(2);
        } else if (isRecording()) {
            stopRecord();
            onPlayerListener(2);
        }
    }

    public static boolean prepareRecord(String filePath) {
        Log.d(TAG, "cocos2d-x: prepare record.");
        interruptAll();
        if (mRecorder == null) {
            mRecorder = new MediaRecorder();
            if (mRecorderListener == null) {
                mRecorderListener = new GameVoiceRecorderListener();
            }
            mRecorder.setOnErrorListener(mRecorderListener);
            mRecorder.setOnInfoListener(mRecorderListener);
            mRecorderState = 1;
        }
        mRecorder.reset();
        try {
            mRecorder.setAudioSource(1);
            mRecorder.setOutputFormat(3);
            mRecorder.setOutputFile(filePath);
            mRecorder.setAudioEncoder(1);
            mRecorder.setAudioChannels(1);
            mRecorder.setMaxDuration(60000);
            mRecorder.setAudioSamplingRate(8000);
            mRecorder.setAudioEncodingBitRate(16);
            mRecorder.prepare();
            Log.d(TAG, "cocos2d-x: prepare record success.");
            mRecorderState = 2;
            return true;
        } catch (Exception e) {
            Log.e(TAG, "cocos2d-x: prepare record catch Exception");
            mRecorder.reset();
            return false;
        }
    }

    public static boolean startRecord() {
        if (mRecorderState != 2) {
            return false;
        }
        Log.d(TAG, "cocos2d-x: start record.");
        try {
            mRecorder.start();
            mRecorder.getMaxAmplitude();
            Log.d(TAG, "cocos2d-x: start record success.");
            mRecorderState = 3;
            return true;
        } catch (Exception e) {
            Log.e(TAG, "cocos2d-x: start record catch Exception");
            mRecorder.reset();
            return false;
        }
    }

    public static void stopRecord() {
        Log.d(TAG, "cocos2d-x: stop recorder.");
        if (mRecorder != null) {
            mRecorder.reset();
        }
        mRecorderState = 1;
    }

    public static void releaseRecorder() {
        Log.d(TAG, "cocos2d-x: release recorder.");
        if (mRecorder != null) {
            mRecorder.release();
            mRecorder = null;
        }
        mRecorderState = 4;
    }

    public static boolean isRecording() {
        return mRecorderState == 3 && mRecorder != null;
    }

    public static float getAmplitude() {
        if (!isRecording()) {
            return 0.0f;
        }
        float temp = mRecorder.getMaxAmplitude() / 15000.0f;
        if (temp < 0.0f) {
            return 0.0f;
        }
        if (temp > 1.0f) {
            return 1.0f;
        }
        return temp;
    }

    public static void onRecorderListener(int infoCode) {
    }

    /* loaded from: classes.dex */
    public static class GameVoiceRecorderListener implements MediaRecorder.OnErrorListener, MediaRecorder.OnInfoListener {
        public static final int ERROR = 1;
        public static final int INTERRUPT = 5;
        public static final int MAX_DURATION = 4;
        public static final int MAX_FILESIZE = 3;
        public static final int PAUSE = 2;
        public static final int SUCCESS = 0;
        public static final int UNKNOWN = 6;

        @Override // android.media.MediaRecorder.OnErrorListener
        public void onError(MediaRecorder mr, int what, int extra) {
            Log.e(GameVoiceUtils.TAG, "cocos2d-x: record receive error msg.");
            GameVoiceUtils.stopRecord();
            GameVoiceUtils.onRecorderListener(1);
        }

        @Override // android.media.MediaRecorder.OnInfoListener
        public void onInfo(MediaRecorder mr, int what, int extra) {
            Log.e(GameVoiceUtils.TAG, "cocos2d-x: record receive info msg.");
            GameVoiceUtils.stopRecord();
            switch (what) {
                case 1:
                    GameVoiceUtils.onRecorderListener(6);
                    return;
                case Const.TIME_OUT /* 800 */:
                    GameVoiceUtils.onRecorderListener(4);
                    return;
                case 801:
                    GameVoiceUtils.onRecorderListener(3);
                    return;
                default:
                    GameVoiceUtils.onRecorderListener(1);
                    return;
            }
        }
    }

    public static boolean preparePlay(String filePath) {
        Log.d(TAG, "cocos2d-x: prepare play.");
        interruptAll();
        if (mPlayer == null) {
            mPlayer = new MediaPlayer();
            if (mPlayerListener == null) {
                mPlayerListener = new GameVoicePlayerListener();
            }
            mPlayer.setOnInfoListener(mPlayerListener);
            mPlayer.setOnErrorListener(mPlayerListener);
            mPlayer.setOnCompletionListener(mPlayerListener);
            mPlayerState = 1;
        }
        mPlayer.reset();
        File file = new File(filePath);
        try {
            FileInputStream fis = new FileInputStream(file);
            mPlayer.setDataSource(fis.getFD());
            mPlayer.prepare();
            fis.close();
            Log.d(TAG, "cocos2d-x: prepare play success.");
            mPlayerState = 2;
            onPlayerListener(0);
            return true;
        } catch (FileNotFoundException e) {
            Log.e(TAG, "cocos2d-x: play file not found");
            return false;
        } catch (Exception e2) {
            mPlayer.reset();
            Log.e(TAG, "cocos2d-x: prepare play voice failed");
            return false;
        }
    }

    public static boolean startPlay() {
        if (mPlayerState != 2) {
            return false;
        }
        try {
            mPlayer.start();
            mPlayer.setVolume(mPlayVolume, mPlayVolume);
            Log.d(TAG, "cocos2d-x: start play success.");
            mPlayerState = 3;
            onPlayerListener(1);
            return true;
        } catch (Exception e) {
            mPlayer.reset();
            Log.e(TAG, "cocos2d-x: play voice failed");
            return false;
        }
    }

    public static void stopPlay() {
        if (mPlayer != null) {
            mPlayer.reset();
            mPlayerState = 1;
        }
    }

    public static void releasePlayer() {
        Log.d(TAG, "cocos2d-x: release player");
        if (mPlayer != null) {
            mPlayer.release();
            mPlayer = null;
            mPlayerState = 4;
        }
    }

    public static boolean isPlaying() {
        return mPlayerState == 3 && mPlayer != null && mPlayer.isPlaying();
    }

    public static void setPlayVolume(float volume) {
        mPlayVolume = volume;
    }

    public static void onPlayerListener(final int infoCode) {
        Runnable f_runnable = new Runnable() { // from class: com.netease.dwrg.GameVoiceUtils.1
            @Override // java.lang.Runnable
            public void run() {
                NativeInterface.NativeOnPlayStateCallback(infoCode);
            }
        };
        context.runOnUiThread(f_runnable);
    }

    /* loaded from: classes.dex */
    public static class GameVoicePlayerListener implements MediaPlayer.OnCompletionListener, MediaPlayer.OnErrorListener, MediaPlayer.OnInfoListener {
        @Override // android.media.MediaPlayer.OnCompletionListener
        public void onCompletion(MediaPlayer mp) {
            GameVoiceUtils.stopPlay();
            GameVoiceUtils.onPlayerListener(3);
        }

        @Override // android.media.MediaPlayer.OnErrorListener
        public boolean onError(MediaPlayer mp, int what, int extra) {
            GameVoiceUtils.stopPlay();
            GameVoiceUtils.onPlayerListener(3);
            return true;
        }

        @Override // android.media.MediaPlayer.OnInfoListener
        public boolean onInfo(MediaPlayer mr, int what, int extra) {
            return true;
        }
    }
}
