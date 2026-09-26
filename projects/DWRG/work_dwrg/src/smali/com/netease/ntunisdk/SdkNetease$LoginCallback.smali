.class Lcom/netease/ntunisdk/SdkNetease$LoginCallback;
.super Ljava/lang/Object;
.source "SdkNetease.java"

# interfaces
.implements Lcom/netease/mpay/AuthenticationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/SdkNetease;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoginCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/SdkNetease;


# direct methods
.method private constructor <init>(Lcom/netease/ntunisdk/SdkNetease;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/netease/ntunisdk/SdkNetease$LoginCallback;->this$0:Lcom/netease/ntunisdk/SdkNetease;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/netease/ntunisdk/SdkNetease;Lcom/netease/ntunisdk/SdkNetease$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/netease/ntunisdk/SdkNetease;
    .param p2, "x1"    # Lcom/netease/ntunisdk/SdkNetease$1;

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/SdkNetease$LoginCallback;-><init>(Lcom/netease/ntunisdk/SdkNetease;)V

    return-void
.end method


# virtual methods
.method public onDialogFinish()V
    .locals 2

    .prologue
    .line 152
    const-string v0, "UniSDK netease"

    const-string v1, "onDialogFinish"

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    return-void
.end method

.method public onEnterGame(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "jsonParams"    # Ljava/lang/String;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNetease$LoginCallback;->this$0:Lcom/netease/ntunisdk/SdkNetease;

    invoke-virtual {v0, p1, p2}, Lcom/netease/ntunisdk/SdkNetease;->onEnterGameDone(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    return-void
.end method

.method public onGuestBindSuccess(Lcom/netease/mpay/User;)V
    .locals 7
    .param p1, "user"    # Lcom/netease/mpay/User;

    .prologue
    .line 157
    const-string v1, "UniSDK netease"

    const-string v2, "netease guest bind succ, thread=%d, uid=%s, guest=%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 158
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p1, Lcom/netease/mpay/User;->uid:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, p1, Lcom/netease/mpay/User;->originGuestUid:Ljava/lang/String;

    aput-object v5, v3, v4

    .line 157
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    iget-object v0, p1, Lcom/netease/mpay/User;->originGuestUid:Ljava/lang/String;

    .line 165
    .local v0, "originGuestUid":Ljava/lang/String;
    iget-object v1, p0, Lcom/netease/ntunisdk/SdkNetease$LoginCallback;->this$0:Lcom/netease/ntunisdk/SdkNetease;

    const-string v2, "ORIGIN_GUEST_UID"

    invoke-virtual {v1, v2, v0}, Lcom/netease/ntunisdk/SdkNetease;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/SdkNetease$LoginCallback;->onLoginSuccess(Lcom/netease/mpay/User;)V

    .line 167
    return-void
.end method

.method public onLoginSuccess(Lcom/netease/mpay/User;)V
    .locals 8
    .param p1, "user"    # Lcom/netease/mpay/User;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 107
    const-string v0, "UniSDK netease"

    const-string v1, "netease login succ, thread=%d, uid=%s, token=%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    .line 108
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v5

    iget-object v3, p1, Lcom/netease/mpay/User;->uid:Ljava/lang/String;

    aput-object v3, v2, v6

    iget-object v3, p1, Lcom/netease/mpay/User;->token:Ljava/lang/String;

    aput-object v3, v2, v7

    .line 107
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNetease$LoginCallback;->this$0:Lcom/netease/ntunisdk/SdkNetease;

    const-string v1, "UIN"

    iget-object v2, p1, Lcom/netease/mpay/User;->uid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/netease/ntunisdk/SdkNetease;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNetease$LoginCallback;->this$0:Lcom/netease/ntunisdk/SdkNetease;

    const-string v1, "SESSION"

    iget-object v2, p1, Lcom/netease/mpay/User;->token:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/netease/ntunisdk/SdkNetease;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNetease$LoginCallback;->this$0:Lcom/netease/ntunisdk/SdkNetease;

    const-string v1, "USR_NAME"

    iget-object v2, p1, Lcom/netease/mpay/User;->nickname:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/netease/ntunisdk/SdkNetease;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNetease$LoginCallback;->this$0:Lcom/netease/ntunisdk/SdkNetease;

    const-string v1, "DEVICE_ID"

    iget-object v2, p1, Lcom/netease/mpay/User;->devId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/netease/ntunisdk/SdkNetease;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNetease$LoginCallback;->this$0:Lcom/netease/ntunisdk/SdkNetease;

    const-string v1, "FORUM_URL"

    iget-object v2, p1, Lcom/netease/mpay/User;->avatarUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/netease/ntunisdk/SdkNetease;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNetease$LoginCallback;->this$0:Lcom/netease/ntunisdk/SdkNetease;

    const-string v1, "ORIGIN_GUEST_UID"

    iget-object v2, p1, Lcom/netease/mpay/User;->originGuestUid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/netease/ntunisdk/SdkNetease;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const-string v0, "UniSDK netease"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LoginCallback realname res:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p1, Lcom/netease/mpay/User;->realnameSet:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-boolean v0, p1, Lcom/netease/mpay/User;->realnameSet:Z

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNetease$LoginCallback;->this$0:Lcom/netease/ntunisdk/SdkNetease;

    const-string v1, "REAL_NAME_VERIFIED"

    invoke-virtual {v0, v1, v7}, Lcom/netease/ntunisdk/SdkNetease;->setPropInt(Ljava/lang/String;I)V

    .line 126
    :goto_0
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNetease$LoginCallback;->this$0:Lcom/netease/ntunisdk/SdkNetease;

    const-string v1, "VERIFY_TYPE"

    iget v2, p1, Lcom/netease/mpay/User;->mobileBindStatus:I

    invoke-virtual {v0, v1, v2}, Lcom/netease/ntunisdk/SdkNetease;->setPropInt(Ljava/lang/String;I)V

    .line 128
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNetease$LoginCallback;->this$0:Lcom/netease/ntunisdk/SdkNetease;

    const-string v1, "LOGIN_STAT"

    invoke-virtual {v0, v1, v6}, Lcom/netease/ntunisdk/SdkNetease;->setPropInt(Ljava/lang/String;I)V

    .line 130
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNetease$LoginCallback;->this$0:Lcom/netease/ntunisdk/SdkNetease;

    const-string v1, "deviceid"

    iget-object v2, p1, Lcom/netease/mpay/User;->devId:Ljava/lang/String;

    invoke-static {v0, v1, v2, v5}, Lcom/netease/ntunisdk/SdkNetease;->access$000(Lcom/netease/ntunisdk/SdkNetease;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 131
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNetease$LoginCallback;->this$0:Lcom/netease/ntunisdk/SdkNetease;

    invoke-virtual {v0, v5}, Lcom/netease/ntunisdk/SdkNetease;->loginDone(I)V

    .line 132
    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNetease$LoginCallback;->this$0:Lcom/netease/ntunisdk/SdkNetease;

    const-string v1, "REAL_NAME_VERIFIED"

    invoke-virtual {v0, v1, v5}, Lcom/netease/ntunisdk/SdkNetease;->setPropInt(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public onLogout(Ljava/lang/String;)V
    .locals 6
    .param p1, "uid"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 136
    const-string v0, "UniSDK netease"

    const-string v1, "netease logout succ, thread=%d, uid=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNetease$LoginCallback;->this$0:Lcom/netease/ntunisdk/SdkNetease;

    const-string v1, "UIN"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/netease/ntunisdk/SdkNetease;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNetease$LoginCallback;->this$0:Lcom/netease/ntunisdk/SdkNetease;

    const-string v1, "SESSION"

    const-string v2, "not_login"

    invoke-virtual {v0, v1, v2}, Lcom/netease/ntunisdk/SdkNetease;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNetease$LoginCallback;->this$0:Lcom/netease/ntunisdk/SdkNetease;

    const-string v1, "DEVICE_ID"

    iget-object v2, p0, Lcom/netease/ntunisdk/SdkNetease$LoginCallback;->this$0:Lcom/netease/ntunisdk/SdkNetease;

    invoke-virtual {v2}, Lcom/netease/ntunisdk/SdkNetease;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netease/ntunisdk/SdkNetease;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNetease$LoginCallback;->this$0:Lcom/netease/ntunisdk/SdkNetease;

    const-string v1, "ORIGIN_GUEST_UID"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/netease/ntunisdk/SdkNetease;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNetease$LoginCallback;->this$0:Lcom/netease/ntunisdk/SdkNetease;

    const-string v1, "LOGIN_STAT"

    invoke-virtual {v0, v1, v5}, Lcom/netease/ntunisdk/SdkNetease;->setPropInt(Ljava/lang/String;I)V

    .line 145
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNetease$LoginCallback;->this$0:Lcom/netease/ntunisdk/SdkNetease;

    invoke-virtual {v0, v5}, Lcom/netease/ntunisdk/SdkNetease;->logoutDone(I)V

    .line 146
    return-void
.end method
