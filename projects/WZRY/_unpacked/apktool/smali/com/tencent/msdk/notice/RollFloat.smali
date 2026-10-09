.class public Lcom/tencent/msdk/notice/RollFloat;
.super Ljava/lang/Object;
.source "RollFloat.java"


# instance fields
.field private activity:Landroid/app/Activity;

.field private mFloatLayout:Landroid/widget/LinearLayout;

.field private mParams:Landroid/widget/FrameLayout$LayoutParams;

.field private mRootview:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/tencent/msdk/notice/RollFloat;->activity:Landroid/app/Activity;

    .line 20
    invoke-static {p1}, Lcom/tencent/msdk/notice/NoticeResID;->loadScrollLayout(Landroid/content/Context;)V

    .line 22
    :try_start_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 24
    .local v1, "inflater":Landroid/view/LayoutInflater;
    sget v3, Lcom/tencent/msdk/notice/NoticeResID;->layout_scroll_notice:I

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/tencent/msdk/notice/RollFloat;->mFloatLayout:Landroid/widget/LinearLayout;

    .line 26
    iget-object v3, p0, Lcom/tencent/msdk/notice/RollFloat;->mFloatLayout:Landroid/widget/LinearLayout;

    sget v4, Lcom/tencent/msdk/notice/NoticeResID;->rollImage:I

    .line 27
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 28
    .local v2, "rollImage":Landroid/widget/ImageView;
    sget v3, Lcom/tencent/msdk/notice/NoticeResID;->notice_roll_drawable:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 30
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput-object v3, p0, Lcom/tencent/msdk/notice/RollFloat;->mParams:Landroid/widget/FrameLayout$LayoutParams;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    .end local v2    # "rollImage":Landroid/widget/ImageView;
    :goto_0
    return-void

    .line 32
    :catch_0
    move-exception v0

    .line 34
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getRootView()V
    .locals 4

    .prologue
    .line 64
    :try_start_0
    iget-object v2, p0, Lcom/tencent/msdk/notice/RollFloat;->mRootview:Landroid/widget/FrameLayout;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/tencent/msdk/notice/RollFloat;->activity:Landroid/app/Activity;

    if-eqz v2, :cond_0

    .line 66
    iget-object v2, p0, Lcom/tencent/msdk/notice/RollFloat;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const v3, 0x1020002

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 67
    .local v1, "rootview":Landroid/view/View;
    if-eqz v1, :cond_1

    instance-of v2, v1, Landroid/widget/FrameLayout;

    if-eqz v2, :cond_1

    .line 68
    check-cast v1, Landroid/widget/FrameLayout;

    .end local v1    # "rootview":Landroid/view/View;
    iput-object v1, p0, Lcom/tencent/msdk/notice/RollFloat;->mRootview:Landroid/widget/FrameLayout;

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 70
    .restart local v1    # "rootview":Landroid/view/View;
    :cond_1
    const-string v2, "getRootView is null or is not FrameLayout"

    invoke-static {v2}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 73
    .end local v1    # "rootview":Landroid/view/View;
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "getRootView failed"

    invoke-static {v2}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public hideRollNotice()V
    .locals 2

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/tencent/msdk/notice/RollFloat;->getRootView()V

    .line 55
    iget-object v0, p0, Lcom/tencent/msdk/notice/RollFloat;->mRootview:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/msdk/notice/RollFloat;->mFloatLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/tencent/msdk/notice/RollFloat;->mRootview:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/tencent/msdk/notice/RollFloat;->mFloatLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 60
    :goto_0
    return-void

    .line 58
    :cond_0
    const-string v0, "hideRollNotice mRootview or mFloatLayout is null"

    invoke-static {v0}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public showRollNotice(Ljava/lang/String;)V
    .locals 5
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/tencent/msdk/notice/RollFloat;->getRootView()V

    .line 40
    iget-object v1, p0, Lcom/tencent/msdk/notice/RollFloat;->mRootview:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/msdk/notice/RollFloat;->mFloatLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    .line 41
    iget-object v1, p0, Lcom/tencent/msdk/notice/RollFloat;->mRootview:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/tencent/msdk/notice/RollFloat;->mFloatLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 42
    iget-object v1, p0, Lcom/tencent/msdk/notice/RollFloat;->mFloatLayout:Landroid/widget/LinearLayout;

    sget v2, Lcom/tencent/msdk/notice/NoticeResID;->marquee:I

    .line 43
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/msdk/notice/RollTextView;

    .line 44
    .local v0, "autoScrollTextView":Lcom/tencent/msdk/notice/RollTextView;
    invoke-virtual {v0, p1}, Lcom/tencent/msdk/notice/RollTextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    invoke-virtual {v0}, Lcom/tencent/msdk/notice/RollTextView;->startScroll()V

    .line 46
    iget-object v1, p0, Lcom/tencent/msdk/notice/RollFloat;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/msdk/notice/RollTextView;->init(Landroid/view/WindowManager;)V

    .line 47
    iget-object v1, p0, Lcom/tencent/msdk/notice/RollFloat;->mRootview:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/tencent/msdk/notice/RollFloat;->mFloatLayout:Landroid/widget/LinearLayout;

    const/4 v3, -0x1

    iget-object v4, p0, Lcom/tencent/msdk/notice/RollFloat;->mParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 51
    .end local v0    # "autoScrollTextView":Lcom/tencent/msdk/notice/RollTextView;
    :goto_0
    return-void

    .line 49
    :cond_0
    const-string v1, "showRollNotice mRootview or mFloatLayout is null"

    invoke-static {v1}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    goto :goto_0
.end method
