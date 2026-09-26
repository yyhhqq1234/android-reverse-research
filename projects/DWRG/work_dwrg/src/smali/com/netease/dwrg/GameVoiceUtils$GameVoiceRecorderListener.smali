.class public Lcom/netease/dwrg/GameVoiceUtils$GameVoiceRecorderListener;
.super Ljava/lang/Object;
.source "GameVoiceUtils.java"

# interfaces
.implements Landroid/media/MediaRecorder$OnErrorListener;
.implements Landroid/media/MediaRecorder$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/dwrg/GameVoiceUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GameVoiceRecorderListener"
.end annotation


# static fields
.field public static final ERROR:I = 0x1

.field public static final INTERRUPT:I = 0x5

.field public static final MAX_DURATION:I = 0x4

.field public static final MAX_FILESIZE:I = 0x3

.field public static final PAUSE:I = 0x2

.field public static final SUCCESS:I = 0x0

.field public static final UNKNOWN:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaRecorder;II)V
    .locals 2
    .param p1, "mr"    # Landroid/media/MediaRecorder;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 194
    const-string v0, "GameVoiceUtils"

    const-string v1, "cocos2d-x: record receive error msg."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    invoke-static {}, Lcom/netease/dwrg/GameVoiceUtils;->stopRecord()V

    .line 196
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/netease/dwrg/GameVoiceUtils;->onRecorderListener(I)V

    .line 197
    return-void
.end method

.method public onInfo(Landroid/media/MediaRecorder;II)V
    .locals 2
    .param p1, "mr"    # Landroid/media/MediaRecorder;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 200
    const-string v0, "GameVoiceUtils"

    const-string v1, "cocos2d-x: record receive info msg."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-static {}, Lcom/netease/dwrg/GameVoiceUtils;->stopRecord()V

    .line 202
    sparse-switch p2, :sswitch_data_0

    .line 213
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/netease/dwrg/GameVoiceUtils;->onRecorderListener(I)V

    .line 215
    :goto_0
    return-void

    .line 204
    :sswitch_0
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/netease/dwrg/GameVoiceUtils;->onRecorderListener(I)V

    goto :goto_0

    .line 207
    :sswitch_1
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/netease/dwrg/GameVoiceUtils;->onRecorderListener(I)V

    goto :goto_0

    .line 210
    :sswitch_2
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/netease/dwrg/GameVoiceUtils;->onRecorderListener(I)V

    goto :goto_0

    .line 202
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x320 -> :sswitch_1
        0x321 -> :sswitch_2
    .end sparse-switch
.end method
