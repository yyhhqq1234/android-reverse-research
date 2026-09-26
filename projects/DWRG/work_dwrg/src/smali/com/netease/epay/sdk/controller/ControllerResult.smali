.class public Lcom/netease/epay/sdk/controller/ControllerResult;
.super Ljava/lang/Object;
.source "ControllerResult.java"


# static fields
.field public static final SUCCESS:Ljava/lang/String; = "000000"


# instance fields
.field public activity:Landroid/support/v4/app/FragmentActivity;

.field public code:Ljava/lang/String;

.field public isSuccess:Z

.field public msg:Ljava/lang/String;

.field public otherParams:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/netease/epay/sdk/controller/ControllerResult;->code:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lcom/netease/epay/sdk/controller/ControllerResult;->msg:Ljava/lang/String;

    .line 26
    const-string v0, "000000"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netease/epay/sdk/controller/ControllerResult;->isSuccess:Z

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Landroid/support/v4/app/FragmentActivity;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "result"    # Lorg/json/JSONObject;
    .param p4, "activity"    # Landroid/support/v4/app/FragmentActivity;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/netease/epay/sdk/controller/ControllerResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    iput-object p4, p0, Lcom/netease/epay/sdk/controller/ControllerResult;->activity:Landroid/support/v4/app/FragmentActivity;

    .line 33
    iput-object p3, p0, Lcom/netease/epay/sdk/controller/ControllerResult;->otherParams:Lorg/json/JSONObject;

    .line 34
    return-void
.end method
