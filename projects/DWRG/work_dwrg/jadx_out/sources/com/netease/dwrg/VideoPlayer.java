package com.netease.dwrg;

import android.app.Activity;
import android.content.Intent;
import android.content.res.AssetFileDescriptor;
import android.graphics.Point;
import android.media.MediaPlayer;
import android.os.Build;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.Display;
import android.view.MotionEvent;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.View;
import android.view.ViewGroup;
import com.netease.neox.NativeInterface;
import com.netease.unisdk.gmbridge.utils.ResIdReader;
import com.tencent.connect.share.QzonePublish;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.IOException;

/* loaded from: classes.dex */
public class VideoPlayer extends Activity implements MediaPlayer.OnPreparedListener, MediaPlayer.OnCompletionListener, MediaPlayer.OnVideoSizeChangedListener, SurfaceHolder.Callback {
    private static final int KITKAT_UI_OPTION = 3846;
    private static final int OTHER_UI_OPTION = 1285;
    private MediaPlayer mMediaPlayer;
    private int mVideoControlMode;
    private int mVideoHeight;
    private String mVideoPath;
    private int mVideoScaleMode;
    private int mVideoWidth;
    private SurfaceView mSurfaceView = null;
    private SurfaceHolder mSurfaceHolder = null;
    private boolean mInAsset = false;

    @Override // android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        getWindow().setFlags(128, 128);
        int res_id = getResources().getIdentifier("videoview", ResIdReader.RES_TYPE_LAYOUT, getPackageName());
        setContentView(res_id);
        Intent videoIntent = getIntent();
        this.mVideoPath = videoIntent.getStringExtra(QzonePublish.PUBLISH_TO_QZONE_VIDEO_PATH);
        this.mVideoScaleMode = videoIntent.getIntExtra("videoScaleMode", 0);
        this.mVideoControlMode = videoIntent.getIntExtra("videoControlMode", 0);
        this.mInAsset = videoIntent.getBooleanExtra("inAsset", false);
        int res_id2 = getResources().getIdentifier("surfaceView1", ResIdReader.RES_TYPE_ID, getPackageName());
        this.mSurfaceView = (SurfaceView) findViewById(res_id2);
        this.mSurfaceView.setVisibility(0);
        this.mSurfaceView.setFocusable(true);
        this.mSurfaceView.requestFocus();
        this.mSurfaceView.setClickable(true);
        this.mSurfaceHolder = this.mSurfaceView.getHolder();
        this.mSurfaceHolder.addCallback(this);
        this.mSurfaceHolder.setType(3);
        setRequestedOrientation(6);
        if (this.mVideoControlMode == 2) {
            this.mSurfaceView.setOnTouchListener(new View.OnTouchListener() { // from class: com.netease.dwrg.VideoPlayer.1
                @Override // android.view.View.OnTouchListener
                public boolean onTouch(View v, MotionEvent event) {
                    if (event != null) {
                        int action = event.getAction();
                        if (action == 0) {
                            VideoPlayer.this.stopVideo();
                            return true;
                        }
                        return true;
                    }
                    return true;
                }
            });
        }
        if (Build.VERSION.SDK_INT >= 14) {
            if (Build.VERSION.SDK_INT >= 19) {
                this.mSurfaceView.setSystemUiVisibility(KITKAT_UI_OPTION);
            } else {
                this.mSurfaceView.setSystemUiVisibility(OTHER_UI_OPTION);
            }
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean hasFocus) {
        super.onWindowFocusChanged(hasFocus);
        if (hasFocus && Build.VERSION.SDK_INT >= 14) {
            if (Build.VERSION.SDK_INT >= 19) {
                this.mSurfaceView.setSystemUiVisibility(KITKAT_UI_OPTION);
            } else {
                this.mSurfaceView.setSystemUiVisibility(OTHER_UI_OPTION);
            }
        }
    }

    @Override // android.app.Activity
    public void onStop() {
        super.onStop();
        stopVideo();
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceChanged(SurfaceHolder arg0, int arg1, int arg2, int arg3) {
        Log.i("NeoX:MediaPlayer", "surface changed");
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceCreated(SurfaceHolder arg0) {
        Log.i("NeoX:MediaPlayer", "surface creaed start!");
        try {
            this.mMediaPlayer = new MediaPlayer();
            this.mMediaPlayer.setDisplay(this.mSurfaceHolder);
            this.mMediaPlayer.setAudioStreamType(3);
            this.mMediaPlayer.setOnPreparedListener(this);
            this.mMediaPlayer.setOnCompletionListener(this);
            this.mMediaPlayer.setOnVideoSizeChangedListener(this);
        } catch (Exception e) {
            e.printStackTrace();
            Log.i("NeoX:MediaPlayer", "surface create error");
        }
        Log.i("NeoX:MediaPlayer", "surface creaed end!");
        Play(this.mVideoPath);
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceDestroyed(SurfaceHolder arg0) {
        Log.i("NeoX:MediaPlayer", "surface destroyed");
    }

    @Override // android.media.MediaPlayer.OnVideoSizeChangedListener
    public void onVideoSizeChanged(MediaPlayer mp, int width, int height) {
        setFitToFillAspectRatio(mp, width, height);
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        if (this.mVideoControlMode != 0) {
            super.onBackPressed();
        }
    }

    public void stopVideo() {
        if (this.mMediaPlayer != null) {
            this.mMediaPlayer.stop();
            this.mMediaPlayer.release();
            this.mMediaPlayer = null;
        }
        Log.i("NeoX:MediaPlayer ", "play video stop");
        NativeInterface.NativeOnStopVideoCallBack();
        finish();
        overridePendingTransition(0, 0);
    }

    @Override // android.media.MediaPlayer.OnPreparedListener
    public void onPrepared(MediaPlayer arg0) {
        if (this.mVideoWidth != 0 && this.mVideoHeight != 0) {
            Log.i("NeoX:MediaPlayer", "video width : " + this.mVideoWidth + " height : " + this.mVideoHeight);
            arg0.start();
            this.mMediaPlayer.setDisplay(this.mSurfaceHolder);
            return;
        }
        Log.i("NeoX:MediaPlayer", "video is invaild , width : " + this.mVideoWidth + " height : " + this.mVideoHeight);
    }

    @Override // android.media.MediaPlayer.OnCompletionListener
    public void onCompletion(MediaPlayer mp) {
        stopVideo();
    }

    private boolean Play(String inVideoPath) {
        this.mSurfaceView.setVisibility(0);
        this.mMediaPlayer.reset();
        if (this.mInAsset) {
            try {
                AssetFileDescriptor afd = getAssets().openFd(inVideoPath);
                this.mMediaPlayer.setDataSource(afd.getFileDescriptor(), afd.getStartOffset(), afd.getLength());
                this.mMediaPlayer.setDisplay(this.mSurfaceHolder);
                this.mMediaPlayer.prepareAsync();
                return true;
            } catch (IOException e) {
                e.printStackTrace();
                Log.i("NeoX:MediaPlayer ", "play video in asset error");
                return true;
            }
        }
        try {
            FileInputStream fileStream = new FileInputStream(new File(inVideoPath));
            FileDescriptor descriptor = fileStream.getFD();
            this.mMediaPlayer.setDataSource(descriptor);
            this.mMediaPlayer.setDisplay(this.mSurfaceHolder);
            this.mMediaPlayer.prepareAsync();
            fileStream.close();
            return true;
        } catch (Exception e2) {
            e2.printStackTrace();
            Log.i("NeoX:MediaPlayer ", "play video error");
            return true;
        }
    }

    private void setFitToFillAspectRatio(MediaPlayer mp, int videoWidth, int videoHeight) {
        if (mp != null) {
            this.mVideoWidth = mp.getVideoWidth();
            this.mVideoHeight = mp.getVideoHeight();
            if (this.mVideoWidth == 0 || this.mVideoHeight == 0) {
                stopVideo();
                return;
            }
            Point p = new Point();
            Display display = getWindowManager().getDefaultDisplay();
            if (Build.VERSION.SDK_INT >= 19) {
                display.getRealSize(p);
            } else {
                DisplayMetrics dm = new DisplayMetrics();
                display.getMetrics(dm);
                p.x = dm.widthPixels;
                p.y = dm.heightPixels;
            }
            Integer screenWidth = Integer.valueOf(p.x);
            Integer screenHeight = Integer.valueOf(p.y);
            ViewGroup.LayoutParams videoParams = this.mSurfaceView.getLayoutParams();
            float videoAspec = this.mVideoWidth / this.mVideoHeight;
            float screenAspec = screenWidth.intValue() / screenHeight.intValue();
            if (this.mVideoScaleMode == 1) {
                if (screenWidth.intValue() <= screenHeight.intValue()) {
                    videoParams.width = screenWidth.intValue();
                    videoParams.height = screenHeight.intValue();
                } else if (screenAspec > videoAspec) {
                    videoParams.height = screenHeight.intValue();
                    videoParams.width = (int) (this.mVideoWidth * (screenHeight.intValue() / this.mVideoHeight));
                } else {
                    videoParams.width = screenWidth.intValue();
                    videoParams.height = (int) (this.mVideoHeight * (screenWidth.intValue() / this.mVideoWidth));
                }
            } else {
                videoParams.width = screenWidth.intValue();
                videoParams.height = screenHeight.intValue();
            }
            Log.i("NeoX:MediaPlayer", "screen width : " + screenWidth + " height : " + screenHeight);
            Log.i("NeoX:MediaPlayer", "video play width : " + videoParams.width + " height : " + videoParams.height);
            this.mSurfaceView.setLayoutParams(videoParams);
        }
    }
}
