.class public final enum Lcom/netease/epay/sdk/base/util/fingerprint/Root$SHELL_CMD;
.super Ljava/lang/Enum;
.source "Root.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/epay/sdk/base/util/fingerprint/Root;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SHELL_CMD"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netease/epay/sdk/base/util/fingerprint/Root$SHELL_CMD;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netease/epay/sdk/base/util/fingerprint/Root$SHELL_CMD;

.field public static final enum check_su_binary:Lcom/netease/epay/sdk/base/util/fingerprint/Root$SHELL_CMD;


# instance fields
.field command:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 55
    new-instance v0, Lcom/netease/epay/sdk/base/util/fingerprint/Root$SHELL_CMD;

    const-string v1, "check_su_binary"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "/system/xbin/which"

    aput-object v3, v2, v4

    const-string v3, "su"

    aput-object v3, v2, v5

    invoke-direct {v0, v1, v4, v2}, Lcom/netease/epay/sdk/base/util/fingerprint/Root$SHELL_CMD;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v0, Lcom/netease/epay/sdk/base/util/fingerprint/Root$SHELL_CMD;->check_su_binary:Lcom/netease/epay/sdk/base/util/fingerprint/Root$SHELL_CMD;

    .line 54
    new-array v0, v5, [Lcom/netease/epay/sdk/base/util/fingerprint/Root$SHELL_CMD;

    sget-object v1, Lcom/netease/epay/sdk/base/util/fingerprint/Root$SHELL_CMD;->check_su_binary:Lcom/netease/epay/sdk/base/util/fingerprint/Root$SHELL_CMD;

    aput-object v1, v0, v4

    sput-object v0, Lcom/netease/epay/sdk/base/util/fingerprint/Root$SHELL_CMD;->$VALUES:[Lcom/netease/epay/sdk/base/util/fingerprint/Root$SHELL_CMD;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 0
    .param p3, "command"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 58
    iput-object p3, p0, Lcom/netease/epay/sdk/base/util/fingerprint/Root$SHELL_CMD;->command:[Ljava/lang/String;

    .line 59
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netease/epay/sdk/base/util/fingerprint/Root$SHELL_CMD;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 54
    const-class v0, Lcom/netease/epay/sdk/base/util/fingerprint/Root$SHELL_CMD;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/util/fingerprint/Root$SHELL_CMD;

    return-object v0
.end method

.method public static values()[Lcom/netease/epay/sdk/base/util/fingerprint/Root$SHELL_CMD;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/netease/epay/sdk/base/util/fingerprint/Root$SHELL_CMD;->$VALUES:[Lcom/netease/epay/sdk/base/util/fingerprint/Root$SHELL_CMD;

    invoke-virtual {v0}, [Lcom/netease/epay/sdk/base/util/fingerprint/Root$SHELL_CMD;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netease/epay/sdk/base/util/fingerprint/Root$SHELL_CMD;

    return-object v0
.end method
