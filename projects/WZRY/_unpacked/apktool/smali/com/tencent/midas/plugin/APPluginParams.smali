.class public Lcom/tencent/midas/plugin/APPluginParams;
.super Ljava/lang/Object;
.source "APPluginParams.java"


# instance fields
.field public mApkFilePath:Ljava/lang/String;

.field public mConponentName:Ljava/lang/String;

.field public mDialog:Landroid/app/Dialog;

.field public mDialogDismissBySDK:Z

.field public mIntent:Landroid/content/Intent;

.field public mPluginName:Ljava/lang/String;

.field mPluginType:I

.field public mProgressTips:Ljava/lang/String;

.field public mProxyActivityClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field public mRequestCode:I

.field public mTimeOut:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "pluginType"    # I

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/midas/plugin/APPluginParams;->mRequestCode:I

    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/midas/plugin/APPluginParams;->mDialogDismissBySDK:Z

    .line 21
    const/16 v0, 0x2710

    iput v0, p0, Lcom/tencent/midas/plugin/APPluginParams;->mTimeOut:I

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/midas/plugin/APPluginParams;->mPluginType:I

    .line 28
    iput p1, p0, Lcom/tencent/midas/plugin/APPluginParams;->mPluginType:I

    .line 29
    return-void
.end method
