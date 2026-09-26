.class public Lcom/netease/pushservice/PhoneStateChangeListener;
.super Landroid/telephony/PhoneStateListener;
.source "PhoneStateChangeListener.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NGPush_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/netease/pushservice/PhoneStateChangeListener;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/pushservice/PhoneStateChangeListener;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    .line 13
    return-void
.end method

.method private getState(I)Ljava/lang/String;
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 32
    packed-switch p1, :pswitch_data_0

    .line 42
    const-string v0, "state unknown"

    :goto_0
    return-object v0

    .line 34
    :pswitch_0
    const-string v0, "DATA_DISCONNECTED"

    goto :goto_0

    .line 36
    :pswitch_1
    const-string v0, "DATA_CONNECTING"

    goto :goto_0

    .line 38
    :pswitch_2
    const-string v0, "DATA_CONNECTED"

    goto :goto_0

    .line 40
    :pswitch_3
    const-string v0, "DATA_SUSPENDED"

    goto :goto_0

    .line 32
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private patchPlaceholder()V
    .locals 2

    .prologue
    .line 16
    sget-object v0, Lcom/netease/pushservice/PhoneStateChangeListener;->TAG:Ljava/lang/String;

    const-class v1, Lcom/netease/ntunisdk/base/PatchPlaceholder;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    return-void
.end method


# virtual methods
.method public onDataConnectionStateChanged(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 21
    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onDataConnectionStateChanged(I)V

    .line 22
    sget-object v0, Lcom/netease/pushservice/PhoneStateChangeListener;->TAG:Ljava/lang/String;

    const-string v1, "onDataConnectionStateChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    sget-object v0, Lcom/netease/pushservice/PhoneStateChangeListener;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "state = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/netease/pushservice/PhoneStateChangeListener;->getState(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    const/4 v0, 0x2

    if-ne v0, p1, :cond_0

    .line 25
    invoke-static {}, Lcom/netease/pushservice/PushServiceHelper;->getInstance()Lcom/netease/pushservice/PushServiceHelper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netease/pushservice/PushServiceHelper;->connect(Z)V

    .line 29
    :cond_0
    return-void
.end method
