.class final Lcom/tencent/apollo/ApolloVoiceDeviceMgr$GVoiceHandler;
.super Landroid/os/Handler;
.source "ApolloVoiceDeviceMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/apollo/ApolloVoiceDeviceMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "GVoiceHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 712
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/apollo/ApolloVoiceDeviceMgr$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/tencent/apollo/ApolloVoiceDeviceMgr$1;

    .prologue
    .line 712
    invoke-direct {p0}, Lcom/tencent/apollo/ApolloVoiceDeviceMgr$GVoiceHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 715
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 716
    return-void
.end method
