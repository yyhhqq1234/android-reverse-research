.class public interface abstract Lcom/netease/cc/newlive/LiveEventListener;
.super Ljava/lang/Object;
.source "LiveEventListener.java"


# static fields
.field public static final FAILED:Ljava/lang/String; = "failed"

.field public static final LIVE_ERROR:I = -0xfa0

.field public static final LIVE_ERROR_ANCHOR_RESTART:I = -0xfab

.field public static final LIVE_ERROR_AUDIO_ENCODE:I = -0xfa8

.field public static final LIVE_ERROR_CDN_DISCONNECTED:I = -0xfa4

.field public static final LIVE_ERROR_INIT_FLV_MUX:I = -0xfaa

.field public static final LIVE_ERROR_INVALID_STATE:I = -0xfae

.field public static final LIVE_ERROR_LIVE_CREATED:I = -0xfa2

.field public static final LIVE_ERROR_MEDIA_PROJECTION:I = -0xfaf

.field public static final LIVE_ERROR_METADATA:I = -0xfa3

.field public static final LIVE_ERROR_MIN:I = -0x1324

.field public static final LIVE_ERROR_OPEN_STREAM:I = -0xfa6

.field public static final LIVE_ERROR_SCREEN_EGL_INIT:I = -0xfb1

.field public static final LIVE_ERROR_SVR_FORCE_STOP:I = -0xfad

.field public static final LIVE_ERROR_UDP_OPEN_STREAM_PARAM:I = -0xfa7

.field public static final LIVE_ERROR_UDP_RESTART:I = -0xfac

.field public static final LIVE_ERROR_UDP_SPEED_TEST:I = -0x1005

.field public static final LIVE_ERROR_VERIFY:I = -0xfa1

.field public static final LIVE_ERROR_VIDEO_ENCODE_RUN:I = -0xfb0

.field public static final LIVE_ERROR_VIDEO_ENCODE_START:I = -0xfa9

.field public static final LIVE_ERROR_VIDEO_FRAME_TIMEOUT:I = -0xfa5

.field public static final LIVE_EVENT:I = 0x3e8

.field public static final LIVE_EVENT_AUTO_FOCUS_CALLBACK:I = 0x7d3

.field public static final LIVE_EVENT_CAPTURE_FINISHED:I = 0x7d4

.field public static final LIVE_EVENT_CDN_CONNECTED:I = 0x3ea

.field public static final LIVE_EVENT_CHANGE_GAMETYPE:I = 0x3ee

.field public static final LIVE_EVENT_LIVE_CREATED:I = 0x3e9

.field public static final LIVE_EVENT_LIVE_DURATION:I = 0x3f3

.field public static final LIVE_EVENT_LIVE_FINISHED:I = 0x3f2

.field public static final LIVE_EVENT_MAX:I = 0x44c

.field public static final LIVE_EVENT_MERGE_COVER_RESULT:I = 0x7d2

.field public static final LIVE_EVENT_MERGE_STREAM_RESULT:I = 0x3fe

.field public static final LIVE_EVENT_METADATA_SENT:I = 0x3eb

.field public static final LIVE_EVENT_OPEN_MIC_FAIL:I = 0x3ed

.field public static final LIVE_EVENT_PREVIEW_SIZE_CHANGE:I = 0x7d5

.field public static final LIVE_EVENT_PUBLISH_CONGESTION:I = 0x3f0

.field public static final LIVE_EVENT_PUBLISH_OK:I = 0x3ef

.field public static final LIVE_EVENT_REQUEST_PLAYER_CAPTURE:I = 0x7d1

.field public static final LIVE_EVENT_RESET_TITLE_BY_SVR:I = 0x3f4

.field public static final LIVE_MSG:I = 0xbb8

.field public static final LIVE_MSG_CAPTURE:I = 0xbbd

.field public static final LIVE_MSG_GLSURFACE_SIZE_CHANGE:I = 0xbc3

.field public static final LIVE_MSG_RTMP_BRIDGE_START:I = 0xbbe

.field public static final LIVE_MSG_RTMP_BRIDGE_STOP:I = 0xbbf

.field public static final LIVE_MSG_RTMP_FRAME_TIMEOUT:I = 0xbc1

.field public static final LIVE_MSG_RTMP_GET_STREAM:I = 0xbc0

.field public static final LIVE_MSG_RTMP_SCRIPT_MSG:I = 0xbc2

.field public static final LIVE_MSG_VIDEO_SIZE_CHANGE:I = 0xbc4

.field public static final LIVE_SPEED_TEST_DONE:I = 0x138a

.field public static final LIVE_SPEED_TEST_PROGRESS:I = 0x1389

.field public static final LIVE_SPEED_TEST_UDP_FAIL:I = 0x138b

.field public static final SUCCESS:Ljava/lang/String; = "success"


# virtual methods
.method public abstract onAccessEventNew(ILjava/lang/String;)V
.end method

.method public abstract onLiveMsgNew(IIILjava/lang/Object;)V
.end method

.method public abstract onUploadSpeedTestProgressNew(II)V
.end method

.method public abstract onUploadSpeedTestedNew(IIIIIIZI)V
.end method
