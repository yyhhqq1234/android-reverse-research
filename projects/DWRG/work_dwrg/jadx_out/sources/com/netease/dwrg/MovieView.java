package com.netease.dwrg;

import android.app.Activity;
import android.content.res.AssetFileDescriptor;
import android.media.MediaPlayer;
import android.util.Log;
import android.view.MotionEvent;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.View;
import com.netease.neox.NativeInterface;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.IOException;

/* loaded from: classes.dex */
public class MovieView implements MediaPlayer.OnPreparedListener, MediaPlayer.OnCompletionListener, MediaPlayer.OnVideoSizeChangedListener, MediaPlayer.OnSeekCompleteListener, View.OnTouchListener, SurfaceHolder.Callback {
    private Activity m_context;
    private int m_control_mode;
    private MovieDialog m_dialog = null;
    private MediaPlayer m_player = null;
    private SurfaceView m_view = null;
    private int m_pos = 0;
    private boolean m_prepared = false;
    private boolean m_need_play = false;
    private final int DOUBLE_TAP_TIMEOUT = 300;
    private final int DOUBLE_TAP_SLOP = 10000;
    private MotionEvent m_prev_down_event = null;
    private MotionEvent m_prev_up_event = null;

    public MovieView(Activity context) {
        this.m_context = context;
    }

    public boolean initialize() {
        if (this.m_view != null) {
            return false;
        }
        Runnable f_runnable = new Runnable() { // from class: com.netease.dwrg.MovieView.1
            @Override // java.lang.Runnable
            public void run() {
                if (MovieView.this.m_dialog == null) {
                    MovieView.this.m_dialog = new MovieDialog(MovieView.this.m_context, movie_view);
                    MovieView.this.m_view = new SurfaceView(MovieView.this.m_context);
                    MovieView.this.m_dialog.setView(MovieView.this.m_view);
                    MovieView.this.m_view.setOnTouchListener(movie_view);
                    SurfaceHolder holder = MovieView.this.m_view.getHolder();
                    holder.addCallback(movie_view);
                }
            }
        };
        this.m_context.runOnUiThread(f_runnable);
        this.m_player = new MediaPlayer();
        this.m_player.setAudioStreamType(3);
        this.m_player.setOnPreparedListener(this);
        this.m_player.setOnCompletionListener(this);
        this.m_player.setOnVideoSizeChangedListener(this);
        this.m_player.setOnSeekCompleteListener(this);
        return this.m_view != null;
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceCreated(SurfaceHolder holder) {
        this.m_player.setDisplay(holder);
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceChanged(SurfaceHolder holder, int format, int width, int height) {
        this.m_player.setDisplay(holder);
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceDestroyed(SurfaceHolder holder) {
    }

    public void uninitialize() {
        if (this.m_dialog != null) {
            this.m_dialog.dismiss();
            this.m_dialog = null;
        }
        this.m_view = null;
    }

    public void show() {
        this.m_context.runOnUiThread(new Runnable() { // from class: com.netease.dwrg.MovieView.2
            @Override // java.lang.Runnable
            public void run() {
                if (MovieView.this.m_dialog != null) {
                    MovieView.this.m_dialog.show();
                }
            }
        });
    }

    public void setBounds(final int x, final int y, final int w, final int h) {
        if (this.m_dialog != null) {
            this.m_context.runOnUiThread(new Runnable() { // from class: com.netease.dwrg.MovieView.3
                @Override // java.lang.Runnable
                public void run() {
                    MovieView.this.m_dialog.setBounds(x, y, w, h);
                }
            });
        }
    }

    @Override // android.media.MediaPlayer.OnVideoSizeChangedListener
    public void onVideoSizeChanged(MediaPlayer mp, int width, int height) {
    }

    @Override // android.media.MediaPlayer.OnPreparedListener
    public void onPrepared(MediaPlayer arg0) {
        arg0.start();
        this.m_prepared = true;
        if (this.m_prepared && this.m_need_play) {
            resumeVideo();
        }
    }

    @Override // android.media.MediaPlayer.OnSeekCompleteListener
    public void onSeekComplete(MediaPlayer arg0) {
        arg0.start();
    }

    @Override // android.media.MediaPlayer.OnCompletionListener
    public void onCompletion(MediaPlayer arg0) {
        stopVideo(true);
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View v, MotionEvent event) {
        if (this.m_control_mode == 4) {
            if (event.getAction() == 0) {
                if (this.m_prev_up_event != null && this.m_prev_down_event != null && isDoubleTap(this.m_prev_down_event, this.m_prev_up_event, event)) {
                    stopVideo(true);
                }
                this.m_prev_down_event = MotionEvent.obtain(event);
            } else if (event.getAction() == 1) {
                this.m_prev_up_event = MotionEvent.obtain(event);
            }
        } else if (this.m_control_mode != 0 && this.m_control_mode != 3) {
            stopVideo(true);
        }
        return true;
    }

    public boolean isDoubleTap(MotionEvent firstDown, MotionEvent firstUp, MotionEvent secondDown) {
        if (secondDown.getEventTime() - firstUp.getEventTime() > 300) {
            return false;
        }
        int deltaX = ((int) firstUp.getX()) - ((int) secondDown.getX());
        int deltaY = ((int) firstUp.getY()) - ((int) secondDown.getY());
        return (deltaX * deltaX) + (deltaY * deltaY) < 10000;
    }

    public void stopVideo(boolean need_callback) {
        this.m_need_play = false;
        this.m_context.runOnUiThread(new Runnable() { // from class: com.netease.dwrg.MovieView.4
            @Override // java.lang.Runnable
            public void run() {
                if (MovieView.this.m_player != null) {
                    MovieView.this.m_player.stop();
                    MovieView.this.m_player.reset();
                    MovieView.this.m_player.release();
                    MovieView.this.m_player = null;
                }
                MovieView.this.m_dialog.dismiss();
            }
        });
        if (need_callback) {
            NativeInterface.NativeOnStopVideoCallBack();
        }
    }

    public void pauseVideo() {
        this.m_need_play = false;
        this.m_context.runOnUiThread(new Runnable() { // from class: com.netease.dwrg.MovieView.5
            @Override // java.lang.Runnable
            public void run() {
                if (MovieView.this.m_player != null) {
                    MovieView.this.m_pos = MovieView.this.m_player.getCurrentPosition();
                    MovieView.this.m_player.pause();
                }
            }
        });
    }

    public void resumeVideo() {
        this.m_need_play = true;
        this.m_context.runOnUiThread(new Runnable() { // from class: com.netease.dwrg.MovieView.6
            @Override // java.lang.Runnable
            public void run() {
                if (MovieView.this.m_player != null && MovieView.this.m_prepared) {
                    MovieView.this.m_player.seekTo(MovieView.this.m_pos);
                }
                MovieView.this.m_dialog.show();
            }
        });
    }

    public void playVideo(final String video_path, final int video_mode, int control_mode, int scale_mode, final int left, final int top, final int width, final int height, final boolean in_asset) {
        this.m_control_mode = control_mode;
        this.m_context.runOnUiThread(new Runnable() { // from class: com.netease.dwrg.MovieView.7
            @Override // java.lang.Runnable
            public void run() {
                MovieView.this.m_view.setVisibility(0);
                MovieView.this.m_player.reset();
                if (video_mode != 0) {
                    MovieView.this.m_dialog.setBounds(left, top, width, height);
                }
                if (MovieView.this.m_control_mode == 3) {
                    MovieView.this.m_player.setLooping(true);
                }
                MovieView.this.m_dialog.show();
                if (in_asset) {
                    try {
                        AssetFileDescriptor afd = MovieView.this.m_context.getAssets().openFd(video_path);
                        MovieView.this.m_player.setDataSource(afd.getFileDescriptor(), afd.getStartOffset(), afd.getLength());
                        MovieView.this.m_player.prepareAsync();
                        return;
                    } catch (IOException e) {
                        e.printStackTrace();
                        Log.i("NeoX:MediaPlayer ", "play video in asset error");
                        return;
                    }
                }
                try {
                    FileInputStream fileStream = new FileInputStream(new File(video_path));
                    FileDescriptor descriptor = fileStream.getFD();
                    MovieView.this.m_player.setDataSource(descriptor);
                    MovieView.this.m_player.prepareAsync();
                    fileStream.close();
                } catch (Exception e2) {
                    e2.printStackTrace();
                    Log.i("NeoX:MediaPlayer ", "play video error");
                }
            }
        });
    }
}
