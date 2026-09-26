.class public Lcom/netease/epay/sdk/card/b/a;
.super Lcom/netease/epay/sdk/base/event/BaseEvent;
.source "CardActivityEvent.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Z

.field public c:Z


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0, p2, p3, p1}, Lcom/netease/epay/sdk/base/event/BaseEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/support/v4/app/FragmentActivity;)V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/epay/sdk/card/b/a;->c:Z

    .line 29
    iput-object p4, p0, Lcom/netease/epay/sdk/card/b/a;->a:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public constructor <init>(Lcom/netease/epay/sdk/base/util/ErrorCode$CUSTOM_CODE;Landroid/support/v4/app/FragmentActivity;)V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/netease/epay/sdk/base/event/BaseEvent;-><init>(Lcom/netease/epay/sdk/base/util/ErrorCode$CUSTOM_CODE;Landroid/support/v4/app/FragmentActivity;)V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/epay/sdk/card/b/a;->c:Z

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/support/v4/app/FragmentActivity;)V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcom/netease/epay/sdk/base/event/BaseEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/support/v4/app/FragmentActivity;)V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/epay/sdk/card/b/a;->c:Z

    .line 21
    return-void
.end method
