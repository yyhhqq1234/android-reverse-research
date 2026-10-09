.class final Lcom/tencent/midas/control/APMidasPayHelper$9;
.super Ljava/lang/Object;
.source "APMidasPayHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/midas/control/APMidasPayHelper;->preLoadPlugin(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/midas/control/IAPInitCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$from:Ljava/lang/String;

.field final synthetic val$initCallback:Lcom/tencent/midas/control/IAPInitCallBack;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/midas/control/IAPInitCallBack;)V
    .locals 0

    .prologue
    .line 888
    iput-object p1, p0, Lcom/tencent/midas/control/APMidasPayHelper$9;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/tencent/midas/control/APMidasPayHelper$9;->val$from:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/midas/control/APMidasPayHelper$9;->val$initCallback:Lcom/tencent/midas/control/IAPInitCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 892
    iget-object v0, p0, Lcom/tencent/midas/control/APMidasPayHelper$9;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/midas/control/APMidasPayHelper$9;->val$from:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/midas/control/APMidasPayHelper$9;->val$initCallback:Lcom/tencent/midas/control/IAPInitCallBack;

    invoke-static {v0, v1, v2}, Lcom/tencent/midas/control/APMidasPayHelper;->access$1200(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/midas/control/IAPInitCallBack;)V

    .line 894
    return-void
.end method
