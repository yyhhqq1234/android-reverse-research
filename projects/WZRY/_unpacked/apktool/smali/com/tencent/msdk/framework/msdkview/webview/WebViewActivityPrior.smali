.class public Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;
.super Ljava/lang/Object;
.source "WebViewActivityPrior.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$ShareItem;,
        Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$WebviewAnimationListener;,
        Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$WebviewGestureListener;
    }
.end annotation


# static fields
.field private static final FILECHOOSER_REQUESTCODE:I = 0x1

.field private static final THUMB_SIZE:I = 0xc8


# instance fields
.field private final METAKEY_TITLEBAR:Ljava/lang/String;

.field private final METAKEY_TOOLBAR:Ljava/lang/String;

.field private final METAKEY_TOOLBAR_LANDSCAPE:Ljava/lang/String;

.field private activity:Landroid/app/Activity;

.field private cancelBtn:Landroid/widget/Button;

.field private isFullScreen:Z

.field private mAdIds:Ljava/lang/String;

.field private mAdapter:Landroid/widget/SimpleAdapter;

.field private mAnimationTitlebarHide:Landroid/view/animation/Animation;

.field private mAnimationTitlebarShow:Landroid/view/animation/Animation;

.field private mAnimationToolbarHide:Landroid/view/animation/Animation;

.field private mAnimationToolbarShow:Landroid/view/animation/Animation;

.field private mBackBtn:Landroid/widget/ImageButton;

.field private mBackUnclickableBtn:Landroid/widget/ImageButton;

.field private mBarHeight:I

.field private mColorHide:Landroid/animation/ValueAnimator;

.field private mColorShow:Landroid/animation/ValueAnimator;

.field private mDestroyRunnable:Ljava/lang/Runnable;

.field private mDetector:Landroid/view/GestureDetector;

.field private mDownloadDlg:Landroid/app/Dialog;

.field private mFavUrl:Ljava/lang/String;

.field private mFlingLimitX:I

.field private mFlingLimitY:I

.field private mForwardBtn:Landroid/widget/ImageButton;

.field private mForwardUnclickableBtn:Landroid/widget/ImageButton;

.field private mGridView:Landroid/widget/GridView;

.field private mHandler:Landroid/os/Handler;

.field private mIsShow:Ljava/lang/Boolean;

.field private mIsWXInstall:Z

.field private mItemArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private mLandMoreBtn:Landroid/view/View;

.field private mLandOpenQQBrowserBtn:Landroid/view/View;

.field private mMoreBtn:Landroid/widget/ImageButton;

.field private mMoreDlg:Landroid/app/Dialog;

.field private mOpenQQBrowserBtn:Landroid/widget/ImageButton;

.field private mOrientation:I

.field private mOriginalUrl:Ljava/lang/String;

.field private mParentLayout:Landroid/view/ViewGroup;

.field private mPayAPI:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private mRefreshBtn:Landroid/widget/ImageButton;

.field private mReturnAppBtn:Landroid/view/View;

.field private mSendToQQ:Z

.field private mSendToWeixin:Z

.field private mStopBtn:Landroid/widget/ImageButton;

.field private mTitleBar:Landroid/widget/RelativeLayout;

.field private mTitleBarHide:Landroid/animation/ValueAnimator;

.field private mTitleBarShow:Landroid/animation/ValueAnimator;

.field private mTitleStr:Ljava/lang/String;

.field private mToolBar:Landroid/widget/LinearLayout;

.field private mToolBarHide:Landroid/animation/ValueAnimator;

.field private mToolBarShow:Landroid/animation/ValueAnimator;

.field private mWebTitle:Landroid/widget/TextView;

.field private mWebView:Lcom/tencent/smtt/sdk/WebView;

.field private mWebViewOrientation:I

.field private msdkParams:[Ljava/lang/String;

.field private titlebarHideable:Ljava/lang/Boolean;

.field private toolbarLandscapeHideable:Ljava/lang/Boolean;

.field private toolbarPortraitHideable:Ljava/lang/Boolean;

.field private uploadFile:Lcom/tencent/smtt/sdk/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/smtt/sdk/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private uploadFileArray:Lcom/tencent/smtt/sdk/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/smtt/sdk/ValueCallback",
            "<[",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "timestamp"

    aput-object v1, v0, v3

    const-string v1, "appid"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "algorithm"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "msdkEncodeParam"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "version"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "sig"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "encode"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "openid"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->msdkParams:[Ljava/lang/String;

    .line 141
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->titlebarHideable:Ljava/lang/Boolean;

    .line 142
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->toolbarPortraitHideable:Ljava/lang/Boolean;

    .line 143
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->toolbarLandscapeHideable:Ljava/lang/Boolean;

    .line 144
    const-string/jumbo v0, "titlebar_hideable"

    iput-object v0, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->METAKEY_TITLEBAR:Ljava/lang/String;

    .line 145
    const-string/jumbo v0, "toolbar_portrait_hideable"

    iput-object v0, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->METAKEY_TOOLBAR:Ljava/lang/String;

    .line 146
    const-string/jumbo v0, "toolbar_landscape_hideable"

    iput-object v0, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->METAKEY_TOOLBAR_LANDSCAPE:Ljava/lang/String;

    .line 148
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mIsShow:Ljava/lang/Boolean;

    .line 155
    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mOrientation:I

    .line 159
    iput-boolean v3, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->isFullScreen:Z

    .line 162
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->activity:Landroid/app/Activity;

    .line 642
    new-instance v0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$8;

    invoke-direct {v0, p0}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$8;-><init>(Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;)V

    iput-object v0, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mDestroyRunnable:Ljava/lang/Runnable;

    .line 166
    iput-object p1, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->activity:Landroid/app/Activity;

    .line 167
    return-void
.end method

.method static synthetic access$000(Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;)Landroid/view/GestureDetector;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mDetector:Landroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mTitleBar:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mTitleBarHide:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;)I
    .locals 1
    .param p0, "x0"    # Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;

    .prologue
    .line 93
    iget v0, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mWebViewOrientation:I

    return v0
.end method

.method static synthetic access$1200(Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->toolbarLandscapeHideable:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mToolBarHide:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mColorHide:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->toolbarPortraitHideable:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;)Landroid/view/animation/Animation;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mAnimationTitlebarHide:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;)Landroid/view/animation/Animation;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mAnimationToolbarHide:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mTitleBarShow:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mToolBarShow:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mToolBar:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mColorShow:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;)Landroid/view/animation/Animation;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mAnimationTitlebarShow:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;)Landroid/view/animation/Animation;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mAnimationToolbarShow:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mTitleStr:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/smtt/export/external/interfaces/JsResult;)I
    .locals 1
    .param p0, "x0"    # Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;
    .param p1, "x1"    # Lcom/tencent/smtt/sdk/WebView;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Lcom/tencent/smtt/export/external/interfaces/JsResult;

    .prologue
    .line 93
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->h5PayHook(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/smtt/export/external/interfaces/JsResult;)I

    move-result v0

    return v0
.end method

.method static synthetic access$2600(Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;)Lcom/tencent/smtt/sdk/ValueCallback;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->uploadFile:Lcom/tencent/smtt/sdk/ValueCallback;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;Lcom/tencent/smtt/sdk/ValueCallback;)Lcom/tencent/smtt/sdk/ValueCallback;
    .locals 0
    .param p0, "x0"    # Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;
    .param p1, "x1"    # Lcom/tencent/smtt/sdk/ValueCallback;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->uploadFile:Lcom/tencent/smtt/sdk/ValueCallback;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;)Lcom/tencent/smtt/sdk/ValueCallback;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->uploadFileArray:Lcom/tencent/smtt/sdk/ValueCallback;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;Lcom/tencent/smtt/sdk/ValueCallback;)Lcom/tencent/smtt/sdk/ValueCallback;
    .locals 0
    .param p0, "x0"    # Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;
    .param p1, "x1"    # Lcom/tencent/smtt/sdk/ValueCallback;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->uploadFileArray:Lcom/tencent/smtt/sdk/ValueCallback;

    return-object p1
.end method

.method static synthetic access$2800(Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->changeBackForwordBtnState()V

    return-void
.end method

.method static synthetic access$2900(Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->doAfterStop()V

    return-void
.end method

.method static synthetic access$300(Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;)Lcom/tencent/smtt/sdk/WebView;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mWebTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;Lcom/tencent/smtt/sdk/WebView;)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;
    .param p1, "x1"    # Lcom/tencent/smtt/sdk/WebView;

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->h5PayInit(Lcom/tencent/smtt/sdk/WebView;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->doAfterStartLoading()V

    return-void
.end method

.method static synthetic access$3300(Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mMoreDlg:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$400(Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mIsShow:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$402(Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "x0"    # Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mIsShow:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$500(Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;)I
    .locals 1
    .param p0, "x0"    # Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;

    .prologue
    .line 93
    iget v0, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mFlingLimitX:I

    return v0
.end method

.method static synthetic access$600(Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;)I
    .locals 1
    .param p0, "x0"    # Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;

    .prologue
    .line 93
    iget v0, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mFlingLimitY:I

    return v0
.end method

.method static synthetic access$700(Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;)I
    .locals 1
    .param p0, "x0"    # Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;

    .prologue
    .line 93
    iget v0, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mBarHeight:I

    return v0
.end method

.method static synthetic access$800(Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;I)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;
    .param p1, "x1"    # I

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->setAnimationDuration(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->titlebarHideable:Ljava/lang/Boolean;

    return-object v0
.end method

.method private changeBackForwordBtnState()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 953
    iget-object v0, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebView;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 954
    iget-object v0, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mForwardBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 955
    iget-object v0, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mForwardUnclickableBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 961
    :goto_0
    iget-object v0, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 962
    iget-object v0, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mBackBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 963
    iget-object v0, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mBackUnclickableBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 968
    :goto_1
    return-void

    .line 957
    :cond_0
    iget-object v0, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mForwardBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 958
    iget-object v0, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mForwardUnclickableBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 965
    :cond_1
    iget-object v0, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mBackBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 966
    iget-object v0, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mBackUnclickableBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_1
.end method

.method public static delDirFile(Ljava/io/File;)Z
    .locals 7
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 1246
    const/4 v0, 0x0

    .line 1247
    .local v0, "flag":Z
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1263
    :cond_0
    return v0

    .line 1250
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    .line 1251
    .local v4, "tempList":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 1252
    .local v3, "temp":Ljava/io/File;
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 1253
    .local v2, "path":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v4

    if-ge v1, v5, :cond_0

    .line 1254
    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1255
    new-instance v3, Ljava/io/File;

    .end local v3    # "temp":Ljava/io/File;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v4, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1259
    .restart local v3    # "temp":Ljava/io/File;
    :goto_1
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1260
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 1253
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1257
    :cond_3
    new-instance v3, Ljava/io/File;

    .end local v3    # "temp":Ljava/io/File;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v4, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v3    # "temp":Ljava/io/File;
    goto :goto_1
.end method

.method private deleteWxGamelinePicture()V
    .locals 3

    .prologue
    .line 691
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "wxgameline"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 692
    .local v0, "datafile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 693
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 695
    :cond_0
    return-void
.end method

.method private doAfterStartLoading()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 931
    iget-object v0, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mStopBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 932
    iget-object v0, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mStopBtn:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 934
    :cond_0
    iget-object v0, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mRefreshBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 935
    iget-object v0, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mRefreshBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 937
    :cond_1
    return-void
.end method

.method private doAfterStop()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 941
    iget-object v0, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mStopBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 942
    iget-object v0, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mStopBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 944
    :cond_0
    iget-object v0, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mRefreshBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 945
    iget-object v0, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mRefreshBtn:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 947
    :cond_1
    return-void
.end method

.method private getCurrentUrl()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1080
    iget-object v1, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v1}, Lcom/tencent/smtt/sdk/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 1081
    .local v0, "url":Ljava/lang/String;
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mOriginalUrl:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1082
    const-string v1, "/"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mOriginalUrl:Ljava/lang/String;

    const-string v3, "/"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1083
    const-string v1, "getCurrentUrl state:true"

    invoke-static {v1}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 1089
    :cond_0
    :goto_0
    return-object v0

    .line 1087
    :cond_1
    const-string v1, "mWebView geturl is null!"

    invoke-static {v1}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getPayAPIClass()Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1475
    :try_start_0
    const-string v2, "com.tencent.midas.api.APMidasPayAPI"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1480
    :goto_0
    return-object v1

    .line 1477
    :catch_0
    move-exception v0

    .line 1478
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 1480
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getShareItems()Ljava/util/ArrayList;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$ShareItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 1021
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1023
    .local v0, "moreItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$ShareItem;>;"
    iget-boolean v7, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mSendToWeixin:Z

    if-eqz v7, :cond_0

    iget-boolean v7, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mIsWXInstall:Z

    if-eqz v7, :cond_0

    .line 1024
    new-instance v6, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$ShareItem;

    sget v7, Lcom/tencent/msdk/webview/WebViewResID;->drawable_share_to_wx_friend:I

    iget-object v8, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->activity:Landroid/app/Activity;

    sget v9, Lcom/tencent/msdk/webview/WebViewResID;->str_shareToWxFriend:I

    new-array v10, v13, [Ljava/lang/Object;

    const-string v11, ""

    aput-object v11, v10, v12

    .line 1025
    invoke-virtual {v8, v9, v10}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "shareToWxfriend"

    invoke-direct {v6, p0, v7, v8, v9}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$ShareItem;-><init>(Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;ILjava/lang/String;Ljava/lang/String;)V

    .line 1026
    .local v6, "shareToWxFriend":Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$ShareItem;
    new-instance v5, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$ShareItem;

    sget v7, Lcom/tencent/msdk/webview/WebViewResID;->drawable_share_to_wx:I

    iget-object v8, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->activity:Landroid/app/Activity;

    sget v9, Lcom/tencent/msdk/webview/WebViewResID;->str_shareToWx:I

    new-array v10, v13, [Ljava/lang/Object;

    const-string v11, ""

    aput-object v11, v10, v12

    .line 1027
    invoke-virtual {v8, v9, v10}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "shareToWx"

    invoke-direct {v5, p0, v7, v8, v9}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$ShareItem;-><init>(Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;ILjava/lang/String;Ljava/lang/String;)V

    .line 1028
    .local v5, "shareToWx":Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$ShareItem;
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1029
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1032
    .end local v5    # "shareToWx":Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$ShareItem;
    .end local v6    # "shareToWxFriend":Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$ShareItem;
    :cond_0
    iget-boolean v7, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mSendToQQ:Z

    if-eqz v7, :cond_1

    invoke-direct {p0}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->isQQInstall()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1033
    new-instance v4, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$ShareItem;

    sget v7, Lcom/tencent/msdk/webview/WebViewResID;->drawable_share_to_qzone:I

    iget-object v8, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->activity:Landroid/app/Activity;

    sget v9, Lcom/tencent/msdk/webview/WebViewResID;->str_shareToQzone:I

    new-array v10, v13, [Ljava/lang/Object;

    const-string v11, ""

    aput-object v11, v10, v12

    .line 1034
    invoke-virtual {v8, v9, v10}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "shareToQzone"

    invoke-direct {v4, p0, v7, v8, v9}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$ShareItem;-><init>(Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;ILjava/lang/String;Ljava/lang/String;)V

    .line 1035
    .local v4, "shareToQzone":Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$ShareItem;
    new-instance v3, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$ShareItem;

    sget v7, Lcom/tencent/msdk/webview/WebViewResID;->drawable_share_to_qq:I

    iget-object v8, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->activity:Landroid/app/Activity;

    sget v9, Lcom/tencent/msdk/webview/WebViewResID;->str_shareToQQ:I

    new-array v10, v13, [Ljava/lang/Object;

    const-string v11, ""

    aput-object v11, v10, v12

    .line 1036
    invoke-virtual {v8, v9, v10}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "shareToQQ"

    invoke-direct {v3, p0, v7, v8, v9}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$ShareItem;-><init>(Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;ILjava/lang/String;Ljava/lang/String;)V

    .line 1037
    .local v3, "shareToQQ":Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$ShareItem;
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1038
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1040
    .end local v3    # "shareToQQ":Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$ShareItem;
    .end local v4    # "shareToQzone":Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$ShareItem;
    :cond_1
    new-instance v2, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$ShareItem;

    sget v7, Lcom/tencent/msdk/webview/WebViewResID;->drawable_open_by_qqbrowser:I

    iget-object v8, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->activity:Landroid/app/Activity;

    sget v9, Lcom/tencent/msdk/webview/WebViewResID;->str_thrdcall_openqbx:I

    new-array v10, v13, [Ljava/lang/Object;

    const-string v11, ""

    aput-object v11, v10, v12

    .line 1041
    invoke-virtual {v8, v9, v10}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "openByQQBrowser"

    invoke-direct {v2, p0, v7, v8, v9}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$ShareItem;-><init>(Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;ILjava/lang/String;Ljava/lang/String;)V

    .line 1042
    .local v2, "openByQQBrowser":Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$ShareItem;
    new-instance v1, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$ShareItem;

    sget v7, Lcom/tencent/msdk/webview/WebViewResID;->drawable_open_by_otherbrowser:I

    iget-object v8, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->activity:Landroid/app/Activity;

    sget v9, Lcom/tencent/msdk/webview/WebViewResID;->str_thrdcall_openbrowser:I

    new-array v10, v13, [Ljava/lang/Object;

    const-string v11, ""

    aput-object v11, v10, v12

    .line 1043
    invoke-virtual {v8, v9, v10}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "openByOtherBrowser"

    invoke-direct {v1, p0, v7, v8, v9}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$ShareItem;-><init>(Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;ILjava/lang/String;Ljava/lang/String;)V

    .line 1044
    .local v1, "openByOtherBrowser":Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$ShareItem;
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1045
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1046
    return-object v0
.end method

.method private getShareUrl()Ljava/lang/String;
    .locals 13

    .prologue
    const/4 v6, 0x0

    const/4 v12, -0x1

    .line 1093
    iget-object v7, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v7}, Lcom/tencent/smtt/sdk/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 1095
    .local v0, "currentUrl":Ljava/lang/String;
    const/4 v4, -0x1

    .line 1096
    .local v4, "start":I
    const/4 v2, -0x1

    .line 1097
    .local v2, "end":I
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1098
    .local v5, "url":Ljava/lang/StringBuilder;
    iget-object v8, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->msdkParams:[Ljava/lang/String;

    array-length v9, v8

    move v7, v6

    :goto_0
    if-ge v7, v9, :cond_2

    aget-object v3, v8, v7

    .line 1099
    .local v3, "param":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "&"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 1100
    if-eq v4, v12, :cond_0

    .line 1101
    const-string v10, "&"

    add-int/lit8 v11, v4, 0x1

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 1102
    if-eq v2, v12, :cond_1

    .line 1103
    invoke-virtual {v5, v4, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1098
    :cond_0
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1105
    :cond_1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    invoke-virtual {v5, v4, v10}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1121
    .end local v3    # "param":Ljava/lang/String;
    .end local v5    # "url":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v1

    .line 1122
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1123
    invoke-static {v0}, Lcom/tencent/msdk/tools/T;->getNoQueryUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1124
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    return-object v5

    .line 1109
    .restart local v5    # "url":Ljava/lang/StringBuilder;
    :cond_2
    :try_start_1
    iget-object v7, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->msdkParams:[Ljava/lang/String;

    array-length v8, v7

    :goto_3
    if-ge v6, v8, :cond_5

    aget-object v3, v7, v6

    .line 1110
    .restart local v3    # "param":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "?"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 1111
    if-eq v4, v12, :cond_3

    .line 1112
    const-string v9, "&"

    add-int/lit8 v10, v4, 0x1

    invoke-virtual {v5, v9, v10}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 1113
    if-eq v2, v12, :cond_4

    .line 1114
    add-int/lit8 v9, v4, 0x1

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {v5, v9, v10}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1109
    :cond_3
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 1116
    :cond_4
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    invoke-virtual {v5, v4, v9}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 1120
    .end local v3    # "param":Ljava/lang/String;
    :cond_5
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    goto :goto_2
.end method

.method private h5PayHook(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/smtt/export/external/interfaces/JsResult;)I
    .locals 8
    .param p1, "view"    # Lcom/tencent/smtt/sdk/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "jsResult"    # Lcom/tencent/smtt/export/external/interfaces/JsResult;

    .prologue
    .line 1506
    invoke-direct {p0}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->getPayAPIClass()Ljava/lang/Class;

    move-result-object v2

    .line 1507
    .local v2, "payAPI":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v2, :cond_0

    .line 1510
    :try_start_0
    const-string v4, "h5PayHookX5"

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/app/Activity;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Lcom/tencent/smtt/sdk/WebView;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-class v7, Lcom/tencent/smtt/export/external/interfaces/JsResult;

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 1511
    .local v3, "staticMethod":Ljava/lang/reflect/Method;
    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    aput-object p2, v4, v5

    const/4 v5, 0x3

    aput-object p3, v4, v5

    const/4 v5, 0x4

    aput-object p4, v4, v5

    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1512
    .local v0, "code":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "h5PayHook success:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    .line 1526
    .end local v0    # "code":I
    .end local v3    # "staticMethod":Ljava/lang/reflect/Method;
    :goto_0
    return v0

    .line 1514
    :catch_0
    move-exception v1

    .line 1515
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 1516
    const-string v4, "h5PayHook NoSuchMethodException"

    invoke-static {v4}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 1526
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :cond_0
    :goto_1
    const/4 v0, -0x1

    goto :goto_0

    .line 1517
    :catch_1
    move-exception v1

    .line 1518
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 1519
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v1

    .line 1520
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 1521
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v1

    .line 1522
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1
.end method

.method private h5PayInit(Lcom/tencent/smtt/sdk/WebView;)V
    .locals 7
    .param p1, "view"    # Lcom/tencent/smtt/sdk/WebView;

    .prologue
    .line 1485
    invoke-direct {p0}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->getPayAPIClass()Ljava/lang/Class;

    move-result-object v1

    .line 1486
    .local v1, "payAPI":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v1, :cond_0

    .line 1488
    :try_start_0
    const-string v3, "h5PayInitX5"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/app/Activity;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Lcom/tencent/smtt/sdk/WebView;

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1489
    .local v2, "staticMethod":Ljava/lang/reflect/Method;
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1490
    const-string v3, "h5PayInit success"

    invoke-static {v3}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    .line 1502
    .end local v2    # "staticMethod":Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return-void

    .line 1491
    :catch_0
    move-exception v0

    .line 1492
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 1493
    const-string v3, "h5PayInit NoSuchMethodException"

    invoke-static {v3}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 1494
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v0

    .line 1495
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 1496
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 1497
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 1498
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v0

    .line 1499
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method

.method private hiddenConfig()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 269
    :try_start_0
    iget-object v6, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->activity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    iget-object v7, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->activity:Landroid/app/Activity;

    .line 270
    invoke-virtual {v7}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    const/16 v8, 0x80

    .line 269
    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 271
    .local v0, "activityInfo":Landroid/content/pm/ActivityInfo;
    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 272
    .local v2, "metaData":Landroid/os/Bundle;
    if-nez v2, :cond_1

    .line 273
    const-string v6, "Does\'t config meta data."

    invoke-static {v6}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 291
    .end local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v2    # "metaData":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 276
    .restart local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .restart local v2    # "metaData":Landroid/os/Bundle;
    :cond_1
    const-string/jumbo v6, "titlebar_hideable"

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 277
    .local v3, "titlebarConfig":Ljava/lang/Boolean;
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-ne v6, v9, :cond_2

    .line 278
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->titlebarHideable:Ljava/lang/Boolean;

    .line 280
    :cond_2
    const-string/jumbo v6, "toolbar_portrait_hideable"

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 281
    .local v4, "toolbarConfig":Ljava/lang/Boolean;
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-ne v6, v9, :cond_3

    .line 282
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->toolbarPortraitHideable:Ljava/lang/Boolean;

    .line 284
    :cond_3
    const-string/jumbo v6, "toolbar_landscape_hideable"

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 285
    .local v5, "toolbarLandscapeConfig":Ljava/lang/Boolean;
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-ne v6, v9, :cond_0

    .line 286
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->toolbarLandscapeHideable:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 288
    .end local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v2    # "metaData":Landroid/os/Bundle;
    .end local v3    # "titlebarConfig":Ljava/lang/Boolean;
    .end local v4    # "toolbarConfig":Ljava/lang/Boolean;
    .end local v5    # "toolbarLandscapeConfig":Ljava/lang/Boolean;
    :catch_0
    move-exception v1

    .line 289
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private initAnimation()V
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 361
    iget-object v3, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/tencent/msdk/webview/WebViewResID;->dimen_fling_limit_x:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mFlingLimitX:I

    .line 362
    iget-object v3, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/tencent/msdk/webview/WebViewResID;->dimen_fling_limit_y:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mFlingLimitY:I

    .line 364
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-ge v3, v4, :cond_0

    .line 365
    iget-object v3, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->activity:Landroid/app/Activity;

    sget v4, Lcom/tencent/msdk/webview/WebViewResID;->anim_toolbar_hide:I

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mAnimationToolbarHide:Landroid/view/animation/Animation;

    .line 366
    iget-object v3, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mAnimationToolbarHide:Landroid/view/animation/Animation;

    new-instance v4, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$WebviewAnimationListener;

    invoke-direct {v4, p0, v8}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$WebviewAnimationListener;-><init>(Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;I)V

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 368
    iget-object v3, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->activity:Landroid/app/Activity;

    sget v4, Lcom/tencent/msdk/webview/WebViewResID;->anim_toolbar_show:I

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mAnimationToolbarShow:Landroid/view/animation/Animation;

    .line 369
    iget-object v3, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mAnimationToolbarShow:Landroid/view/animation/Animation;

    new-instance v4, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$WebviewAnimationListener;

    invoke-direct {v4, p0, v7}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$WebviewAnimationListener;-><init>(Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;I)V

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 372
    iget-object v3, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->activity:Landroid/app/Activity;

    sget v4, Lcom/tencent/msdk/webview/WebViewResID;->anim_titlebar_hide:I

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mAnimationTitlebarHide:Landroid/view/animation/Animation;

    .line 373
    iget-object v3, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->activity:Landroid/app/Activity;

    sget v4, Lcom/tencent/msdk/webview/WebViewResID;->anim_titlebar_show:I

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mAnimationTitlebarShow:Landroid/view/animation/Animation;

    .line 463
    :goto_0
    return-void

    .line 375
    :cond_0
    const/16 v0, 0x78

    .line 376
    .local v0, "durationTime":I
    iget-object v3, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/tencent/msdk/webview/WebViewResID;->dimen_titlebar_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mBarHeight:I

    .line 378
    new-array v3, v8, [I

    aput v6, v3, v6

    iget v4, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mBarHeight:I

    neg-int v4, v4

    aput v4, v3, v7

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mTitleBarHide:Landroid/animation/ValueAnimator;

    .line 379
    iget-object v3, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mTitleBarHide:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$2;

    invoke-direct {v4, p0}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$2;-><init>(Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 390
    iget-object v3, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mTitleBarHide:Landroid/animation/ValueAnimator;

    new-instance v4, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 391
    iget-object v3, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mTitleBarHide:Landroid/animation/ValueAnimator;

    int-to-long v4, v0

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 393
    new-array v3, v8, [I

    iget v4, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mBarHeight:I

    neg-int v4, v4

    aput v4, v3, v6

    aput v6, v3, v7

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mTitleBarShow:Landroid/animation/ValueAnimator;

    .line 394
    iget-object v3, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mTitleBarShow:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$3;

    invoke-direct {v4, p0}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$3;-><init>(Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 405
    iget-object v3, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mTitleBarShow:Landroid/animation/ValueAnimator;

    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 406
    iget-object v3, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mTitleBarShow:Landroid/animation/ValueAnimator;

    int-to-long v4, v0

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 408
    new-array v3, v8, [I

    aput v6, v3, v6

    iget v4, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mBarHeight:I

    neg-int v4, v4

    aput v4, v3, v7

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mToolBarHide:Landroid/animation/ValueAnimator;

    .line 409
    iget-object v3, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mToolBarHide:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$4;

    invoke-direct {v4, p0}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$4;-><init>(Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 420
    iget-object v3, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mToolBarHide:Landroid/animation/ValueAnimator;

    new-instance v4, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 421
    iget-object v3, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mToolBarHide:Landroid/animation/ValueAnimator;

    int-to-long v4, v0

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 423
    new-array v3, v8, [I

    iget v4, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mBarHeight:I

    neg-int v4, v4

    aput v4, v3, v6

    aput v6, v3, v7

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mToolBarShow:Landroid/animation/ValueAnimator;

    .line 424
    iget-object v3, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mToolBarShow:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$5;

    invoke-direct {v4, p0}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$5;-><init>(Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 435
    iget-object v3, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mToolBarShow:Landroid/animation/ValueAnimator;

    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 436
    iget-object v3, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mToolBarShow:Landroid/animation/ValueAnimator;

    int-to-long v4, v0

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 439
    iget-object v3, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/tencent/msdk/webview/WebViewResID;->color_toolbar_visible:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 440
    .local v2, "visibleColor":I
    iget-object v3, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/tencent/msdk/webview/WebViewResID;->color_toolbar_invisible:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 441
    .local v1, "invisibleColor":I
    new-instance v3, Lcom/tencent/msdk/webview/ColorEvaluator;

    invoke-direct {v3}, Lcom/tencent/msdk/webview/ColorEvaluator;-><init>()V

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mColorHide:Landroid/animation/ValueAnimator;

    .line 442
    iget-object v3, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mColorHide:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$6;

    invoke-direct {v4, p0}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$6;-><init>(Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 450
    iget-object v3, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mColorHide:Landroid/animation/ValueAnimator;

    int-to-long v4, v0

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 452
    new-instance v3, Lcom/tencent/msdk/webview/ColorEvaluator;

    invoke-direct {v3}, Lcom/tencent/msdk/webview/ColorEvaluator;-><init>()V

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mColorShow:Landroid/animation/ValueAnimator;

    .line 453
    iget-object v3, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mColorShow:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$7;

    invoke-direct {v4, p0}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$7;-><init>(Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 461
    iget-object v3, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mColorShow:Landroid/animation/ValueAnimator;

    int-to-long v4, v0

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto/16 :goto_0
.end method

.method private initExtras()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 294
    iget-object v1, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 295
    .local v0, "intent":Landroid/content/Intent;
    if-nez v0, :cond_1

    .line 308
    :cond_0
    :goto_0
    return-void

    .line 298
    :cond_1
    const-string v1, "favUrl"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mFavUrl:Ljava/lang/String;

    .line 299
    const-string v1, "adIds"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mAdIds:Ljava/lang/String;

    .line 300
    const-string v1, "sendToQQ"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mSendToQQ:Z

    .line 301
    const-string v1, "sendToWX"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mSendToWeixin:Z

    .line 302
    const-string v1, "isWXInstall"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mIsWXInstall:Z

    .line 303
    const-string v1, "screen_orientation"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 304
    const-string v1, "screen_orientation"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mOrientation:I

    .line 305
    iget-object v1, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->activity:Landroid/app/Activity;

    iget v2, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mOrientation:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 306
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOrientation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initGridView()V
    .locals 9

    .prologue
    const/4 v6, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1050
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mItemArrayList:Ljava/util/ArrayList;

    .line 1052
    new-instance v0, Landroid/widget/SimpleAdapter;

    iget-object v1, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mItemArrayList:Ljava/util/ArrayList;

    sget v3, Lcom/tencent/msdk/webview/WebViewResID;->layout_dlg_gridview_item:I

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "icon"

    aput-object v5, v4, v7

    const-string/jumbo v5, "title"

    aput-object v5, v4, v8

    new-array v5, v6, [I

    sget v6, Lcom/tencent/msdk/webview/WebViewResID;->itemImage:I

    aput v6, v5, v7

    sget v6, Lcom/tencent/msdk/webview/WebViewResID;->itemText:I

    aput v6, v5, v8

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mAdapter:Landroid/widget/SimpleAdapter;

    .line 1056
    iget-object v0, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mGridView:Landroid/widget/GridView;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v7}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 1057
    iget-object v0, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mGridView:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mAdapter:Landroid/widget/SimpleAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1058
    iget-object v0, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1059
    return-void
.end method

.method private initLayout()V
    .locals 2

    .prologue
    .line 318
    iget-object v0, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->activity:Landroid/app/Activity;

    sget v1, Lcom/tencent/msdk/webview/WebViewResID;->playout:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mParentLayout:Landroid/view/ViewGroup;

    .line 321
    iget-object v0, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->activity:Landroid/app/Activity;

    sget v1, Lcom/tencent/msdk/webview/WebViewResID;->webTitle:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mWebTitle:Landroid/widget/TextView;

    .line 322
    iget-object v0, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->activity:Landroid/app/Activity;

    sget v1, Lcom/tencent/msdk/webview/WebViewResID;->titleBar:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mTitleBar:Landroid/widget/RelativeLayout;

    .line 324
    iget-object v0, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->activity:Landroid/app/Activity;

    sget v1, Lcom/tencent/msdk/webview/WebViewResID;->toolbar:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mToolBar:Landroid/widget/LinearLayout;

    .line 326
    iget-object v0, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->activity:Landroid/app/Activity;

    sget v1, Lcom/tencent/msdk/webview/WebViewResID;->refresh:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mRefreshBtn:Landroid/widget/ImageButton;

    .line 327
    iget-object v0, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mRefreshBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 329
    iget-object v0, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->activity:Landroid/app/Activity;

    sget v1, Lcom/tencent/msdk/webview/WebViewResID;->stop:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mStopBtn:Landroid/widget/ImageButton;

    .line 330
    iget-object v0, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mStopBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 332
    iget-object v0, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->activity:Landroid/app/Activity;

    sget v1, Lcom/tencent/msdk/webview/WebViewResID;->back:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mBackBtn:Landroid/widget/ImageButton;

    .line 333
    iget-object v0, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mBackBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 334
    iget-object v0, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->activity:Landroid/app/Activity;

    sget v1, Lcom/tencent/msdk/webview/WebViewResID;->backUnclickable:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mBackUnclickableBtn:Landroid/widget/ImageButton;

    .line 336
    iget-object v0, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->activity:Landroid/app/Activity;

    sget v1, Lcom/tencent/msdk/webview/WebViewResID;->forward:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mForwardBtn:Landroid/widget/ImageButton;

    .line 337
    iget-object v0, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mForwardBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 338
    iget-object v0, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->activity:Landroid/app/Activity;

    sget v1, Lcom/tencent/msdk/webview/WebViewResID;->forwardUnclickable:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mForwardUnclickableBtn:Landroid/widget/ImageButton;

    .line 340
    iget-object v0, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->activity:Landroid/app/Activity;

    sget v1, Lcom/tencent/msdk/webview/WebViewResID;->land_openByQQBrowser:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mLandOpenQQBrowserBtn:Landroid/view/View;

    .line 341
    iget-object v0, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mLandOpenQQBrowserBtn:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 343
    iget-object v0, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->activity:Landroid/app/Activity;

    sget v1, Lcom/tencent/msdk/webview/WebViewResID;->land_more:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mLandMoreBtn:Landroid/view/View;

    .line 344
    iget-object v0, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mLandMoreBtn:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 347
    iget-object v0, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->activity:Landroid/app/Activity;

    sget v1, Lcom/tencent/msdk/webview/WebViewResID;->return_app:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mReturnAppBtn:Landroid/view/View;

    .line 348
    iget-object v0, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mReturnAppBtn:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 351
    iget-object v0, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->activity:Landroid/app/Activity;

    sget v1, Lcom/tencent/msdk/webview/WebViewResID;->openByQQBrowser:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mOpenQQBrowserBtn:Landroid/widget/ImageButton;

    .line 352
    iget-object v0, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mOpenQQBrowserBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 355
    iget-object v0, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->activity:Landroid/app/Activity;

    sget v1, Lcom/tencent/msdk/webview/WebViewResID;->more:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mMoreBtn:Landroid/widget/ImageButton;

    .line 356
    iget-object v0, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mMoreBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 357
    return-void
.end method

.method private initMoreDlg()V
    .locals 5

    .prologue
    .line 971
    iget-object v2, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mMoreDlg:Landroid/app/Dialog;

    if-nez v2, :cond_0

    .line 973
    new-instance v2, Landroid/app/Dialog;

    iget-object v3, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->activity:Landroid/app/Activity;

    sget v4, Lcom/tencent/msdk/webview/WebViewResID;->style_SheetDialogTheme:I

    invoke-direct {v2, v3, v4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mMoreDlg:Landroid/app/Dialog;

    .line 975
    iget-object v2, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mMoreDlg:Landroid/app/Dialog;

    sget v3, Lcom/tencent/msdk/webview/WebViewResID;->layout_sheet_dlg:I

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setContentView(I)V

    .line 976
    iget-object v2, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mMoreDlg:Landroid/app/Dialog;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 979
    iget-object v2, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mMoreDlg:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 980
    .local v1, "window":Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 981
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const/4 v2, -0x1

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 982
    const/16 v2, 0x50

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 983
    const/high16 v2, 0x3f000000    # 0.5f

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 984
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 987
    sget v2, Lcom/tencent/msdk/webview/WebViewResID;->style_SheetDialogAnimation:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 988
    sget v2, Lcom/tencent/msdk/webview/WebViewResID;->color_transparent:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 989
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 991
    iget-object v2, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mMoreDlg:Landroid/app/Dialog;

    sget v3, Lcom/tencent/msdk/webview/WebViewResID;->dlg_gridview:I

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/GridView;

    iput-object v2, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mGridView:Landroid/widget/GridView;

    .line 992
    invoke-direct {p0}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->initGridView()V

    .line 994
    iget-object v2, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mMoreDlg:Landroid/app/Dialog;

    sget v3, Lcom/tencent/msdk/webview/WebViewResID;->dlg_btn_cancel:I

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->cancelBtn:Landroid/widget/Button;

    .line 995
    iget-object v2, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->cancelBtn:Landroid/widget/Button;

    new-instance v3, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$12;

    invoke-direct {v3, p0}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$12;-><init>(Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1005
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v1    # "window":Landroid/view/Window;
    :cond_0
    invoke-direct {p0}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->updateItemArrayList()V

    .line 1006
    return-void
.end method

.method private initToolbarStatus()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 709
    const/4 v2, 0x2

    iget v3, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mWebViewOrientation:I

    if-ne v2, v3, :cond_0

    .line 710
    iget-object v2, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mTitleBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 711
    iget-object v2, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mLandMoreBtn:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 712
    iget-object v2, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mLandOpenQQBrowserBtn:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 718
    :goto_0
    iget-object v2, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mTitleBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 719
    .local v0, "lpTitleBar":Landroid/view/ViewGroup$MarginLayoutParams;
    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 720
    iget-object v2, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mTitleBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 721
    iget-object v2, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mToolBar:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 722
    .local v1, "lpToolBar":Landroid/view/ViewGroup$MarginLayoutParams;
    iput v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 723
    iget-object v2, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mToolBar:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 724
    return-void

    .line 714
    .end local v0    # "lpTitleBar":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v1    # "lpToolBar":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_0
    iget-object v2, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mTitleBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 715
    iget-object v2, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mLandMoreBtn:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 716
    iget-object v2, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mLandOpenQQBrowserBtn:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private initWebView()V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    const/16 v7, 0xb

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 742
    iget-object v3, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    new-instance v4, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$9;

    invoke-direct {v4, p0}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$9;-><init>(Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;)V

    invoke-virtual {v3, v4}, Lcom/tencent/smtt/sdk/WebView;->setWebChromeClient(Lcom/tencent/smtt/sdk/WebChromeClient;)V

    .line 817
    iget-object v3, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    new-instance v4, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$10;

    invoke-direct {v4, p0}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$10;-><init>(Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;)V

    invoke-virtual {v3, v4}, Lcom/tencent/smtt/sdk/WebView;->setWebViewClient(Lcom/tencent/smtt/sdk/WebViewClient;)V

    .line 858
    iget-object v3, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    new-instance v4, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$11;

    invoke-direct {v4, p0}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$11;-><init>(Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;)V

    invoke-virtual {v3, v4}, Lcom/tencent/smtt/sdk/WebView;->setDownloadListener(Lcom/tencent/smtt/sdk/DownloadListener;)V

    .line 872
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v7, :cond_0

    .line 873
    iget-object v3, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    const-string v4, "searchBoxJavaBridge_"

    invoke-virtual {v3, v4}, Lcom/tencent/smtt/sdk/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 874
    iget-object v3, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    const-string v4, "accessibility"

    invoke-virtual {v3, v4}, Lcom/tencent/smtt/sdk/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 875
    iget-object v3, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    const-string v4, "accessibilityTraversal"

    invoke-virtual {v3, v4}, Lcom/tencent/smtt/sdk/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 878
    :cond_0
    iget-object v3, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v3}, Lcom/tencent/smtt/sdk/WebView;->getSettings()Lcom/tencent/smtt/sdk/WebSettings;

    move-result-object v2

    .line 879
    .local v2, "webSetting":Lcom/tencent/smtt/sdk/WebSettings;
    invoke-virtual {v2, v5}, Lcom/tencent/smtt/sdk/WebSettings;->setJavaScriptEnabled(Z)V

    .line 880
    invoke-virtual {v2, v5}, Lcom/tencent/smtt/sdk/WebSettings;->setAllowFileAccess(Z)V

    .line 883
    invoke-virtual {v2, v6}, Lcom/tencent/smtt/sdk/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 884
    invoke-virtual {v2, v6}, Lcom/tencent/smtt/sdk/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 886
    sget-object v3, Lcom/tencent/smtt/sdk/WebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Lcom/tencent/smtt/sdk/WebSettings$LayoutAlgorithm;

    invoke-virtual {v2, v3}, Lcom/tencent/smtt/sdk/WebSettings;->setLayoutAlgorithm(Lcom/tencent/smtt/sdk/WebSettings$LayoutAlgorithm;)V

    .line 887
    invoke-virtual {v2, v5}, Lcom/tencent/smtt/sdk/WebSettings;->setSupportZoom(Z)V

    .line 888
    invoke-virtual {v2, v5}, Lcom/tencent/smtt/sdk/WebSettings;->setBuiltInZoomControls(Z)V

    .line 889
    invoke-virtual {v2, v5}, Lcom/tencent/smtt/sdk/WebSettings;->setUseWideViewPort(Z)V

    .line 890
    invoke-virtual {v2, v6}, Lcom/tencent/smtt/sdk/WebSettings;->setSupportMultipleWindows(Z)V

    .line 892
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v7, :cond_1

    .line 893
    invoke-virtual {v2, v6}, Lcom/tencent/smtt/sdk/WebSettings;->setDisplayZoomControls(Z)V

    .line 896
    :cond_1
    invoke-virtual {v2, v5}, Lcom/tencent/smtt/sdk/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 897
    invoke-virtual {v2, v5}, Lcom/tencent/smtt/sdk/WebSettings;->setAppCacheEnabled(Z)V

    .line 898
    invoke-virtual {v2, v5}, Lcom/tencent/smtt/sdk/WebSettings;->setDatabaseEnabled(Z)V

    .line 899
    invoke-virtual {v2, v5}, Lcom/tencent/smtt/sdk/WebSettings;->setDomStorageEnabled(Z)V

    .line 900
    invoke-virtual {v2, v5}, Lcom/tencent/smtt/sdk/WebSettings;->setGeolocationEnabled(Z)V

    .line 901
    const-wide v4, 0x7fffffffffffffffL

    invoke-virtual {v2, v4, v5}, Lcom/tencent/smtt/sdk/WebSettings;->setAppCacheMaxSize(J)V

    .line 902
    iget-object v3, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->activity:Landroid/app/Activity;

    const-string v4, "appcache"

    invoke-virtual {v3, v4, v6}, Landroid/app/Activity;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/smtt/sdk/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    .line 903
    iget-object v3, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->activity:Landroid/app/Activity;

    const-string v4, "databases"

    invoke-virtual {v3, v4, v6}, Landroid/app/Activity;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/smtt/sdk/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    .line 904
    iget-object v3, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->activity:Landroid/app/Activity;

    const-string v4, "geolocation"

    invoke-virtual {v3, v4, v6}, Landroid/app/Activity;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/smtt/sdk/WebSettings;->setGeolocationDatabasePath(Ljava/lang/String;)V

    .line 905
    sget-object v3, Lcom/tencent/smtt/sdk/WebSettings$PluginState;->ON_DEMAND:Lcom/tencent/smtt/sdk/WebSettings$PluginState;

    invoke-virtual {v2, v3}, Lcom/tencent/smtt/sdk/WebSettings;->setPluginState(Lcom/tencent/smtt/sdk/WebSettings$PluginState;)V

    .line 906
    sget-object v3, Lcom/tencent/smtt/sdk/WebSettings$RenderPriority;->HIGH:Lcom/tencent/smtt/sdk/WebSettings$RenderPriority;

    invoke-virtual {v2, v3}, Lcom/tencent/smtt/sdk/WebSettings;->setRenderPriority(Lcom/tencent/smtt/sdk/WebSettings$RenderPriority;)V

    .line 907
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/tencent/smtt/sdk/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " MSDK/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 908
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/msdk/WeGame;->getMSDKVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 907
    invoke-virtual {v2, v3}, Lcom/tencent/smtt/sdk/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 910
    iget-object v3, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->activity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/tencent/smtt/sdk/CookieSyncManager;->createInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/CookieSyncManager;

    .line 911
    invoke-static {}, Lcom/tencent/smtt/sdk/CookieSyncManager;->getInstance()Lcom/tencent/smtt/sdk/CookieSyncManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/smtt/sdk/CookieSyncManager;->sync()V

    .line 913
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tbs useragent : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/tencent/smtt/sdk/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 916
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->activity:Landroid/app/Activity;

    const-class v4, Lcom/tencent/msdk/webview/JumpShareActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 917
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "MsdkMethod"

    const-string v4, "recordTbsVersion"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 918
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 919
    .local v1, "tbsVersion":Ljava/lang/String;
    iget-object v3, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v3}, Lcom/tencent/smtt/sdk/WebView;->getX5WebViewExtension()Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewExtension;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 920
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Using Tbs webview core. TbsCoreVersion:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->activity:Landroid/app/Activity;

    invoke-static {v4}, Lcom/tencent/smtt/sdk/WebView;->getTbsCoreVersion(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "TbsSDKVersion:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->activity:Landroid/app/Activity;

    .line 921
    invoke-static {v4}, Lcom/tencent/smtt/sdk/WebView;->getTbsSDKVersion(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 925
    :goto_0
    const-string v3, "Message"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 926
    iget-object v3, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->activity:Landroid/app/Activity;

    invoke-virtual {v3, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 927
    return-void

    .line 923
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Using System webview core."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private isQQInstall()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 1335
    const/4 v1, 0x0

    .line 1337
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v3, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.tencent.mobileqq"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1342
    :goto_0
    if-nez v1, :cond_0

    .line 1345
    :goto_1
    return v2

    .line 1338
    :catch_0
    move-exception v0

    .line 1339
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    .line 1340
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 1345
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private isWebViewInSingleProcess(I)Z
    .locals 5
    .param p1, "pid"    # I

    .prologue
    .line 698
    iget-object v2, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->activity:Landroid/app/Activity;

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 699
    .local v1, "mActivityManager":Landroid/app/ActivityManager;
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 700
    .local v0, "appProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v3, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v3, p1, :cond_0

    iget-object v3, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v4, "msdk_inner_webview"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 701
    const/4 v2, 0x1

    .line 704
    .end local v0    # "appProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private loadUrl()V
    .locals 2

    .prologue
    .line 311
    iget-object v0, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mOriginalUrl:Ljava/lang/String;

    .line 312
    iget-object v0, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mOriginalUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    iget-object v1, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mOriginalUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebView;->loadUrl(Ljava/lang/String;)V

    .line 315
    :cond_0
    return-void
.end method

.method private openByQQBrowser()V
    .locals 4

    .prologue
    .line 1168
    invoke-direct {p0}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->getCurrentUrl()Ljava/lang/String;

    move-result-object v1

    .line 1169
    .local v1, "url":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 1170
    const-string v2, "Shared Url == null!"

    invoke-static {v2}, Lcom/tencent/msdk/tools/Logger;->w(Ljava/lang/String;)V

    .line 1182
    :cond_0
    :goto_0
    return-void

    .line 1173
    :cond_1
    iget-object v2, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->activity:Landroid/app/Activity;

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/tencent/msdk/webview/MttLoader;->loadUrl(Landroid/app/Activity;Ljava/lang/String;Ljava/util/HashMap;)I

    move-result v0

    .line 1174
    .local v0, "result":I
    const/4 v2, 0x4

    if-ne v0, v2, :cond_3

    .line 1175
    iget-object v2, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mMoreDlg:Landroid/app/Dialog;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mMoreDlg:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1176
    iget-object v2, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mMoreDlg:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 1178
    :cond_2
    invoke-direct {p0}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->showDownloadQQBrowserDlg()V

    goto :goto_0

    .line 1179
    :cond_3
    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    .line 1180
    const-string v2, "qqbrowser version is too low..."

    invoke-static {v2}, Lcom/tencent/msdk/tools/Logger;->w(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private saveImageToSDCard()Ljava/lang/String;
    .locals 14

    .prologue
    const/4 v9, 0x0

    .line 1267
    const/4 v5, 0x0

    .line 1269
    .local v5, "imageUrl":Ljava/lang/String;
    new-instance v10, Ljava/io/File;

    iget-object v11, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->activity:Landroid/app/Activity;

    invoke-static {v11}, Lcom/tencent/msdk/tools/FileUtils;->getAppExternalRootDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v11

    const-string v12, "msdk_webview"

    invoke-direct {v10, v11, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 1270
    .local v4, "imageFileDir":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1271
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-nez v10, :cond_2

    .line 1272
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 1278
    :goto_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "thumb"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".png"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1279
    .local v8, "thumbName":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1280
    .local v3, "imageFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1281
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 1284
    :cond_1
    iget-object v10, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    if-nez v10, :cond_3

    move-object v6, v5

    .line 1313
    .end local v5    # "imageUrl":Ljava/lang/String;
    .local v6, "imageUrl":Ljava/lang/String;
    :goto_1
    return-object v9

    .line 1275
    .end local v3    # "imageFile":Ljava/io/File;
    .end local v6    # "imageUrl":Ljava/lang/String;
    .end local v8    # "thumbName":Ljava/lang/String;
    .restart local v5    # "imageUrl":Ljava/lang/String;
    :cond_2
    invoke-static {v1}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->delDirFile(Ljava/io/File;)Z

    goto :goto_0

    .line 1287
    .restart local v3    # "imageFile":Ljava/io/File;
    .restart local v8    # "thumbName":Ljava/lang/String;
    :cond_3
    iget-object v10, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/tencent/smtt/sdk/WebView;->setDrawingCacheEnabled(Z)V

    .line 1288
    iget-object v10, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v10}, Lcom/tencent/smtt/sdk/WebView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1289
    .local v7, "thumb":Landroid/graphics/Bitmap;
    if-nez v7, :cond_4

    move-object v6, v5

    .line 1290
    .end local v5    # "imageUrl":Ljava/lang/String;
    .restart local v6    # "imageUrl":Ljava/lang/String;
    goto :goto_1

    .line 1292
    .end local v6    # "imageUrl":Ljava/lang/String;
    .restart local v5    # "imageUrl":Ljava/lang/String;
    :cond_4
    invoke-static {v7}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->small(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1293
    if-nez v7, :cond_5

    move-object v6, v5

    .line 1294
    .end local v5    # "imageUrl":Ljava/lang/String;
    .restart local v6    # "imageUrl":Ljava/lang/String;
    goto :goto_1

    .line 1297
    .end local v6    # "imageUrl":Ljava/lang/String;
    .restart local v5    # "imageUrl":Ljava/lang/String;
    :cond_5
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 1298
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1299
    .local v2, "fos":Ljava/io/FileOutputStream;
    sget-object v9, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v10, 0x32

    invoke-virtual {v7, v9, v10, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1300
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 1301
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1311
    iget-object v9, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/tencent/smtt/sdk/WebView;->setDrawingCacheEnabled(Z)V

    .line 1312
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    move-object v6, v5

    .end local v5    # "imageUrl":Ljava/lang/String;
    .restart local v6    # "imageUrl":Ljava/lang/String;
    move-object v9, v5

    .line 1313
    goto :goto_1

    .line 1302
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v6    # "imageUrl":Ljava/lang/String;
    .restart local v5    # "imageUrl":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1303
    .local v0, "e":Ljava/io/FileNotFoundException;
    const/4 v5, 0x0

    .line 1304
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/tencent/msdk/tools/Logger;->w(Ljava/lang/String;)V

    move-object v6, v5

    .end local v5    # "imageUrl":Ljava/lang/String;
    .restart local v6    # "imageUrl":Ljava/lang/String;
    move-object v9, v5

    .line 1305
    goto :goto_1

    .line 1306
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v6    # "imageUrl":Ljava/lang/String;
    .restart local v5    # "imageUrl":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 1307
    .local v0, "e":Ljava/io/IOException;
    const/4 v5, 0x0

    .line 1308
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/tencent/msdk/tools/Logger;->w(Ljava/lang/String;)V

    move-object v6, v5

    .end local v5    # "imageUrl":Ljava/lang/String;
    .restart local v6    # "imageUrl":Ljava/lang/String;
    move-object v9, v5

    .line 1309
    goto :goto_1
.end method

.method private sendQQShare(Ljava/lang/String;)V
    .locals 14
    .param p1, "itemId"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x1

    const/4 v8, 0x0

    .line 1350
    invoke-direct {p0}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->isQQInstall()Z

    move-result v9

    if-nez v9, :cond_0

    .line 1351
    iget-object v9, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->activity:Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->activity:Landroid/app/Activity;

    sget v11, Lcom/tencent/msdk/webview/WebViewResID;->str_uninstall_qq:I

    new-array v12, v12, [Ljava/lang/Object;

    const-string/jumbo v13, "\u68c0\u6d4b\u5230\u672a\u5b89\u88c5\u624bQ\uff0c\u8bf7\u5b89\u88c5\u624bQ\u540e\u518d\u5206\u4eab\uff01"

    aput-object v13, v12, v8

    invoke-virtual {v10, v11, v12}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    .line 1352
    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 1383
    :goto_0
    return-void

    .line 1355
    :cond_0
    iget-object v9, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->activity:Landroid/app/Activity;

    sget v10, Lcom/tencent/msdk/webview/WebViewResID;->str_untitle_share:I

    new-array v11, v12, [Ljava/lang/Object;

    const-string/jumbo v12, "\u65e0\u6807\u9898"

    aput-object v12, v11, v8

    invoke-virtual {v9, v10, v11}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 1356
    .local v7, "unknownTitle":Ljava/lang/String;
    iget-object v6, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mTitleStr:Ljava/lang/String;

    .line 1357
    .local v6, "title":Ljava/lang/String;
    invoke-static {v6}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1358
    move-object v6, v7

    .line 1360
    :cond_1
    const/4 v3, 0x0

    .line 1361
    .local v3, "summary":Ljava/lang/String;
    invoke-direct {p0}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->saveImageToSDCard()Ljava/lang/String;

    move-result-object v2

    .line 1362
    .local v2, "imgUrl":Ljava/lang/String;
    if-nez v2, :cond_2

    move v1, v8

    .line 1363
    .local v1, "imageUrlLen":I
    :goto_1
    invoke-direct {p0}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->getShareUrl()Ljava/lang/String;

    move-result-object v4

    .line 1364
    .local v4, "targetUrl":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "webview qq_share targetUrl:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 1365
    if-nez v4, :cond_3

    .line 1366
    const-string v8, "Shared Url == null!"

    invoke-static {v8}, Lcom/tencent/msdk/tools/Logger;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 1362
    .end local v1    # "imageUrlLen":I
    .end local v4    # "targetUrl":Ljava/lang/String;
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_1

    .line 1369
    .restart local v1    # "imageUrlLen":I
    .restart local v4    # "targetUrl":Ljava/lang/String;
    :cond_3
    if-nez v4, :cond_5

    move v5, v8

    .line 1370
    .local v5, "targetUrlLen":I
    :goto_2
    const/16 v8, 0x1f4

    if-lt v5, v8, :cond_4

    .line 1371
    const-string v8, "sendQQShare targetUrlLen too long!"

    invoke-static {v8}, Lcom/tencent/msdk/tools/Logger;->w(Ljava/lang/String;)V

    .line 1374
    :cond_4
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1375
    .local v0, "i":Landroid/content/Intent;
    iget-object v8, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->activity:Landroid/app/Activity;

    const-class v9, Lcom/tencent/msdk/webview/JumpShareActivity;

    invoke-virtual {v0, v8, v9}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1376
    const-string v8, "itemId"

    invoke-virtual {v0, v8, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1377
    const-string/jumbo v8, "title"

    invoke-virtual {v0, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1378
    const-string v8, "desc"

    invoke-virtual {v0, v8, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1379
    const-string/jumbo v8, "url"

    invoke-virtual {v0, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1380
    const-string v8, "imgUrl"

    invoke-virtual {v0, v8, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1381
    const-string v8, "imgUrlLen"

    invoke-virtual {v0, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1382
    iget-object v8, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->activity:Landroid/app/Activity;

    invoke-virtual {v8, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1369
    .end local v0    # "i":Landroid/content/Intent;
    .end local v5    # "targetUrlLen":I
    :cond_5
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    goto :goto_2
.end method

.method private sendWXShare(Ljava/lang/String;)V
    .locals 23
    .param p1, "itemId"    # Ljava/lang/String;

    .prologue
    .line 1185
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mIsWXInstall:Z

    move/from16 v17, v0

    if-nez v17, :cond_0

    .line 1186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->activity:Landroid/app/Activity;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->activity:Landroid/app/Activity;

    move-object/from16 v18, v0

    sget v19, Lcom/tencent/msdk/webview/WebViewResID;->str_uninstall_wx:I

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string/jumbo v22, "\u68c0\u6d4b\u5230\u672a\u5b89\u88c5\u5fae\u4fe1\uff0c\u8bf7\u5b89\u88c5\u5fae\u4fe1\u540e\u518d\u5206\u4eab\uff01"

    aput-object v22, v20, v21

    invoke-virtual/range {v18 .. v20}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v17

    .line 1187
    invoke-virtual/range {v17 .. v17}, Landroid/widget/Toast;->show()V

    .line 1243
    :goto_0
    return-void

    .line 1190
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->activity:Landroid/app/Activity;

    move-object/from16 v17, v0

    sget v18, Lcom/tencent/msdk/webview/WebViewResID;->str_untitle_share:I

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string/jumbo v21, "\u65e0\u6807\u9898"

    aput-object v21, v19, v20

    invoke-virtual/range {v17 .. v19}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 1191
    .local v15, "unknownTitle":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mTitleStr:Ljava/lang/String;

    .line 1192
    .local v14, "title":Ljava/lang/String;
    invoke-static {v14}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 1193
    move-object v14, v15

    .line 1195
    :cond_1
    const/4 v5, 0x0

    .line 1196
    .local v5, "desc":Ljava/lang/String;
    const-string v10, "msdk"

    .line 1197
    .local v10, "mediaTagName":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->getShareUrl()Ljava/lang/String;

    move-result-object v11

    .line 1198
    .local v11, "targetUrl":Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "webview wx_share targetUrl:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 1199
    if-nez v11, :cond_2

    .line 1200
    const-string v17, "Shared Url == null!"

    invoke-static/range {v17 .. v17}, Lcom/tencent/msdk/tools/Logger;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 1204
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/tencent/smtt/sdk/WebView;->setDrawingCacheEnabled(Z)V

    .line 1205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/tencent/smtt/sdk/WebView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v12

    .line 1206
    .local v12, "thumb":Landroid/graphics/Bitmap;
    invoke-static {v12}, Lcom/tencent/msdk/tools/CommonUtil;->bitmap2Bytes(Landroid/graphics/Bitmap;)[B

    move-result-object v8

    .line 1207
    .local v8, "imgData":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/tencent/smtt/sdk/WebView;->setDrawingCacheEnabled(Z)V

    .line 1210
    if-nez v8, :cond_3

    const/4 v9, 0x0

    .line 1211
    .local v9, "imgDataLen":I
    :goto_1
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-static {v8, v0, v9}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1212
    .local v3, "bmp":Landroid/graphics/Bitmap;
    if-nez v3, :cond_4

    .line 1213
    const-string v17, "sendWXShare BitmapFactory.decodeByteArray is null"

    invoke-static/range {v17 .. v17}, Lcom/tencent/msdk/tools/Logger;->w(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1210
    .end local v3    # "bmp":Landroid/graphics/Bitmap;
    .end local v9    # "imgDataLen":I
    :cond_3
    array-length v9, v8

    goto :goto_1

    .line 1216
    .restart local v3    # "bmp":Landroid/graphics/Bitmap;
    .restart local v9    # "imgDataLen":I
    :cond_4
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v16, v0

    .line 1217
    .local v16, "w":F
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    move/from16 v0, v17

    int-to-float v6, v0

    .line 1219
    .local v6, "h":F
    const/4 v13, 0x0

    .line 1220
    .local v13, "thumbBmp":Landroid/graphics/Bitmap;
    cmpl-float v17, v16, v6

    if-lez v17, :cond_5

    .line 1221
    const/16 v17, 0xc8

    const/high16 v18, 0x43480000    # 200.0f

    div-float v19, v6, v16

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v3, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 1227
    :goto_2
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1228
    .local v4, "byteStream":Ljava/io/ByteArrayOutputStream;
    sget-object v17, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v18, 0x5a

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v13, v0, v1, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1229
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    .line 1231
    if-nez v8, :cond_6

    const/4 v9, 0x0

    .line 1233
    :goto_3
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 1234
    .local v7, "i":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->activity:Landroid/app/Activity;

    move-object/from16 v17, v0

    const-class v18, Lcom/tencent/msdk/webview/JumpShareActivity;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1235
    const-string v17, "itemId"

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1236
    const-string/jumbo v17, "title"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1237
    const-string v17, "desc"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1238
    const-string/jumbo v17, "webpageUrl"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1239
    const-string v17, "mediaTagName"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1240
    const-string v17, "imgData"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 1241
    const-string v17, "imgDataLen"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->activity:Landroid/app/Activity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1224
    .end local v4    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .end local v7    # "i":Landroid/content/Intent;
    :cond_5
    const/high16 v17, 0x43480000    # 200.0f

    div-float v18, v16, v6

    mul-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    const/16 v18, 0xc8

    const/16 v19, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v3, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v13

    goto/16 :goto_2

    .line 1231
    .restart local v4    # "byteStream":Ljava/io/ByteArrayOutputStream;
    :cond_6
    array-length v9, v8

    goto :goto_3
.end method

.method private setAnimationDuration(I)V
    .locals 4
    .param p1, "durationTime"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 467
    iget-object v0, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mTitleBarHide:Landroid/animation/ValueAnimator;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 468
    iget-object v0, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mTitleBarShow:Landroid/animation/ValueAnimator;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 469
    iget-object v0, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mToolBarHide:Landroid/animation/ValueAnimator;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 470
    iget-object v0, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mToolBarShow:Landroid/animation/ValueAnimator;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 471
    iget-object v0, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mColorHide:Landroid/animation/ValueAnimator;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 472
    iget-object v0, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mColorShow:Landroid/animation/ValueAnimator;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 473
    return-void
.end method

.method private showDownloadQQBrowserDlg()V
    .locals 3

    .prologue
    .line 1386
    iget-object v1, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mDownloadDlg:Landroid/app/Dialog;

    if-nez v1, :cond_0

    .line 1387
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1388
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    sget v1, Lcom/tencent/msdk/webview/WebViewResID;->str_thrdcall_recom_mtt_title:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1389
    sget v1, Lcom/tencent/msdk/webview/WebViewResID;->str_thrdcall_recom_mtt_content:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1390
    sget v1, Lcom/tencent/msdk/webview/WebViewResID;->str_thrdcall_confirm:I

    new-instance v2, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$13;

    invoke-direct {v2, p0}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$13;-><init>(Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1404
    sget v1, Lcom/tencent/msdk/webview/WebViewResID;->str_thrdcall_cancel:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1405
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mDownloadDlg:Landroid/app/Dialog;

    .line 1407
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_0
    iget-object v1, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mDownloadDlg:Landroid/app/Dialog;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mDownloadDlg:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1408
    iget-object v1, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mDownloadDlg:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 1410
    :cond_1
    return-void
.end method

.method private static small(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    const/16 v7, 0xc8

    const/4 v6, 0x1

    const/high16 v5, 0x43480000    # 200.0f

    .line 1318
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v3, v4

    .line 1319
    .local v3, "w":F
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v1, v4

    .line 1321
    .local v1, "h":F
    const/4 v2, 0x0

    .line 1322
    .local v2, "thumbBmp":Landroid/graphics/Bitmap;
    cmpl-float v4, v3, v1

    if-lez v4, :cond_0

    .line 1323
    div-float v4, v1, v3

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-static {p0, v7, v4, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1329
    :goto_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1330
    .local v0, "byteStream":Ljava/io/ByteArrayOutputStream;
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x5a

    invoke-virtual {v2, v4, v5, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1331
    return-object v2

    .line 1326
    .end local v0    # "byteStream":Ljava/io/ByteArrayOutputStream;
    :cond_0
    div-float v4, v3, v1

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-static {p0, v4, v7, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_0
.end method

.method private updateItemArrayList()V
    .locals 5

    .prologue
    .line 1062
    iget-object v3, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mItemArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1063
    invoke-direct {p0}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->getShareItems()Ljava/util/ArrayList;

    move-result-object v2

    .line 1064
    .local v2, "moreItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$ShareItem;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 1066
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1069
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "icon"

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$ShareItem;

    iget v3, v3, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$ShareItem;->iconId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1071
    const-string/jumbo v4, "title"

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$ShareItem;

    iget-object v3, v3, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$ShareItem;->title:Ljava/lang/String;

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1073
    const-string v4, "itemId"

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$ShareItem;

    iget-object v3, v3, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$ShareItem;->itemId:Ljava/lang/String;

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1074
    iget-object v3, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mItemArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1064
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1076
    .end local v1    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    iget-object v3, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mAdapter:Landroid/widget/SimpleAdapter;

    invoke-virtual {v3}, Landroid/widget/SimpleAdapter;->notifyDataSetChanged()V

    .line 1077
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v5, -0x1

    const/4 v2, 0x0

    .line 1443
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WVMActivity onActivityResult, requestCode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",resultCode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 1444
    iget-object v3, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->activity:Landroid/app/Activity;

    if-ne p2, v5, :cond_5

    .line 1445
    packed-switch p1, :pswitch_data_0

    .line 1471
    :cond_0
    :goto_0
    return-void

    .line 1447
    :pswitch_0
    iget-object v3, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->uploadFileArray:Lcom/tencent/smtt/sdk/ValueCallback;

    if-eqz v3, :cond_2

    .line 1448
    if-nez p3, :cond_1

    move-object v1, v2

    .line 1449
    .local v1, "results":[Landroid/net/Uri;
    :goto_1
    iget-object v3, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->uploadFileArray:Lcom/tencent/smtt/sdk/ValueCallback;

    invoke-interface {v3, v1}, Lcom/tencent/smtt/sdk/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 1450
    iput-object v2, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->uploadFileArray:Lcom/tencent/smtt/sdk/ValueCallback;

    goto :goto_0

    .line 1448
    .end local v1    # "results":[Landroid/net/Uri;
    :cond_1
    const/4 v3, 0x1

    new-array v1, v3, [Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    aput-object v4, v1, v3

    goto :goto_1

    .line 1451
    :cond_2
    iget-object v3, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->uploadFile:Lcom/tencent/smtt/sdk/ValueCallback;

    if-eqz v3, :cond_0

    .line 1452
    if-eqz p3, :cond_3

    iget-object v3, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->activity:Landroid/app/Activity;

    if-eq p2, v5, :cond_4

    :cond_3
    move-object v0, v2

    .line 1454
    .local v0, "result":Landroid/net/Uri;
    :goto_2
    iget-object v3, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->uploadFile:Lcom/tencent/smtt/sdk/ValueCallback;

    invoke-interface {v3, v0}, Lcom/tencent/smtt/sdk/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 1455
    iput-object v2, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->uploadFile:Lcom/tencent/smtt/sdk/ValueCallback;

    goto :goto_0

    .line 1453
    .end local v0    # "result":Landroid/net/Uri;
    :cond_4
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    goto :goto_2

    .line 1461
    :cond_5
    iget-object v3, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->activity:Landroid/app/Activity;

    if-nez p2, :cond_0

    .line 1462
    iget-object v3, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->uploadFileArray:Lcom/tencent/smtt/sdk/ValueCallback;

    if-eqz v3, :cond_6

    .line 1463
    iget-object v3, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->uploadFileArray:Lcom/tencent/smtt/sdk/ValueCallback;

    invoke-interface {v3, v2}, Lcom/tencent/smtt/sdk/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 1464
    iput-object v2, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->uploadFileArray:Lcom/tencent/smtt/sdk/ValueCallback;

    .line 1466
    :cond_6
    iget-object v3, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->uploadFile:Lcom/tencent/smtt/sdk/ValueCallback;

    if-eqz v3, :cond_0

    .line 1467
    iget-object v3, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->uploadFile:Lcom/tencent/smtt/sdk/ValueCallback;

    invoke-interface {v3, v2}, Lcom/tencent/smtt/sdk/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 1468
    iput-object v2, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->uploadFile:Lcom/tencent/smtt/sdk/ValueCallback;

    goto :goto_0

    .line 1445
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 4

    .prologue
    .line 635
    iget-object v0, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 637
    iget-object v0, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mDestroyRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 639
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1414
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 1415
    .local v0, "containerId":I
    sget v1, Lcom/tencent/msdk/webview/WebViewResID;->back:I

    if-ne v0, v1, :cond_1

    .line 1417
    iget-object v1, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v1}, Lcom/tencent/smtt/sdk/WebView;->canGoBack()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1418
    iget-object v1, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v1}, Lcom/tencent/smtt/sdk/WebView;->goBack()V

    .line 1440
    :cond_0
    :goto_0
    return-void

    .line 1420
    :cond_1
    sget v1, Lcom/tencent/msdk/webview/WebViewResID;->forward:I

    if-ne v0, v1, :cond_2

    .line 1422
    iget-object v1, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v1}, Lcom/tencent/smtt/sdk/WebView;->canGoForward()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1423
    iget-object v1, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v1}, Lcom/tencent/smtt/sdk/WebView;->goForward()V

    goto :goto_0

    .line 1425
    :cond_2
    sget v1, Lcom/tencent/msdk/webview/WebViewResID;->refresh:I

    if-ne v0, v1, :cond_3

    .line 1426
    iget-object v1, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v1}, Lcom/tencent/smtt/sdk/WebView;->reload()V

    goto :goto_0

    .line 1427
    :cond_3
    sget v1, Lcom/tencent/msdk/webview/WebViewResID;->stop:I

    if-ne v0, v1, :cond_4

    .line 1428
    iget-object v1, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v1}, Lcom/tencent/smtt/sdk/WebView;->stopLoading()V

    goto :goto_0

    .line 1429
    :cond_4
    sget v1, Lcom/tencent/msdk/webview/WebViewResID;->return_app:I

    if-ne v0, v1, :cond_5

    .line 1430
    iget-object v1, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0

    .line 1431
    :cond_5
    sget v1, Lcom/tencent/msdk/webview/WebViewResID;->more:I

    if-eq v0, v1, :cond_6

    sget v1, Lcom/tencent/msdk/webview/WebViewResID;->land_more:I

    if-ne v0, v1, :cond_7

    .line 1432
    :cond_6
    invoke-direct {p0}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->initMoreDlg()V

    .line 1433
    iget-object v1, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mMoreDlg:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    .line 1434
    iget-object v1, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mMoreDlg:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 1436
    :cond_7
    sget v1, Lcom/tencent/msdk/webview/WebViewResID;->openByQQBrowser:I

    if-eq v0, v1, :cond_8

    sget v1, Lcom/tencent/msdk/webview/WebViewResID;->land_openByQQBrowser:I

    if-ne v0, v1, :cond_0

    .line 1437
    :cond_8
    invoke-direct {p0}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->openByQQBrowser()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v2, 0x2

    const/16 v1, 0x400

    .line 727
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v0, :cond_0

    .line 728
    iput v2, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mWebViewOrientation:I

    .line 729
    iget-object v0, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 731
    invoke-direct {p0}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->initToolbarStatus()V

    .line 737
    :goto_0
    return-void

    .line 733
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mWebViewOrientation:I

    .line 734
    iget-object v0, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 735
    invoke-direct {p0}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->initToolbarStatus()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/16 v7, 0x400

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 172
    iget-object v2, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, -0x3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setFormat(I)V

    .line 173
    iget-object v2, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v5}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 175
    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_0

    .line 176
    iget-object v2, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/high16 v3, 0x1000000

    const/high16 v4, 0x1000000

    invoke-virtual {v2, v3, v4}, Landroid/view/Window;->setFlags(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->activity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/tencent/msdk/webview/WebViewResID;->init(Landroid/content/Context;)V

    .line 185
    sget v1, Lcom/tencent/msdk/webview/WebViewResID;->layout_thrdcall_window:I

    .line 186
    .local v1, "layoutId":I
    if-nez v1, :cond_1

    .line 187
    const-string v2, "WVMResID.layout_thrdcall_window == 0x00"

    invoke-static {v2}, Lcom/tencent/msdk/tools/Logger;->w(Ljava/lang/String;)V

    .line 188
    iget-object v2, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 240
    :goto_1
    return-void

    .line 180
    .end local v1    # "layoutId":I
    :catch_0
    move-exception v0

    .line 181
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 192
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "layoutId":I
    :cond_1
    iget-object v2, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v6, v2, :cond_2

    .line 193
    iput v6, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mWebViewOrientation:I

    .line 194
    iget-object v2, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v7, v7}, Landroid/view/Window;->setFlags(II)V

    .line 201
    :goto_2
    invoke-direct {p0}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->hiddenConfig()V

    .line 204
    new-instance v2, Landroid/view/GestureDetector;

    iget-object v3, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->activity:Landroid/app/Activity;

    new-instance v4, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$WebviewGestureListener;

    invoke-direct {v4, p0}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$WebviewGestureListener;-><init>(Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;)V

    invoke-direct {v2, v3, v4}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v2, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mDetector:Landroid/view/GestureDetector;

    .line 207
    invoke-direct {p0}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->initExtras()V

    .line 208
    iget-object v2, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->activity:Landroid/app/Activity;

    sget v3, Lcom/tencent/msdk/webview/WebViewResID;->layout_thrdcall_window:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->setContentView(I)V

    .line 211
    iget-object v2, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->activity:Landroid/app/Activity;

    sget v3, Lcom/tencent/msdk/webview/WebViewResID;->webview:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/tencent/smtt/sdk/WebView;

    iput-object v2, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    .line 212
    iget-object v2, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    if-nez v2, :cond_3

    .line 213
    iget-object v2, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 214
    const-string v2, "Fail to instance webview!!!"

    invoke-static {v2}, Lcom/tencent/msdk/tools/Logger;->w(Ljava/lang/String;)V

    goto :goto_1

    .line 197
    :cond_2
    iput v5, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mWebViewOrientation:I

    goto :goto_2

    .line 217
    :cond_3
    iget-object v2, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    new-instance v3, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$1;

    invoke-direct {v3, p0}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$1;-><init>(Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;)V

    invoke-virtual {v2, v3}, Lcom/tencent/smtt/sdk/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 226
    invoke-direct {p0}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->initWebView()V

    .line 228
    iget-object v2, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    iget-object v3, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->activity:Landroid/app/Activity;

    invoke-static {v2, v3}, Lcom/tencent/msdk/webview/JsBridge;->Init(Lcom/tencent/smtt/sdk/WebView;Landroid/app/Activity;)V

    .line 230
    invoke-direct {p0}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->loadUrl()V

    .line 232
    invoke-direct {p0}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->initLayout()V

    .line 234
    invoke-direct {p0}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->initToolbarStatus()V

    .line 236
    invoke-direct {p0}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->changeBackForwordBtnState()V

    .line 238
    invoke-direct {p0}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->initAnimation()V

    .line 239
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mHandler:Landroid/os/Handler;

    goto/16 :goto_1
.end method

.method public onDestroy()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 655
    const-string/jumbo v2, "webview will be destroy"

    invoke-static {v2}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 656
    iget-object v2, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    .line 657
    iget-object v2, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mDestroyRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 659
    :cond_0
    iget-object v2, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    if-eqz v2, :cond_2

    .line 660
    iget-object v2, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v2}, Lcom/tencent/smtt/sdk/WebView;->removeAllViews()V

    .line 661
    iget-object v2, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mParentLayout:Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    .line 662
    iget-object v2, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mParentLayout:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 664
    :cond_1
    iget-object v2, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v2}, Lcom/tencent/smtt/sdk/WebView;->destroy()V

    .line 667
    :cond_2
    iget-object v2, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mMoreDlg:Landroid/app/Dialog;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mMoreDlg:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 668
    iget-object v2, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mMoreDlg:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 669
    iput-object v4, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mMoreDlg:Landroid/app/Dialog;

    .line 672
    :cond_3
    iget-object v2, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mDownloadDlg:Landroid/app/Dialog;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mDownloadDlg:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 673
    iget-object v2, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mDownloadDlg:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 674
    iput-object v4, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mDownloadDlg:Landroid/app/Dialog;

    .line 678
    :cond_4
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->activity:Landroid/app/Activity;

    const-class v3, Lcom/tencent/msdk/webview/JumpShareActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 679
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "MsdkMethod"

    const-string v3, "notifyClose"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 680
    iget-object v2, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 684
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    iput-object v4, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mHandler:Landroid/os/Handler;

    .line 685
    invoke-direct {p0}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->deleteWxGamelinePicture()V

    .line 686
    iget-object v2, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/msdk/config/ConfigManager;->killWebViewProcess(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 687
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Landroid/os/Process;->killProcess(I)V

    .line 689
    :cond_5
    return-void

    .line 681
    :catch_0
    move-exception v0

    .line 682
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .param p2, "v"    # Landroid/view/View;
    .param p3, "pos"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1130
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 1131
    .local v2, "item":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez v2, :cond_1

    .line 1132
    iget-object v6, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mMoreDlg:Landroid/app/Dialog;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mMoreDlg:Landroid/app/Dialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1133
    iget-object v6, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mMoreDlg:Landroid/app/Dialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->dismiss()V

    .line 1165
    :cond_0
    :goto_0
    return-void

    .line 1137
    :cond_1
    const-string v6, "itemId"

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1138
    .local v3, "itemId":Ljava/lang/String;
    const-string v6, "openByOtherBrowser"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1139
    invoke-direct {p0}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->getCurrentUrl()Ljava/lang/String;

    move-result-object v5

    .line 1140
    .local v5, "url":Ljava/lang/String;
    if-nez v5, :cond_2

    .line 1141
    const-string v6, "Shared Url == null!"

    invoke-static {v6}, Lcom/tencent/msdk/tools/Logger;->w(Ljava/lang/String;)V

    .line 1142
    iget-object v6, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mMoreDlg:Landroid/app/Dialog;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mMoreDlg:Landroid/app/Dialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1143
    iget-object v6, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mMoreDlg:Landroid/app/Dialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 1147
    :cond_2
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 1148
    .local v4, "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v1, v6, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1150
    .local v1, "intent":Landroid/content/Intent;
    :try_start_0
    iget-object v6, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->activity:Landroid/app/Activity;

    invoke-virtual {v6, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1162
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v4    # "uri":Landroid/net/Uri;
    .end local v5    # "url":Ljava/lang/String;
    :goto_1
    iget-object v6, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mMoreDlg:Landroid/app/Dialog;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mMoreDlg:Landroid/app/Dialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1163
    iget-object v6, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mMoreDlg:Landroid/app/Dialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 1151
    .restart local v1    # "intent":Landroid/content/Intent;
    .restart local v4    # "uri":Landroid/net/Uri;
    .restart local v5    # "url":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1152
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v6, "default browser is uninstalled!"

    invoke-static {v6}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 1154
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v4    # "uri":Landroid/net/Uri;
    .end local v5    # "url":Ljava/lang/String;
    :cond_3
    const-string v6, "openByQQBrowser"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1155
    invoke-direct {p0}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->openByQQBrowser()V

    goto :goto_1

    .line 1156
    :cond_4
    const-string v6, "shareToQQ"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "shareToQzone"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1157
    :cond_5
    invoke-direct {p0, v3}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->sendQQShare(Ljava/lang/String;)V

    goto :goto_1

    .line 1159
    :cond_6
    invoke-direct {p0, v3}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->sendWXShare(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 626
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    if-nez v0, :cond_1

    .line 632
    :cond_0
    :goto_0
    return-void

    .line 630
    :cond_1
    invoke-direct {p0}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->initExtras()V

    .line 631
    invoke-direct {p0}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->loadUrl()V

    goto :goto_0
.end method

.method public setFullScreen(Z)V
    .locals 5
    .param p1, "isFullScreen"    # Z

    .prologue
    const/16 v4, 0x200

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 243
    iget-boolean v1, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->isFullScreen:Z

    if-ne v1, p1, :cond_0

    .line 264
    :goto_0
    return-void

    .line 246
    :cond_0
    iget-object v1, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 247
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    if-eqz p1, :cond_1

    .line 248
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x400

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 249
    iget-object v1, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 250
    iget-object v1, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/Window;->clearFlags(I)V

    .line 252
    iget-object v1, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mTitleBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 253
    iget-object v1, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mToolBar:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 263
    :goto_1
    iput-boolean p1, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->isFullScreen:Z

    goto :goto_0

    .line 255
    :cond_1
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x400

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 257
    iget-object v1, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 258
    iget-object v1, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/Window;->addFlags(I)V

    .line 259
    iget-object v1, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mTitleBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 260
    iget-object v1, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->mToolBar:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 261
    invoke-direct {p0}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->initToolbarStatus()V

    goto :goto_1
.end method
