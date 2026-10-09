.class final Lcom/tencent/apollo/ApolloVoiceDeviceMgr$GVoiceThread;
.super Ljava/lang/Object;
.source "ApolloVoiceDeviceMgr.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/apollo/ApolloVoiceDeviceMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "GVoiceThread"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 745
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/apollo/ApolloVoiceDeviceMgr$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/tencent/apollo/ApolloVoiceDeviceMgr$1;

    .prologue
    .line 745
    invoke-direct {p0}, Lcom/tencent/apollo/ApolloVoiceDeviceMgr$GVoiceThread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 748
    invoke-static {}, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->access$800()Z

    move-result v0

    if-nez v0, :cond_0

    .line 749
    const-string v0, "apolloVoice"

    const-string/jumbo v1, "thread bluethooth sco check!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    const/4 v0, -0x1

    invoke-static {v0}, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->ApolloVoiceSetDeviceConnection(I)V

    .line 751
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->access$1502(Z)Z

    .line 753
    :cond_0
    return-void
.end method
