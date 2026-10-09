.class public Lcom/tencent/msdk/framework/msdkview/diffaccount/DiffAccountDialog;
.super Ljava/lang/Object;
.source "DiffAccountDialog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method


# virtual methods
.method public showDefaultDiffAccountAlert()V
    .locals 4

    .prologue
    .line 26
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/msdk/WeGame;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 27
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 28
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 29
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v2, "\u5f02\u8d26\u53f7\u63d0\u9192"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 30
    const-string/jumbo v2, "\u4f60\u5f53\u524d\u62c9\u8d77\u7684\u8d26\u53f7\u4e0e\u4f60\u672c\u5730\u7684\u8d26\u53f7\u4e0d\u4e00\u81f4\uff0c\u8bf7\u9009\u62e9\u4f7f\u7528\u54ea\u4e2a\u8d26\u53f7\u767b\u9646\uff1a"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 31
    const-string/jumbo v2, "\u672c\u5730\u8d26\u53f7"

    new-instance v3, Lcom/tencent/msdk/framework/msdkview/diffaccount/DiffAccountDialog$1;

    invoke-direct {v3, p0}, Lcom/tencent/msdk/framework/msdkview/diffaccount/DiffAccountDialog$1;-><init>(Lcom/tencent/msdk/framework/msdkview/diffaccount/DiffAccountDialog;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 47
    const-string/jumbo v2, "\u62c9\u8d77\u8d26\u53f7"

    new-instance v3, Lcom/tencent/msdk/framework/msdkview/diffaccount/DiffAccountDialog$2;

    invoke-direct {v3, p0}, Lcom/tencent/msdk/framework/msdkview/diffaccount/DiffAccountDialog$2;-><init>(Lcom/tencent/msdk/framework/msdkview/diffaccount/DiffAccountDialog;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 62
    new-instance v2, Lcom/tencent/msdk/framework/msdkview/diffaccount/DiffAccountDialog$3;

    invoke-direct {v2, p0}, Lcom/tencent/msdk/framework/msdkview/diffaccount/DiffAccountDialog$3;-><init>(Lcom/tencent/msdk/framework/msdkview/diffaccount/DiffAccountDialog;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 68
    const-string v2, "AlertDialog Create"

    invoke-static {v2}, Lcom/tencent/msdk/framework/mlog/MLog;->d(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 74
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    :goto_0
    return-void

    .line 71
    :cond_0
    const-string v2, "Activity is null or is finishing"

    invoke-static {v2}, Lcom/tencent/msdk/framework/mlog/MLog;->w(Ljava/lang/String;)V

    goto :goto_0
.end method
