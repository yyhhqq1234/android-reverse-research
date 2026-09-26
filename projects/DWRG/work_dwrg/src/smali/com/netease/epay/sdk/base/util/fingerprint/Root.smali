.class public Lcom/netease/epay/sdk/base/util/fingerprint/Root;
.super Ljava/lang/Object;
.source "Root.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/epay/sdk/base/util/fingerprint/Root$SHELL_CMD;,
        Lcom/netease/epay/sdk/base/util/fingerprint/Root$ExecShell;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkRootMethod1()Z
    .locals 2

    .prologue
    .line 22
    sget-object v0, Landroid/os/Build;->TAGS:Ljava/lang/String;

    .line 23
    if-eqz v0, :cond_0

    const-string v1, "test-keys"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public checkRootMethod3()Z
    .locals 2

    .prologue
    .line 27
    new-instance v0, Lcom/netease/epay/sdk/base/util/fingerprint/Root$ExecShell;

    invoke-direct {v0, p0}, Lcom/netease/epay/sdk/base/util/fingerprint/Root$ExecShell;-><init>(Lcom/netease/epay/sdk/base/util/fingerprint/Root;)V

    sget-object v1, Lcom/netease/epay/sdk/base/util/fingerprint/Root$SHELL_CMD;->check_su_binary:Lcom/netease/epay/sdk/base/util/fingerprint/Root$SHELL_CMD;

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/util/fingerprint/Root$ExecShell;->executeCommand(Lcom/netease/epay/sdk/base/util/fingerprint/Root$SHELL_CMD;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDeviceRooted()Z
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/util/fingerprint/Root;->checkRootMethod1()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/util/fingerprint/Root;->checkRootMethod3()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
