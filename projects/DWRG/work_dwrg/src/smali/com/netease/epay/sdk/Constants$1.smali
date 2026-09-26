.class final Lcom/netease/epay/sdk/Constants$1;
.super Ljava/lang/Object;
.source "Constants.java"

# interfaces
.implements Lcom/netease/epay/sdk/base/ui/OnlyMessageFragment$IOnlyMessageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/epay/sdk/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-static {p1, p2}, Lcom/netease/epay/sdk/ExitUtil;->failCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    return-void
.end method
