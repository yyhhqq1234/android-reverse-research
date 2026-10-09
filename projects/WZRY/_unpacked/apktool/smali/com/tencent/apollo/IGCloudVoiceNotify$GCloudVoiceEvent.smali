.class public final Lcom/tencent/apollo/IGCloudVoiceNotify$GCloudVoiceEvent;
.super Ljava/lang/Object;
.source "IGCloudVoiceNotify.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/apollo/IGCloudVoiceNotify;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GCloudVoiceEvent"
.end annotation


# static fields
.field public static final EVENT_AUDIO_INTERRUPT_BEGIN:I = 0x32

.field public static final EVENT_AUDIO_INTERRUPT_END:I = 0x33

.field public static final EVENT_BLUETOOTH_HEADSET_CONNECTED:I = 0x15

.field public static final EVENT_BLUETOOTH_HEADSET_DISCONNECTED:I = 0x14

.field public static final EVENT_HEADSET_CONNECTED:I = 0xb

.field public static final EVENT_HEADSET_DISCONNECTED:I = 0xa

.field public static final EVENT_MIC_STATE_NO_OPEN:I = 0x20

.field public static final EVENT_MIC_STATE_OPEN_ERR:I = 0x1f

.field public static final EVENT_MIC_STATE_OPEN_SUCC:I = 0x1e

.field public static final EVENT_NO_DEVICE_CONNECTED:I = 0x0

.field public static final EVENT_SPEAKER_STATE_NO_OPEN:I = 0x2a

.field public static final EVENT_SPEAKER_STATE_OPEN_ERR:I = 0x29

.field public static final EVENT_SPEAKER_STATE_OPEN_SUCC:I = 0x28


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
