.class public Lcom/tencent/msdk/realnameauth/LoadingDialog;
.super Ljava/lang/Object;
.source "LoadingDialog.java"


# instance fields
.field private activity:Landroid/app/Activity;

.field private loadingDialog:Landroid/app/ProgressDialog;

.field private msg:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/msdk/realnameauth/LoadingDialog;->loadingDialog:Landroid/app/ProgressDialog;

    .line 18
    iput-object p1, p0, Lcom/tencent/msdk/realnameauth/LoadingDialog;->activity:Landroid/app/Activity;

    .line 19
    iput-object p2, p0, Lcom/tencent/msdk/realnameauth/LoadingDialog;->msg:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method public hide()V
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/tencent/msdk/realnameauth/LoadingDialog;->loadingDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/tencent/msdk/realnameauth/LoadingDialog;->loadingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 34
    :cond_0
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/tencent/msdk/realnameauth/LoadingDialog;->loadingDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/tencent/msdk/realnameauth/LoadingDialog;->loadingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    .line 40
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public show()V
    .locals 3

    .prologue
    .line 23
    iget-object v0, p0, Lcom/tencent/msdk/realnameauth/LoadingDialog;->loadingDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 24
    iget-object v0, p0, Lcom/tencent/msdk/realnameauth/LoadingDialog;->activity:Landroid/app/Activity;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/tencent/msdk/realnameauth/LoadingDialog;->msg:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/msdk/realnameauth/LoadingDialog;->loadingDialog:Landroid/app/ProgressDialog;

    .line 28
    :goto_0
    return-void

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/tencent/msdk/realnameauth/LoadingDialog;->loadingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    goto :goto_0
.end method
