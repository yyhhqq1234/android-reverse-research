.class public Lcom/netease/epay/sdk/psw/setpwd/a;
.super Lcom/netease/epay/sdk/base/event/BaseEvent;
.source "SetShortEvent.java"


# instance fields
.field public a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/netease/epay/sdk/base/ui/SdkActivity;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 15
    invoke-direct {p0, v0, v0, p2}, Lcom/netease/epay/sdk/base/event/BaseEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/support/v4/app/FragmentActivity;)V

    .line 16
    iput-object p1, p0, Lcom/netease/epay/sdk/psw/setpwd/a;->a:Ljava/lang/String;

    .line 17
    return-void
.end method
