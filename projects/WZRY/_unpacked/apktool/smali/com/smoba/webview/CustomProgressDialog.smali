.class public Lcom/smoba/webview/CustomProgressDialog;
.super Ljava/lang/Object;
.source "CustomProgressDialog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createLoadingDialog(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Dialog;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v10, -0x1

    .line 22
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 23
    .local v2, "inflater":Landroid/view/LayoutInflater;
    sget v8, Lcom/smoba/webview/WebViewResID;->smobawebview_loading_dialog:I

    const/4 v9, 0x0

    invoke-virtual {v2, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 24
    .local v7, "v":Landroid/view/View;
    sget v8, Lcom/smoba/webview/WebViewResID;->smobawebview_loading_dialogview:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 26
    .local v3, "layout":Landroid/widget/LinearLayout;
    sget v8, Lcom/smoba/webview/WebViewResID;->smobawebview_in_circleImge:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 28
    .local v5, "smobawebview_in_circleImge":Landroid/widget/ImageView;
    sget v8, Lcom/smoba/webview/WebViewResID;->smobawebview_out_circleImge:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 32
    .local v6, "smobawebview_out_circleImge":Landroid/widget/ImageView;
    sget v8, Lcom/smoba/webview/WebViewResID;->smobawebview_load_animation:I

    .line 31
    invoke-static {p0, v8}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 35
    .local v0, "hyperspaceJumpAnimation":Landroid/view/animation/Animation;
    sget v8, Lcom/smoba/webview/WebViewResID;->smobawebview_load_animation_reverse:I

    .line 34
    invoke-static {p0, v8}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 37
    .local v1, "hyperspaceJumpAnimationReverse":Landroid/view/animation/Animation;
    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 38
    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 41
    new-instance v4, Landroid/app/Dialog;

    sget v8, Lcom/smoba/webview/WebViewResID;->smobawebview_ProgressStyle:I

    invoke-direct {v4, p0, v8}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 43
    .local v4, "loadingDialog":Landroid/app/Dialog;
    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 44
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    .line 46
    invoke-direct {v8, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 44
    invoke-virtual {v4, v3, v8}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 47
    return-object v4
.end method
