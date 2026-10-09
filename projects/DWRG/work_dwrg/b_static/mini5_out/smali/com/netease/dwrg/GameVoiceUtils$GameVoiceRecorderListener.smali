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

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaRecorder;II)V
    .locals 0

    .line 237
    const-string p1, "GameVoiceUtils"

    const-string p2, "cocos2d-x: record receive error msg."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    invoke-static {}, Lcom/netease/dwrg/GameVoiceUtils;->stopRecord()V

    const/4 p1, 0x1

    .line 239
    invoke-static {p1}, Lcom/netease/dwrg/GameVoiceUtils;->onRecorderListener(I)V

    return-void
.end method

.method public onInfo(Landroid/media/MediaRecorder;II)V
    .locals 0

    .line 243
    const-string p1, "GameVoiceUtils"

    const-string p3, "cocos2d-x: record receive info msg."

    invoke-static {p1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    invoke-static {}, Lcom/netease/dwrg/GameVoiceUtils;->stopRecord()V

    const/4 p1, 0x1

    if-eq p2, p1, :cond_2

    const/16 p3, 0x320

    if-eq p2, p3, :cond_1

    const/16 p3, 0x321

    if-eq p2, p3, :cond_0

    .line 256
    invoke-static {p1}, Lcom/netease/dwrg/GameVoiceUtils;->onRecorderListener(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    .line 253
    invoke-static {p1}, Lcom/netease/dwrg/GameVoiceUtils;->onRecorderListener(I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x4

    .line 250
    invoke-static {p1}, Lcom/netease/dwrg/GameVoiceUtils;->onRecorderListener(I)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x6

    .line 247
    invoke-static {p1}, Lcom/netease/dwrg/GameVoiceUtils;->onRecorderListener(I)V

    :goto_0
    return-void
.end method
