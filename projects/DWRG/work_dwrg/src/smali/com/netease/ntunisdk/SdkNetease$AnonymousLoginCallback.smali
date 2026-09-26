.class Lcom/netease/ntunisdk/SdkNetease$AnonymousLoginCallback;
.super Ljava/lang/Object;
.source "SdkNetease.java"

# interfaces
.implements Lcom/netease/mpay/BackgroundAuthenticationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/SdkNetease;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnonymousLoginCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/SdkNetease;


# direct methods
.method private constructor <init>(Lcom/netease/ntunisdk/SdkNetease;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/netease/ntunisdk/SdkNetease$AnonymousLoginCallback;->this$0:Lcom/netease/ntunisdk/SdkNetease;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/netease/ntunisdk/SdkNetease;Lcom/netease/ntunisdk/SdkNetease$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/netease/ntunisdk/SdkNetease;
    .param p2, "x1"    # Lcom/netease/ntunisdk/SdkNetease$1;

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/SdkNetease$AnonymousLoginCallback;-><init>(Lcom/netease/ntunisdk/SdkNetease;)V

    return-void
.end method


# virtual methods
.method public onLoginFail(Ljava/lang/String;)V
    .locals 6
    .param p1, "errMsg"    # Ljava/lang/String;

    .prologue
    .line 97
    const-string v0, "UniSDK netease"

    const-string v1, "netease anonymous login fail, thread=%d, errMsg=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 98
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    .line 97
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method public onLoginSuccess(Lcom/netease/mpay/User;)V
    .locals 6
    .param p1, "user"    # Lcom/netease/mpay/User;

    .prologue
    .line 89
    const-string v0, "UniSDK netease"

    const-string v1, "netease anonymous login succ, thread=%d, uid=%s, token=%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 90
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p1, Lcom/netease/mpay/User;->uid:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p1, Lcom/netease/mpay/User;->token:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 89
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    return-void
.end method
