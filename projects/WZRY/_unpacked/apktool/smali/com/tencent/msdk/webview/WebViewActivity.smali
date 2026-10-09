.class public Lcom/tencent/msdk/webview/WebViewActivity;
.super Landroid/app/Activity;
.source "WebViewActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/msdk/webview/WebViewActivity$WebviewGestureListener;,
        Lcom/tencent/msdk/webview/WebViewActivity$WebviewAnimationListener;,
        Lcom/tencent/msdk/webview/WebViewActivity$ShareItem;
    }
.end annotation


# static fields
.field private static final FILECHOOSER_REQUESTCODE:I = 0x1

.field private static final JS_CAN_NOT_PARSE:I = 0x0

.field private static final JS_NATIVE_PARSE:I = 0x2

.field private static final JS_REMOTE_PARSE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "[MSDK WebViewActivity]"

.field private static final THUMB_SIZE:I = 0xc8


# instance fields
.field private final METAKEY_TITLEBAR:Ljava/lang/String;

.field private final METAKEY_TOOLBAR:Ljava/lang/String;

.field private final METAKEY_TOOLBAR_LANDSCAPE:Ljava/lang/String;

.field private cancelBtn:Landroid/widget/Button;

.field private isFullScreen:Z

.field private isRunCppCode:Z

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

.field private prior:Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;

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
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 92
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 144
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/msdk/webview/WebViewActivity;->titlebarHideable:Ljava/lang/Boolean;

    .line 145
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/msdk/webview/WebViewActivity;->toolbarPortraitHideable:Ljava/lang/Boolean;

    .line 146
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/msdk/webview/WebViewActivity;->toolbarLandscapeHideable:Ljava/lang/Boolean;

    .line 147
    const-string/jumbo v0, "titlebar_hideable"

    iput-object v0, p0, Lcom/tencent/msdk/webview/WebViewActivity;->METAKEY_TITLEBAR:Ljava/lang/String;

    .line 148
    const-string/jumbo v0, "toolbar_portrait_hideable"

    iput-object v0, p0, Lcom/tencent/msdk/webview/WebViewActivity;->METAKEY_TOOLBAR:Ljava/lang/String;

    .line 149
    const-string/jumbo v0, "toolbar_landscape_hideable"

    iput-object v0, p0, Lcom/tencent/msdk/webview/WebViewActivity;->METAKEY_TOOLBAR_LANDSCAPE:Ljava/lang/String;

    .line 151
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mIsShow:Ljava/lang/Boolean;

    .line 157
    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mOrientation:I

    .line 161
    iput-boolean v1, p0, Lcom/tencent/msdk/webview/WebViewActivity;->isFullScreen:Z

    .line 165
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/msdk/webview/WebViewActivity;->prior:Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;

    .line 166
    iput-boolean v1, p0, Lcom/tencent/msdk/webview/WebViewActivity;->isRunCppCode:Z

    .line 566
    new-instance v0, Lcom/tencent/msdk/webview/WebViewActivity$2;

    invoke-direct {v0, p0}, Lcom/tencent/msdk/webview/WebViewActivity$2;-><init>(Lcom/tencent/msdk/webview/WebViewActivity;)V

    iput-object v0, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mDestroyRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private WGGetWXGameLinePicture()Ljava/lang/String;
    .locals 10

    .prologue
    .line 1760
    invoke-virtual {p0}, Lcom/tencent/msdk/webview/WebViewActivity;->getExternalCacheDir()Ljava/io/File;

    move-result-object v4

    .line 1761
    .local v4, "file":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string/jumbo v7, "wxgameline"

    invoke-direct {v2, v4, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1762
    .local v2, "datafile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1763
    const-string v1, ""

    .line 1766
    .local v1, "data":Ljava/lang/String;
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1767
    .local v5, "fis":Ljava/io/FileInputStream;
    invoke-virtual {v5}, Ljava/io/FileInputStream;->available()I

    move-result v6

    .line 1768
    .local v6, "length":I
    new-array v0, v6, [B

    .line 1769
    .local v0, "buffer":[B
    invoke-virtual {v5, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 1770
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 1771
    const/4 v7, 0x0

    invoke-static {v0, v7}, Lcom/tencent/msdk/tools/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    .line 1772
    const-string v7, "[MSDK WebViewActivity]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "data lens="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1781
    .end local v0    # "buffer":[B
    .end local v1    # "data":Ljava/lang/String;
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .end local v6    # "length":I
    :goto_0
    return-object v1

    .line 1774
    .restart local v1    # "data":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 1775
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 1776
    const-string v7, "[MSDK WebViewActivity]"

    const-string v8, "loading picture data exception"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1781
    .end local v1    # "data":Ljava/lang/String;
    .end local v3    # "e":Ljava/io/IOException;
    :goto_1
    const-string v1, ""

    goto :goto_0

    .line 1779
    :cond_0
    const-string v7, "[MSDK WebViewActivity]"

    const-string v8, "picture data:null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/tencent/msdk/webview/WebViewActivity;)Landroid/view/GestureDetector;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/msdk/webview/WebViewActivity;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mDetector:Landroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/tencent/msdk/webview/WebViewActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/msdk/webview/WebViewActivity;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mWebTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$102(Lcom/tencent/msdk/webview/WebViewActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/tencent/msdk/webview/WebViewActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mTitleStr:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/tencent/msdk/webview/WebViewActivity;Lcom/tencent/smtt/sdk/WebView;)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/msdk/webview/WebViewActivity;
    .param p1, "x1"    # Lcom/tencent/smtt/sdk/WebView;

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/tencent/msdk/webview/WebViewActivity;->h5PayInit(Lcom/tencent/smtt/sdk/WebView;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/tencent/msdk/webview/WebViewActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/msdk/webview/WebViewActivity;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/tencent/msdk/webview/WebViewActivity;->doAfterStartLoading()V

    return-void
.end method

.method static synthetic access$1300(Lcom/tencent/msdk/webview/WebViewActivity;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/msdk/webview/WebViewActivity;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mMoreDlg:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/tencent/msdk/webview/WebViewActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/msdk/webview/WebViewActivity;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mTitleBar:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/tencent/msdk/webview/WebViewActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/msdk/webview/WebViewActivity;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mToolBar:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/tencent/msdk/webview/WebViewActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/tencent/msdk/webview/WebViewActivity;

    .prologue
    .line 92
    iget v0, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mWebViewOrientation:I

    return v0
.end method

.method static synthetic access$1700(Lcom/tencent/msdk/webview/WebViewActivity;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/msdk/webview/WebViewActivity;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mIsShow:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/tencent/msdk/webview/WebViewActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "x0"    # Lcom/tencent/msdk/webview/WebViewActivity;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mIsShow:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/tencent/msdk/webview/WebViewActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/tencent/msdk/webview/WebViewActivity;

    .prologue
    .line 92
    iget v0, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mFlingLimitX:I

    return v0
.end method

.method static synthetic access$1900(Lcom/tencent/msdk/webview/WebViewActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/tencent/msdk/webview/WebViewActivity;

    .prologue
    .line 92
    iget v0, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mFlingLimitY:I

    return v0
.end method

.method static synthetic access$200(Lcom/tencent/msdk/webview/WebViewActivity;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tencent/msdk/webview/WebViewActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/tencent/msdk/webview/WebViewActivity;->canParseJsMessage(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/tencent/msdk/webview/WebViewActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/tencent/msdk/webview/WebViewActivity;

    .prologue
    .line 92
    iget v0, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mBarHeight:I

    return v0
.end method

.method static synthetic access$2100(Lcom/tencent/msdk/webview/WebViewActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/msdk/webview/WebViewActivity;
    .param p1, "x1"    # I

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/tencent/msdk/webview/WebViewActivity;->setAnimationDuration(I)V

    return-void
.end method

.method static synthetic access$2200(Lcom/tencent/msdk/webview/WebViewActivity;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/msdk/webview/WebViewActivity;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/tencent/msdk/webview/WebViewActivity;->titlebarHideable:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/tencent/msdk/webview/WebViewActivity;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/msdk/webview/WebViewActivity;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mTitleBarHide:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/tencent/msdk/webview/WebViewActivity;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/msdk/webview/WebViewActivity;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/tencent/msdk/webview/WebViewActivity;->toolbarLandscapeHideable:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/tencent/msdk/webview/WebViewActivity;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/msdk/webview/WebViewActivity;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mToolBarHide:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/tencent/msdk/webview/WebViewActivity;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/msdk/webview/WebViewActivity;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mColorHide:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/tencent/msdk/webview/WebViewActivity;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/msdk/webview/WebViewActivity;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/tencent/msdk/webview/WebViewActivity;->toolbarPortraitHideable:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/tencent/msdk/webview/WebViewActivity;)Landroid/view/animation/Animation;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/msdk/webview/WebViewActivity;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mAnimationTitlebarHide:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/tencent/msdk/webview/WebViewActivity;)Landroid/view/animation/Animation;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/msdk/webview/WebViewActivity;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mAnimationToolbarHide:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$300(Lcom/tencent/msdk/webview/WebViewActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/msdk/webview/WebViewActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/tencent/msdk/webview/WebViewActivity;->parseJsMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3000(Lcom/tencent/msdk/webview/WebViewActivity;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/msdk/webview/WebViewActivity;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mTitleBarShow:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/tencent/msdk/webview/WebViewActivity;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/msdk/webview/WebViewActivity;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mToolBarShow:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/tencent/msdk/webview/WebViewActivity;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/msdk/webview/WebViewActivity;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mColorShow:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/tencent/msdk/webview/WebViewActivity;)Landroid/view/animation/Animation;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/msdk/webview/WebViewActivity;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mAnimationTitlebarShow:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/tencent/msdk/webview/WebViewActivity;)Landroid/view/animation/Animation;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/msdk/webview/WebViewActivity;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mAnimationToolbarShow:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$400(Lcom/tencent/msdk/webview/WebViewActivity;Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/smtt/export/external/interfaces/JsResult;)I
    .locals 1
    .param p0, "x0"    # Lcom/tencent/msdk/webview/WebViewActivity;
    .param p1, "x1"    # Lcom/tencent/smtt/sdk/WebView;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Lcom/tencent/smtt/export/external/interfaces/JsResult;

    .prologue
    .line 92
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencent/msdk/webview/WebViewActivity;->h5PayHook(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/smtt/export/external/interfaces/JsResult;)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/tencent/msdk/webview/WebViewActivity;)Lcom/tencent/smtt/sdk/ValueCallback;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/msdk/webview/WebViewActivity;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/tencent/msdk/webview/WebViewActivity;->uploadFile:Lcom/tencent/smtt/sdk/ValueCallback;

    return-object v0
.end method

.method static synthetic access$502(Lcom/tencent/msdk/webview/WebViewActivity;Lcom/tencent/smtt/sdk/ValueCallback;)Lcom/tencent/smtt/sdk/ValueCallback;
    .locals 0
    .param p0, "x0"    # Lcom/tencent/msdk/webview/WebViewActivity;
    .param p1, "x1"    # Lcom/tencent/smtt/sdk/ValueCallback;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/tencent/msdk/webview/WebViewActivity;->uploadFile:Lcom/tencent/smtt/sdk/ValueCallback;

    return-object p1
.end method

.method static synthetic access$600(Lcom/tencent/msdk/webview/WebViewActivity;)Lcom/tencent/smtt/sdk/ValueCallback;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/msdk/webview/WebViewActivity;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/tencent/msdk/webview/WebViewActivity;->uploadFileArray:Lcom/tencent/smtt/sdk/ValueCallback;

    return-object v0
.end method

.method static synthetic access$602(Lcom/tencent/msdk/webview/WebViewActivity;Lcom/tencent/smtt/sdk/ValueCallback;)Lcom/tencent/smtt/sdk/ValueCallback;
    .locals 0
    .param p0, "x0"    # Lcom/tencent/msdk/webview/WebViewActivity;
    .param p1, "x1"    # Lcom/tencent/smtt/sdk/ValueCallback;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/tencent/msdk/webview/WebViewActivity;->uploadFileArray:Lcom/tencent/smtt/sdk/ValueCallback;

    return-object p1
.end method

.method static synthetic access$700(Lcom/tencent/msdk/webview/WebViewActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/msdk/webview/WebViewActivity;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/tencent/msdk/webview/WebViewActivity;->changeBackForwordBtnState()V

    return-void
.end method

.method static synthetic access$800(Lcom/tencent/msdk/webview/WebViewActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/msdk/webview/WebViewActivity;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/tencent/msdk/webview/WebViewActivity;->doAfterStop()V

    return-void
.end method

.method static synthetic access$900(Lcom/tencent/msdk/webview/WebViewActivity;)Lcom/tencent/smtt/sdk/WebView;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/msdk/webview/WebViewActivity;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    return-object v0
.end method

.method private canParseJsMessage(Ljava/lang/String;)Z
    .locals 4
    .param p1, "jsMessage"    # Ljava/lang/String;

    .prologue
    .line 837
    const/4 v0, 0x0

    .line 838
    .local v0, "canParseJsMessage":Z
    invoke-static {p1}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 840
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 841
    .local v2, "json":Lorg/json/JSONObject;
    const-string v3, "MsdkMethod"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 842
    const/4 v0, 0x1

    .line 848
    .end local v2    # "json":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return v0

    .line 844
    :catch_0
    move-exception v1

    .line 845
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private changeBackForwordBtnState()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 1177
    iget-object v0, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebView;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1178
    iget-object v0, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mForwardBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1179
    iget-object v0, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mForwardUnclickableBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1185
    :goto_0
    iget-object v0, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1186
    iget-object v0, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mBackBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1187
    iget-object v0, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mBackUnclickableBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1192
    :goto_1
    return-void

    .line 1181
    :cond_0
    iget-object v0, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mForwardBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1182
    iget-object v0, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mForwardUnclickableBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 1189
    :cond_1
    iget-object v0, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mBackBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1190
    iget-object v0, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mBackUnclickableBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_1
.end method

.method private deleteWxGamelinePicture()V
    .locals 3

    .prologue
    .line 1753
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/tencent/msdk/webview/WebViewActivity;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "wxgameline"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1754
    .local v0, "datafile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1755
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1757
    :cond_0
    return-void
.end method

.method private doAfterStartLoading()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 1206
    iget-object v0, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mStopBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1207
    iget-object v0, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mStopBtn:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1209
    :cond_0
    iget-object v0, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mRefreshBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 1210
    iget-object v0, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mRefreshBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1212
    :cond_1
    return-void
.end method

.method private doAfterStop()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 1196
    iget-object v0, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mStopBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 1197
    iget-object v0, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mStopBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1199
    :cond_0
    iget-object v0, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mRefreshBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1200
    iget-object v0, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mRefreshBtn:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1202
    :cond_1
    return-void
.end method

.method private getCurrentUrl()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1497
    iget-object v1, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v1}, Lcom/tencent/smtt/sdk/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 1498
    .local v0, "url":Ljava/lang/String;
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mOriginalUrl:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1499
    const-string v1, "/"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mOriginalUrl:Ljava/lang/String;

    const-string v3, "/"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1500
    const-string v1, "[MSDK WebViewActivity]"

    const-string v2, "getCurrentUrl state:true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1506
    :cond_0
    :goto_0
    return-object v0

    .line 1504
    :cond_1
    const-string v1, "[MSDK WebViewActivity]"

    const-string v2, "mWebView geturl is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getJsImgDataPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    const/4 v12, -0x1

    .line 1632
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1633
    const-string v9, "data is empty"

    invoke-static {v9}, Lcom/tencent/msdk/tools/Logger;->w(Ljava/lang/String;)V

    .line 1634
    const-string v6, ""

    .line 1693
    :cond_0
    :goto_0
    return-object v6

    .line 1636
    :cond_1
    const-string v6, ""

    .line 1639
    .local v6, "imagePath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-static {p0}, Lcom/tencent/msdk/tools/FileUtils;->getAppExternalRootDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v9

    const-string v10, "msdk_webview"

    invoke-direct {v1, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1641
    .local v1, "dir":Ljava/io/File;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "file:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/tencent/msdk/tools/Logger;->w(Ljava/lang/String;)V

    .line 1642
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1643
    invoke-static {v1}, Lcom/tencent/msdk/tools/FileUtils;->delFiles(Ljava/io/File;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 1644
    const-string v9, "create sdcard file error"

    invoke-static {v9}, Lcom/tencent/msdk/tools/Logger;->w(Ljava/lang/String;)V

    .line 1645
    const-string v6, ""

    goto :goto_0

    .line 1648
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 1649
    const-string v8, ""

    .line 1650
    .local v8, "thumbName":Ljava/lang/String;
    const-string v9, "image/png"

    invoke-virtual {p1, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-eq v9, v12, :cond_4

    .line 1651
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "thumb"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".png"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1657
    :goto_1
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1658
    .local v5, "imageFile":Ljava/io/File;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "file name:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 1659
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1660
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 1662
    :cond_3
    const/4 v3, 0x0

    .line 1664
    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    .line 1665
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1666
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .local v4, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    const-string v9, "base64,"

    invoke-virtual {p1, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 1667
    .local v7, "index":I
    if-eq v7, v12, :cond_6

    .line 1668
    add-int/lit8 v9, v7, 0x7

    invoke-virtual {p1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1669
    .local v0, "datas":Ljava/lang/String;
    const/4 v9, 0x0

    invoke-static {v0, v9}, Lcom/tencent/msdk/tools/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/io/FileOutputStream;->write([B)V

    .line 1673
    .end local v0    # "datas":Ljava/lang/String;
    :goto_2
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v6

    .line 1681
    if-eqz v4, :cond_8

    .line 1683
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1684
    const/4 v5, 0x0

    .line 1685
    const/4 p1, 0x0

    move-object v3, v4

    .line 1689
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_0

    .line 1652
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .end local v5    # "imageFile":Ljava/io/File;
    .end local v7    # "index":I
    :cond_4
    const-string v9, "image/jpeg"

    invoke-virtual {p1, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-eq v9, v12, :cond_5

    .line 1653
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "thumb"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".jpg"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 1655
    :cond_5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "thumb"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".jpg"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_1

    .line 1671
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "imageFile":Ljava/io/File;
    .restart local v7    # "index":I
    :cond_6
    const/4 v9, 0x0

    :try_start_3
    invoke-static {p1, v9}, Lcom/tencent/msdk/tools/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    .line 1674
    .end local v7    # "index":I
    :catch_0
    move-exception v2

    move-object v3, v4

    .line 1676
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .local v2, "e":Ljava/io/FileNotFoundException;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :goto_3
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1681
    if-eqz v3, :cond_0

    .line 1683
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 1684
    const/4 v5, 0x0

    .line 1685
    const/4 p1, 0x0

    goto/16 :goto_0

    .line 1686
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "index":I
    :catch_1
    move-exception v2

    .line 1688
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, v4

    .line 1689
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_0

    .line 1686
    .end local v7    # "index":I
    .local v2, "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v2

    .line 1688
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 1677
    .end local v2    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 1679
    .restart local v2    # "e":Ljava/io/IOException;
    :goto_4
    :try_start_6
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1681
    if-eqz v3, :cond_0

    .line 1683
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 1684
    const/4 v5, 0x0

    .line 1685
    const/4 p1, 0x0

    goto/16 :goto_0

    .line 1686
    :catch_4
    move-exception v2

    .line 1688
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 1681
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    :goto_5
    if-eqz v3, :cond_7

    .line 1683
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 1684
    const/4 v5, 0x0

    .line 1685
    const/4 p1, 0x0

    .line 1689
    :cond_7
    :goto_6
    throw v9

    .line 1686
    :catch_5
    move-exception v2

    .line 1688
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 1681
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v9

    move-object v3, v4

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    goto :goto_5

    .line 1677
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :catch_6
    move-exception v2

    move-object v3, v4

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 1674
    :catch_7
    move-exception v2

    goto :goto_3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "index":I
    :cond_8
    move-object v3, v4

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_0
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
    .line 1698
    :try_start_0
    const-string v2, "com.tencent.midas.api.APMidasPayAPI"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1703
    :goto_0
    return-object v1

    .line 1700
    :catch_0
    move-exception v0

    .line 1701
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 1703
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getShareItems()Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/msdk/webview/WebViewActivity$ShareItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1147
    .local v0, "moreItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tencent/msdk/webview/WebViewActivity$ShareItem;>;"
    iget-boolean v6, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mSendToWeixin:Z

    if-eqz v6, :cond_0

    .line 1148
    new-instance v5, Lcom/tencent/msdk/webview/WebViewActivity$ShareItem;

    sget v6, Lcom/tencent/msdk/webview/WebViewResID;->drawable_share_to_wx_friend:I

    sget v7, Lcom/tencent/msdk/webview/WebViewResID;->str_shareToWxFriend:I

    new-array v8, v11, [Ljava/lang/Object;

    const-string v9, ""

    aput-object v9, v8, v10

    .line 1149
    invoke-virtual {p0, v7, v8}, Lcom/tencent/msdk/webview/WebViewActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "shareToWxfriend"

    invoke-direct {v5, p0, v6, v7, v8}, Lcom/tencent/msdk/webview/WebViewActivity$ShareItem;-><init>(Lcom/tencent/msdk/webview/WebViewActivity;ILjava/lang/String;Ljava/lang/String;)V

    .line 1150
    .local v5, "shareToWxFriend":Lcom/tencent/msdk/webview/WebViewActivity$ShareItem;
    new-instance v4, Lcom/tencent/msdk/webview/WebViewActivity$ShareItem;

    sget v6, Lcom/tencent/msdk/webview/WebViewResID;->drawable_share_to_wx:I

    sget v7, Lcom/tencent/msdk/webview/WebViewResID;->str_shareToWx:I

    new-array v8, v11, [Ljava/lang/Object;

    const-string v9, ""

    aput-object v9, v8, v10

    .line 1151
    invoke-virtual {p0, v7, v8}, Lcom/tencent/msdk/webview/WebViewActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "shareToWx"

    invoke-direct {v4, p0, v6, v7, v8}, Lcom/tencent/msdk/webview/WebViewActivity$ShareItem;-><init>(Lcom/tencent/msdk/webview/WebViewActivity;ILjava/lang/String;Ljava/lang/String;)V

    .line 1152
    .local v4, "shareToWx":Lcom/tencent/msdk/webview/WebViewActivity$ShareItem;
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1153
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1156
    .end local v4    # "shareToWx":Lcom/tencent/msdk/webview/WebViewActivity$ShareItem;
    .end local v5    # "shareToWxFriend":Lcom/tencent/msdk/webview/WebViewActivity$ShareItem;
    :cond_0
    iget-boolean v6, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mSendToQQ:Z

    if-eqz v6, :cond_1

    .line 1157
    new-instance v3, Lcom/tencent/msdk/webview/WebViewActivity$ShareItem;

    sget v6, Lcom/tencent/msdk/webview/WebViewResID;->drawable_share_to_qzone:I

    sget v7, Lcom/tencent/msdk/webview/WebViewResID;->str_shareToQzone:I

    new-array v8, v11, [Ljava/lang/Object;

    const-string v9, ""

    aput-object v9, v8, v10

    .line 1158
    invoke-virtual {p0, v7, v8}, Lcom/tencent/msdk/webview/WebViewActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "shareToQzone"

    invoke-direct {v3, p0, v6, v7, v8}, Lcom/tencent/msdk/webview/WebViewActivity$ShareItem;-><init>(Lcom/tencent/msdk/webview/WebViewActivity;ILjava/lang/String;Ljava/lang/String;)V

    .line 1159
    .local v3, "shareToQzone":Lcom/tencent/msdk/webview/WebViewActivity$ShareItem;
    new-instance v2, Lcom/tencent/msdk/webview/WebViewActivity$ShareItem;

    sget v6, Lcom/tencent/msdk/webview/WebViewResID;->drawable_share_to_qq:I

    sget v7, Lcom/tencent/msdk/webview/WebViewResID;->str_shareToQQ:I

    new-array v8, v11, [Ljava/lang/Object;

    const-string v9, ""

    aput-object v9, v8, v10

    .line 1160
    invoke-virtual {p0, v7, v8}, Lcom/tencent/msdk/webview/WebViewActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "shareToQQ"

    invoke-direct {v2, p0, v6, v7, v8}, Lcom/tencent/msdk/webview/WebViewActivity$ShareItem;-><init>(Lcom/tencent/msdk/webview/WebViewActivity;ILjava/lang/String;Ljava/lang/String;)V

    .line 1161
    .local v2, "shareToQQ":Lcom/tencent/msdk/webview/WebViewActivity$ShareItem;
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1162
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1166
    .end local v2    # "shareToQQ":Lcom/tencent/msdk/webview/WebViewActivity$ShareItem;
    .end local v3    # "shareToQzone":Lcom/tencent/msdk/webview/WebViewActivity$ShareItem;
    :cond_1
    new-instance v1, Lcom/tencent/msdk/webview/WebViewActivity$ShareItem;

    sget v6, Lcom/tencent/msdk/webview/WebViewResID;->drawable_open_by_otherbrowser:I

    sget v7, Lcom/tencent/msdk/webview/WebViewResID;->str_thrdcall_openbrowser:I

    new-array v8, v11, [Ljava/lang/Object;

    const-string v9, ""

    aput-object v9, v8, v10

    .line 1167
    invoke-virtual {p0, v7, v8}, Lcom/tencent/msdk/webview/WebViewActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "openByOtherBrowser"

    invoke-direct {v1, p0, v6, v7, v8}, Lcom/tencent/msdk/webview/WebViewActivity$ShareItem;-><init>(Lcom/tencent/msdk/webview/WebViewActivity;ILjava/lang/String;Ljava/lang/String;)V

    .line 1169
    .local v1, "openByOtherBrowser":Lcom/tencent/msdk/webview/WebViewActivity$ShareItem;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1170
    return-object v0
.end method

.method private getWebViewImageData(Z)[B
    .locals 14
    .param p1, "isBigImage"    # Z

    .prologue
    const/4 v8, 0x0

    const/16 v13, 0xc8

    const/16 v12, 0x5a

    const/high16 v11, 0x43480000    # 200.0f

    const/4 v10, 0x1

    .line 1537
    const/4 v3, 0x0

    .line 1538
    .local v3, "imageData":[B
    iget-object v9, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v9, v10}, Lcom/tencent/smtt/sdk/WebView;->setDrawingCacheEnabled(Z)V

    .line 1539
    iget-object v9, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v9}, Lcom/tencent/smtt/sdk/WebView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v5

    .line 1541
    .local v5, "sourceImage":Landroid/graphics/Bitmap;
    if-nez v5, :cond_0

    .line 1542
    const-string v9, "[MSDK WebViewActivity]"

    const-string v10, "get Image Data error, sourceImage is null"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v3

    .line 1586
    .end local v3    # "imageData":[B
    .local v4, "imageData":[B
    :goto_0
    return-object v8

    .line 1545
    .end local v4    # "imageData":[B
    .restart local v3    # "imageData":[B
    :cond_0
    if-eqz p1, :cond_1

    .line 1546
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1547
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v5, v8, v12, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1548
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 1550
    :try_start_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1583
    :goto_1
    iget-object v8, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/tencent/smtt/sdk/WebView;->setDrawingCacheEnabled(Z)V

    .line 1584
    const-string v8, "[MSDK WebViewActivity]"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isBigImage:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ";imgaeDataLegth:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    array-length v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "Byte"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v3

    .end local v3    # "imageData":[B
    .restart local v4    # "imageData":[B
    move-object v8, v3

    .line 1586
    goto :goto_0

    .line 1551
    .end local v4    # "imageData":[B
    .restart local v3    # "imageData":[B
    :catch_0
    move-exception v1

    .line 1552
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 1553
    const-string v8, "[MSDK WebViewActivity]"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getWebViewImageData : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1556
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "e":Ljava/io/IOException;
    :cond_1
    const/4 v6, 0x0

    .line 1557
    .local v6, "thumbBmp":Landroid/graphics/Bitmap;
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    int-to-float v7, v9

    .line 1558
    .local v7, "w":F
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v2, v9

    .line 1559
    .local v2, "h":F
    cmpl-float v9, v7, v2

    if-lez v9, :cond_2

    .line 1560
    div-float v9, v2, v7

    mul-float/2addr v9, v11

    float-to-int v9, v9

    invoke-static {v5, v13, v9, v10}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 1566
    :goto_2
    if-nez v6, :cond_3

    .line 1567
    const-string v9, "[MSDK WebViewActivity]"

    const-string v10, "get Image Data error, thumbBmp is null"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1568
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    move-object v4, v3

    .line 1569
    .end local v3    # "imageData":[B
    .restart local v4    # "imageData":[B
    goto/16 :goto_0

    .line 1563
    .end local v4    # "imageData":[B
    .restart local v3    # "imageData":[B
    :cond_2
    div-float v9, v7, v2

    mul-float/2addr v9, v11

    float-to-int v9, v9

    invoke-static {v5, v9, v13, v10}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    goto :goto_2

    .line 1571
    :cond_3
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1572
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v6, v8, v12, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1573
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 1575
    :try_start_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1580
    :goto_3
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 1581
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_1

    .line 1576
    :catch_1
    move-exception v1

    .line 1577
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 1578
    const-string v8, "[MSDK WebViewActivity]"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getWebViewImageData : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private getWebViewImagePath()Ljava/lang/String;
    .locals 12

    .prologue
    .line 1590
    const-string v4, ""

    .line 1592
    .local v4, "imagePath":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/tencent/msdk/tools/FileUtils;->getAppExternalRootDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v8

    const-string v9, "msdk_webview"

    invoke-direct {v0, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1593
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1594
    invoke-static {v0}, Lcom/tencent/msdk/tools/FileUtils;->delFiles(Ljava/io/File;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1595
    const-string v8, ""

    move-object v5, v4

    .line 1628
    .end local v4    # "imagePath":Ljava/lang/String;
    .local v5, "imagePath":Ljava/lang/String;
    :goto_0
    return-object v8

    .line 1598
    .end local v5    # "imagePath":Ljava/lang/String;
    .restart local v4    # "imagePath":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 1600
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "thumb"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".png"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1601
    .local v7, "thumbName":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1602
    .local v3, "imageFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1603
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 1605
    :cond_1
    iget-object v8, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/tencent/smtt/sdk/WebView;->setDrawingCacheEnabled(Z)V

    .line 1606
    iget-object v8, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v8}, Lcom/tencent/smtt/sdk/WebView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v6

    .line 1608
    .local v6, "thumb":Landroid/graphics/Bitmap;
    if-nez v6, :cond_2

    .line 1609
    const-string v8, ""

    move-object v5, v4

    .end local v4    # "imagePath":Ljava/lang/String;
    .restart local v5    # "imagePath":Ljava/lang/String;
    goto :goto_0

    .line 1612
    .end local v5    # "imagePath":Ljava/lang/String;
    .restart local v4    # "imagePath":Ljava/lang/String;
    :cond_2
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 1613
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1614
    .local v2, "fos":Ljava/io/FileOutputStream;
    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v9, 0x5a

    invoke-virtual {v6, v8, v9, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1615
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 1616
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 1617
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1625
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    :goto_1
    iget-object v8, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/tencent/smtt/sdk/WebView;->setDrawingCacheEnabled(Z)V

    .line 1626
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    .end local v4    # "imagePath":Ljava/lang/String;
    .restart local v5    # "imagePath":Ljava/lang/String;
    move-object v8, v4

    .line 1628
    goto :goto_0

    .line 1618
    .end local v5    # "imagePath":Ljava/lang/String;
    .restart local v4    # "imagePath":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1619
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 1620
    const-string v8, "[MSDK WebViewActivity]"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getWebViewImagePath : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1621
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 1622
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 1623
    const-string v8, "[MSDK WebViewActivity]"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getWebViewImagePath : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private h5PayHook(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/smtt/export/external/interfaces/JsResult;)I
    .locals 8
    .param p1, "view"    # Lcom/tencent/smtt/sdk/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "jsResult"    # Lcom/tencent/smtt/export/external/interfaces/JsResult;

    .prologue
    .line 1729
    invoke-direct {p0}, Lcom/tencent/msdk/webview/WebViewActivity;->getPayAPIClass()Ljava/lang/Class;

    move-result-object v2

    .line 1730
    .local v2, "payAPI":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v2, :cond_0

    .line 1733
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

    .line 1734
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

    .line 1735
    .local v0, "code":I
    const-string v4, "[MSDK WebViewActivity]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "h5PayHook success:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    .line 1749
    .end local v0    # "code":I
    .end local v3    # "staticMethod":Ljava/lang/reflect/Method;
    :goto_0
    return v0

    .line 1737
    :catch_0
    move-exception v1

    .line 1738
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 1739
    const-string v4, "[MSDK WebViewActivity]"

    const-string v5, "h5PayHook NoSuchMethodException"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1749
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :cond_0
    :goto_1
    const/4 v0, -0x1

    goto :goto_0

    .line 1740
    :catch_1
    move-exception v1

    .line 1741
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 1742
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v1

    .line 1743
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 1744
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v1

    .line 1745
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1
.end method

.method private h5PayInit(Lcom/tencent/smtt/sdk/WebView;)V
    .locals 7
    .param p1, "view"    # Lcom/tencent/smtt/sdk/WebView;

    .prologue
    .line 1708
    invoke-direct {p0}, Lcom/tencent/msdk/webview/WebViewActivity;->getPayAPIClass()Ljava/lang/Class;

    move-result-object v1

    .line 1709
    .local v1, "payAPI":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v1, :cond_0

    .line 1711
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

    .line 1712
    .local v2, "staticMethod":Ljava/lang/reflect/Method;
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1713
    const-string v3, "[MSDK WebViewActivity]"

    const-string v4, "h5PayInit success"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    .line 1725
    .end local v2    # "staticMethod":Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return-void

    .line 1714
    :catch_0
    move-exception v0

    .line 1715
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 1716
    const-string v3, "[MSDK WebViewActivity]"

    const-string v4, "h5PayInit NoSuchMethodException"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1717
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v0

    .line 1718
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 1719
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 1720
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 1721
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v0

    .line 1722
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method

.method private handleIntent(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 728
    if-nez p1, :cond_1

    .line 729
    const-string v3, "[MSDK WebViewActivity]"

    const-string v4, "Start WebViewActivity error, without Intent data!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    invoke-virtual {p0}, Lcom/tencent/msdk/webview/WebViewActivity;->finish()V

    .line 773
    :cond_0
    :goto_0
    return-void

    .line 734
    :cond_1
    const-string v1, ""

    .line 735
    .local v1, "eventInfo":Ljava/lang/String;
    const-string v3, "method_start_view"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 736
    const-string v3, "method_start_view"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 737
    invoke-static {v1}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 738
    const-string v3, "[MSDK WebViewActivity]"

    const-string v4, "Start WebViewActivity error, start info is empty!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    invoke-virtual {p0}, Lcom/tencent/msdk/webview/WebViewActivity;->finish()V

    goto :goto_0

    .line 743
    :cond_2
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 744
    .local v2, "json":Lorg/json/JSONObject;
    const-string v3, "show_qq_share_icon"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mSendToQQ:Z

    .line 745
    const-string v3, "show_wx_share_icon"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mSendToWeixin:Z

    .line 746
    const-string v3, "open_url"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mOriginalUrl:Ljava/lang/String;

    .line 748
    const-string v3, "screen_orientation"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 749
    const-string v3, "screen_orientation"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mOrientation:I

    .line 750
    iget v3, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mOrientation:I

    sget-object v4, Lcom/tencent/msdk/notice/eMSDK_SCREENDIR;->eMSDK_SCREENDIR_SENSOR:Lcom/tencent/msdk/notice/eMSDK_SCREENDIR;

    invoke-virtual {v4}, Lcom/tencent/msdk/notice/eMSDK_SCREENDIR;->val()I

    move-result v4

    if-ne v3, v4, :cond_3

    .line 751
    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Lcom/tencent/msdk/webview/WebViewActivity;->setRequestedOrientation(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 760
    .end local v2    # "json":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 761
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 762
    invoke-virtual {p0}, Lcom/tencent/msdk/webview/WebViewActivity;->finish()V

    goto :goto_0

    .line 752
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "json":Lorg/json/JSONObject;
    :cond_3
    :try_start_1
    iget v3, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mOrientation:I

    sget-object v4, Lcom/tencent/msdk/notice/eMSDK_SCREENDIR;->eMSDK_SCREENDIR_PORTRAIT:Lcom/tencent/msdk/notice/eMSDK_SCREENDIR;

    invoke-virtual {v4}, Lcom/tencent/msdk/notice/eMSDK_SCREENDIR;->val()I

    move-result v4

    if-ne v3, v4, :cond_4

    .line 753
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/tencent/msdk/webview/WebViewActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 754
    :cond_4
    iget v3, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mOrientation:I

    sget-object v4, Lcom/tencent/msdk/notice/eMSDK_SCREENDIR;->eMSDK_SCREENDIR_LANDSCAPE:Lcom/tencent/msdk/notice/eMSDK_SCREENDIR;

    invoke-virtual {v4}, Lcom/tencent/msdk/notice/eMSDK_SCREENDIR;->val()I

    move-result v4

    if-ne v3, v4, :cond_5

    .line 755
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/tencent/msdk/webview/WebViewActivity;->setRequestedOrientation(I)V

    goto/16 :goto_0

    .line 757
    :cond_5
    const-string v3, "[MSDK WebViewActivity]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mOrientation is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mOrientation:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", type error"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 764
    .end local v2    # "json":Lorg/json/JSONObject;
    :cond_6
    const-string v3, "method_finish_view"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 765
    invoke-virtual {p0}, Lcom/tencent/msdk/webview/WebViewActivity;->finishView()V

    goto/16 :goto_0

    .line 766
    :cond_7
    const-string v3, "method_send_event"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 767
    const-string v3, "method_send_event"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 768
    invoke-virtual {p0, v1}, Lcom/tencent/msdk/webview/WebViewActivity;->recvEvent(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 770
    :cond_8
    const-string v3, "[MSDK WebViewActivity]"

    const-string v4, "WebViewActivity receive undefine method name"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private hiddenConfig()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 703
    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/msdk/webview/WebViewActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 704
    invoke-virtual {p0}, Lcom/tencent/msdk/webview/WebViewActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    const/16 v8, 0x80

    .line 703
    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 705
    .local v0, "activityInfo":Landroid/content/pm/ActivityInfo;
    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 706
    .local v2, "metaData":Landroid/os/Bundle;
    if-nez v2, :cond_1

    .line 707
    const-string v6, "[MSDK WebViewActivity]"

    const-string v7, "Does\'t config meta data."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    .end local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v2    # "metaData":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 710
    .restart local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .restart local v2    # "metaData":Landroid/os/Bundle;
    :cond_1
    const-string/jumbo v6, "titlebar_hideable"

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 711
    .local v3, "titlebarConfig":Ljava/lang/Boolean;
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-ne v6, v9, :cond_2

    .line 712
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, p0, Lcom/tencent/msdk/webview/WebViewActivity;->titlebarHideable:Ljava/lang/Boolean;

    .line 714
    :cond_2
    const-string/jumbo v6, "toolbar_portrait_hideable"

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 715
    .local v4, "toolbarConfig":Ljava/lang/Boolean;
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-ne v6, v9, :cond_3

    .line 716
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, p0, Lcom/tencent/msdk/webview/WebViewActivity;->toolbarPortraitHideable:Ljava/lang/Boolean;

    .line 718
    :cond_3
    const-string/jumbo v6, "toolbar_landscape_hideable"

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 719
    .local v5, "toolbarLandscapeConfig":Ljava/lang/Boolean;
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-ne v6, v9, :cond_0

    .line 720
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, p0, Lcom/tencent/msdk/webview/WebViewActivity;->toolbarLandscapeHideable:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 722
    .end local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v2    # "metaData":Landroid/os/Bundle;
    .end local v3    # "titlebarConfig":Ljava/lang/Boolean;
    .end local v4    # "toolbarConfig":Ljava/lang/Boolean;
    .end local v5    # "toolbarLandscapeConfig":Ljava/lang/Boolean;
    :catch_0
    move-exception v1

    .line 723
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

    .line 1216
    invoke-virtual {p0}, Lcom/tencent/msdk/webview/WebViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/tencent/msdk/webview/WebViewResID;->dimen_fling_limit_x:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mFlingLimitX:I

    .line 1217
    invoke-virtual {p0}, Lcom/tencent/msdk/webview/WebViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/tencent/msdk/webview/WebViewResID;->dimen_fling_limit_y:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mFlingLimitY:I

    .line 1219
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-ge v3, v4, :cond_0

    .line 1220
    sget v3, Lcom/tencent/msdk/webview/WebViewResID;->anim_toolbar_hide:I

    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mAnimationToolbarHide:Landroid/view/animation/Animation;

    .line 1221
    iget-object v3, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mAnimationToolbarHide:Landroid/view/animation/Animation;

    new-instance v4, Lcom/tencent/msdk/webview/WebViewActivity$WebviewAnimationListener;

    invoke-direct {v4, p0, v8}, Lcom/tencent/msdk/webview/WebViewActivity$WebviewAnimationListener;-><init>(Lcom/tencent/msdk/webview/WebViewActivity;I)V

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1223
    sget v3, Lcom/tencent/msdk/webview/WebViewResID;->anim_toolbar_show:I

    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mAnimationToolbarShow:Landroid/view/animation/Animation;

    .line 1224
    iget-object v3, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mAnimationToolbarShow:Landroid/view/animation/Animation;

    new-instance v4, Lcom/tencent/msdk/webview/WebViewActivity$WebviewAnimationListener;

    invoke-direct {v4, p0, v7}, Lcom/tencent/msdk/webview/WebViewActivity$WebviewAnimationListener;-><init>(Lcom/tencent/msdk/webview/WebViewActivity;I)V

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1227
    sget v3, Lcom/tencent/msdk/webview/WebViewResID;->anim_titlebar_hide:I

    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mAnimationTitlebarHide:Landroid/view/animation/Animation;

    .line 1228
    sget v3, Lcom/tencent/msdk/webview/WebViewResID;->anim_titlebar_show:I

    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mAnimationTitlebarShow:Landroid/view/animation/Animation;

    .line 1318
    :goto_0
    return-void

    .line 1230
    :cond_0
    const/16 v0, 0x78

    .line 1231
    .local v0, "durationTime":I
    invoke-virtual {p0}, Lcom/tencent/msdk/webview/WebViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/tencent/msdk/webview/WebViewResID;->dimen_titlebar_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mBarHeight:I

    .line 1233
    new-array v3, v8, [I

    aput v6, v3, v6

    iget v4, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mBarHeight:I

    neg-int v4, v4

    aput v4, v3, v7

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mTitleBarHide:Landroid/animation/ValueAnimator;

    .line 1234
    iget-object v3, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mTitleBarHide:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/tencent/msdk/webview/WebViewActivity$7;

    invoke-direct {v4, p0}, Lcom/tencent/msdk/webview/WebViewActivity$7;-><init>(Lcom/tencent/msdk/webview/WebViewActivity;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1245
    iget-object v3, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mTitleBarHide:Landroid/animation/ValueAnimator;

    new-instance v4, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1246
    iget-object v3, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mTitleBarHide:Landroid/animation/ValueAnimator;

    int-to-long v4, v0

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1248
    new-array v3, v8, [I

    iget v4, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mBarHeight:I

    neg-int v4, v4

    aput v4, v3, v6

    aput v6, v3, v7

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mTitleBarShow:Landroid/animation/ValueAnimator;

    .line 1249
    iget-object v3, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mTitleBarShow:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/tencent/msdk/webview/WebViewActivity$8;

    invoke-direct {v4, p0}, Lcom/tencent/msdk/webview/WebViewActivity$8;-><init>(Lcom/tencent/msdk/webview/WebViewActivity;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1260
    iget-object v3, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mTitleBarShow:Landroid/animation/ValueAnimator;

    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1261
    iget-object v3, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mTitleBarShow:Landroid/animation/ValueAnimator;

    int-to-long v4, v0

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1263
    new-array v3, v8, [I

    aput v6, v3, v6

    iget v4, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mBarHeight:I

    neg-int v4, v4

    aput v4, v3, v7

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mToolBarHide:Landroid/animation/ValueAnimator;

    .line 1264
    iget-object v3, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mToolBarHide:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/tencent/msdk/webview/WebViewActivity$9;

    invoke-direct {v4, p0}, Lcom/tencent/msdk/webview/WebViewActivity$9;-><init>(Lcom/tencent/msdk/webview/WebViewActivity;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1275
    iget-object v3, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mToolBarHide:Landroid/animation/ValueAnimator;

    new-instance v4, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1276
    iget-object v3, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mToolBarHide:Landroid/animation/ValueAnimator;

    int-to-long v4, v0

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1278
    new-array v3, v8, [I

    iget v4, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mBarHeight:I

    neg-int v4, v4

    aput v4, v3, v6

    aput v6, v3, v7

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mToolBarShow:Landroid/animation/ValueAnimator;

    .line 1279
    iget-object v3, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mToolBarShow:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/tencent/msdk/webview/WebViewActivity$10;

    invoke-direct {v4, p0}, Lcom/tencent/msdk/webview/WebViewActivity$10;-><init>(Lcom/tencent/msdk/webview/WebViewActivity;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1290
    iget-object v3, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mToolBarShow:Landroid/animation/ValueAnimator;

    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1291
    iget-object v3, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mToolBarShow:Landroid/animation/ValueAnimator;

    int-to-long v4, v0

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1294
    invoke-virtual {p0}, Lcom/tencent/msdk/webview/WebViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/tencent/msdk/webview/WebViewResID;->color_toolbar_visible:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 1295
    .local v2, "visibleColor":I
    invoke-virtual {p0}, Lcom/tencent/msdk/webview/WebViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/tencent/msdk/webview/WebViewResID;->color_toolbar_invisible:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 1296
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

    iput-object v3, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mColorHide:Landroid/animation/ValueAnimator;

    .line 1297
    iget-object v3, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mColorHide:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/tencent/msdk/webview/WebViewActivity$11;

    invoke-direct {v4, p0}, Lcom/tencent/msdk/webview/WebViewActivity$11;-><init>(Lcom/tencent/msdk/webview/WebViewActivity;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1305
    iget-object v3, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mColorHide:Landroid/animation/ValueAnimator;

    int-to-long v4, v0

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1307
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

    iput-object v3, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mColorShow:Landroid/animation/ValueAnimator;

    .line 1308
    iget-object v3, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mColorShow:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/tencent/msdk/webview/WebViewActivity$12;

    invoke-direct {v4, p0}, Lcom/tencent/msdk/webview/WebViewActivity$12;-><init>(Lcom/tencent/msdk/webview/WebViewActivity;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1316
    iget-object v3, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mColorShow:Landroid/animation/ValueAnimator;

    int-to-long v4, v0

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto/16 :goto_0
.end method

.method private initGridView()V
    .locals 8

    .prologue
    const/4 v5, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mItemArrayList:Ljava/util/ArrayList;

    .line 1105
    new-instance v0, Landroid/widget/SimpleAdapter;

    iget-object v2, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mItemArrayList:Ljava/util/ArrayList;

    sget v3, Lcom/tencent/msdk/webview/WebViewResID;->layout_dlg_gridview_item:I

    new-array v4, v5, [Ljava/lang/String;

    const-string v1, "icon"

    aput-object v1, v4, v6

    const-string/jumbo v1, "title"

    aput-object v1, v4, v7

    new-array v5, v5, [I

    sget v1, Lcom/tencent/msdk/webview/WebViewResID;->itemImage:I

    aput v1, v5, v6

    sget v1, Lcom/tencent/msdk/webview/WebViewResID;->itemText:I

    aput v1, v5, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mAdapter:Landroid/widget/SimpleAdapter;

    .line 1109
    iget-object v0, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mGridView:Landroid/widget/GridView;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 1110
    iget-object v0, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mGridView:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mAdapter:Landroid/widget/SimpleAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1111
    iget-object v0, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1112
    return-void
.end method

.method private initLayout()V
    .locals 1

    .prologue
    .line 776
    sget v0, Lcom/tencent/msdk/webview/WebViewResID;->playout:I

    invoke-virtual {p0, v0}, Lcom/tencent/msdk/webview/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mParentLayout:Landroid/view/ViewGroup;

    .line 779
    sget v0, Lcom/tencent/msdk/webview/WebViewResID;->webTitle:I

    invoke-virtual {p0, v0}, Lcom/tencent/msdk/webview/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mWebTitle:Landroid/widget/TextView;

    .line 780
    sget v0, Lcom/tencent/msdk/webview/WebViewResID;->titleBar:I

    invoke-virtual {p0, v0}, Lcom/tencent/msdk/webview/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mTitleBar:Landroid/widget/RelativeLayout;

    .line 782
    sget v0, Lcom/tencent/msdk/webview/WebViewResID;->toolbar:I

    invoke-virtual {p0, v0}, Lcom/tencent/msdk/webview/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mToolBar:Landroid/widget/LinearLayout;

    .line 784
    sget v0, Lcom/tencent/msdk/webview/WebViewResID;->refresh:I

    invoke-virtual {p0, v0}, Lcom/tencent/msdk/webview/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mRefreshBtn:Landroid/widget/ImageButton;

    .line 785
    iget-object v0, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mRefreshBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 787
    sget v0, Lcom/tencent/msdk/webview/WebViewResID;->stop:I

    invoke-virtual {p0, v0}, Lcom/tencent/msdk/webview/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mStopBtn:Landroid/widget/ImageButton;

    .line 788
    iget-object v0, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mStopBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 790
    sget v0, Lcom/tencent/msdk/webview/WebViewResID;->back:I

    invoke-virtual {p0, v0}, Lcom/tencent/msdk/webview/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mBackBtn:Landroid/widget/ImageButton;

    .line 791
    iget-object v0, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mBackBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 792
    sget v0, Lcom/tencent/msdk/webview/WebViewResID;->backUnclickable:I

    invoke-virtual {p0, v0}, Lcom/tencent/msdk/webview/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mBackUnclickableBtn:Landroid/widget/ImageButton;

    .line 794
    sget v0, Lcom/tencent/msdk/webview/WebViewResID;->forward:I

    invoke-virtual {p0, v0}, Lcom/tencent/msdk/webview/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mForwardBtn:Landroid/widget/ImageButton;

    .line 795
    iget-object v0, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mForwardBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 796
    sget v0, Lcom/tencent/msdk/webview/WebViewResID;->forwardUnclickable:I

    invoke-virtual {p0, v0}, Lcom/tencent/msdk/webview/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mForwardUnclickableBtn:Landroid/widget/ImageButton;

    .line 798
    sget v0, Lcom/tencent/msdk/webview/WebViewResID;->land_openByQQBrowser:I

    invoke-virtual {p0, v0}, Lcom/tencent/msdk/webview/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mLandOpenQQBrowserBtn:Landroid/view/View;

    .line 799
    iget-object v0, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mLandOpenQQBrowserBtn:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 801
    sget v0, Lcom/tencent/msdk/webview/WebViewResID;->land_more:I

    invoke-virtual {p0, v0}, Lcom/tencent/msdk/webview/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mLandMoreBtn:Landroid/view/View;

    .line 802
    iget-object v0, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mLandMoreBtn:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 805
    sget v0, Lcom/tencent/msdk/webview/WebViewResID;->return_app:I

    invoke-virtual {p0, v0}, Lcom/tencent/msdk/webview/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mReturnAppBtn:Landroid/view/View;

    .line 806
    iget-object v0, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mReturnAppBtn:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 809
    sget v0, Lcom/tencent/msdk/webview/WebViewResID;->openByQQBrowser:I

    invoke-virtual {p0, v0}, Lcom/tencent/msdk/webview/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mOpenQQBrowserBtn:Landroid/widget/ImageButton;

    .line 810
    iget-object v0, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mOpenQQBrowserBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 813
    sget v0, Lcom/tencent/msdk/webview/WebViewResID;->more:I

    invoke-virtual {p0, v0}, Lcom/tencent/msdk/webview/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mMoreBtn:Landroid/widget/ImageButton;

    .line 814
    iget-object v0, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mMoreBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 815
    return-void
.end method

.method private initMoreDlg()V
    .locals 4

    .prologue
    .line 1065
    iget-object v2, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mMoreDlg:Landroid/app/Dialog;

    if-nez v2, :cond_0

    .line 1067
    new-instance v2, Landroid/app/Dialog;

    sget v3, Lcom/tencent/msdk/webview/WebViewResID;->style_SheetDialogTheme:I

    invoke-direct {v2, p0, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mMoreDlg:Landroid/app/Dialog;

    .line 1069
    iget-object v2, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mMoreDlg:Landroid/app/Dialog;

    sget v3, Lcom/tencent/msdk/webview/WebViewResID;->layout_sheet_dlg:I

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setContentView(I)V

    .line 1070
    iget-object v2, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mMoreDlg:Landroid/app/Dialog;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 1073
    iget-object v2, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mMoreDlg:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 1074
    .local v1, "window":Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1075
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const/4 v2, -0x1

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1076
    const/16 v2, 0x50

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1077
    const/high16 v2, 0x3f000000    # 0.5f

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 1078
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1081
    sget v2, Lcom/tencent/msdk/webview/WebViewResID;->style_SheetDialogAnimation:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 1082
    sget v2, Lcom/tencent/msdk/webview/WebViewResID;->color_transparent:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 1083
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 1085
    iget-object v2, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mMoreDlg:Landroid/app/Dialog;

    sget v3, Lcom/tencent/msdk/webview/WebViewResID;->dlg_gridview:I

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/GridView;

    iput-object v2, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mGridView:Landroid/widget/GridView;

    .line 1086
    invoke-direct {p0}, Lcom/tencent/msdk/webview/WebViewActivity;->initGridView()V

    .line 1088
    iget-object v2, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mMoreDlg:Landroid/app/Dialog;

    sget v3, Lcom/tencent/msdk/webview/WebViewResID;->dlg_btn_cancel:I

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/tencent/msdk/webview/WebViewActivity;->cancelBtn:Landroid/widget/Button;

    .line 1089
    iget-object v2, p0, Lcom/tencent/msdk/webview/WebViewActivity;->cancelBtn:Landroid/widget/Button;

    new-instance v3, Lcom/tencent/msdk/webview/WebViewActivity$6;

    invoke-direct {v3, p0}, Lcom/tencent/msdk/webview/WebViewActivity$6;-><init>(Lcom/tencent/msdk/webview/WebViewActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1099
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v1    # "window":Landroid/view/Window;
    :cond_0
    invoke-direct {p0}, Lcom/tencent/msdk/webview/WebViewActivity;->updateItemArrayList()V

    .line 1100
    return-void
.end method

.method private initToolbarStatus()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 818
    const/4 v2, 0x2

    iget v3, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mWebViewOrientation:I

    if-ne v2, v3, :cond_0

    .line 819
    iget-object v2, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mTitleBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 820
    iget-object v2, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mLandMoreBtn:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 821
    iget-object v2, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mLandOpenQQBrowserBtn:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 827
    :goto_0
    iget-object v2, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mTitleBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 828
    .local v0, "lpTitleBar":Landroid/view/ViewGroup$MarginLayoutParams;
    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 829
    iget-object v2, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mTitleBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 830
    iget-object v2, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mToolBar:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 831
    .local v1, "lpToolBar":Landroid/view/ViewGroup$MarginLayoutParams;
    iput v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 832
    iget-object v2, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mToolBar:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 833
    return-void

    .line 823
    .end local v0    # "lpTitleBar":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v1    # "lpToolBar":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_0
    iget-object v2, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mTitleBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 824
    iget-object v2, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mLandMoreBtn:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 825
    iget-object v2, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mLandOpenQQBrowserBtn:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private initWebView()V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    const/16 v6, 0xb

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 870
    iget-object v2, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    new-instance v3, Lcom/tencent/msdk/webview/WebViewActivity$3;

    invoke-direct {v3, p0}, Lcom/tencent/msdk/webview/WebViewActivity$3;-><init>(Lcom/tencent/msdk/webview/WebViewActivity;)V

    invoke-virtual {v2, v3}, Lcom/tencent/smtt/sdk/WebView;->setWebChromeClient(Lcom/tencent/smtt/sdk/WebChromeClient;)V

    .line 946
    iget-object v2, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    new-instance v3, Lcom/tencent/msdk/webview/WebViewActivity$4;

    invoke-direct {v3, p0}, Lcom/tencent/msdk/webview/WebViewActivity$4;-><init>(Lcom/tencent/msdk/webview/WebViewActivity;)V

    invoke-virtual {v2, v3}, Lcom/tencent/smtt/sdk/WebView;->setWebViewClient(Lcom/tencent/smtt/sdk/WebViewClient;)V

    .line 987
    iget-object v2, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    new-instance v3, Lcom/tencent/msdk/webview/WebViewActivity$5;

    invoke-direct {v3, p0}, Lcom/tencent/msdk/webview/WebViewActivity$5;-><init>(Lcom/tencent/msdk/webview/WebViewActivity;)V

    invoke-virtual {v2, v3}, Lcom/tencent/smtt/sdk/WebView;->setDownloadListener(Lcom/tencent/smtt/sdk/DownloadListener;)V

    .line 1001
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v6, :cond_0

    .line 1002
    iget-object v2, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    const-string v3, "searchBoxJavaBridge_"

    invoke-virtual {v2, v3}, Lcom/tencent/smtt/sdk/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 1003
    iget-object v2, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    const-string v3, "accessibility"

    invoke-virtual {v2, v3}, Lcom/tencent/smtt/sdk/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 1004
    iget-object v2, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    const-string v3, "accessibilityTraversal"

    invoke-virtual {v2, v3}, Lcom/tencent/smtt/sdk/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 1007
    :cond_0
    iget-object v2, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v2}, Lcom/tencent/smtt/sdk/WebView;->getSettings()Lcom/tencent/smtt/sdk/WebSettings;

    move-result-object v1

    .line 1008
    .local v1, "webSetting":Lcom/tencent/smtt/sdk/WebSettings;
    invoke-virtual {v1, v4}, Lcom/tencent/smtt/sdk/WebSettings;->setJavaScriptEnabled(Z)V

    .line 1009
    invoke-virtual {v1, v4}, Lcom/tencent/smtt/sdk/WebSettings;->setAllowFileAccess(Z)V

    .line 1012
    invoke-virtual {v1, v5}, Lcom/tencent/smtt/sdk/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 1013
    invoke-virtual {v1, v5}, Lcom/tencent/smtt/sdk/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 1015
    sget-object v2, Lcom/tencent/smtt/sdk/WebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Lcom/tencent/smtt/sdk/WebSettings$LayoutAlgorithm;

    invoke-virtual {v1, v2}, Lcom/tencent/smtt/sdk/WebSettings;->setLayoutAlgorithm(Lcom/tencent/smtt/sdk/WebSettings$LayoutAlgorithm;)V

    .line 1016
    invoke-virtual {v1, v4}, Lcom/tencent/smtt/sdk/WebSettings;->setSupportZoom(Z)V

    .line 1017
    invoke-virtual {v1, v4}, Lcom/tencent/smtt/sdk/WebSettings;->setBuiltInZoomControls(Z)V

    .line 1018
    invoke-virtual {v1, v4}, Lcom/tencent/smtt/sdk/WebSettings;->setUseWideViewPort(Z)V

    .line 1019
    invoke-virtual {v1, v5}, Lcom/tencent/smtt/sdk/WebSettings;->setSupportMultipleWindows(Z)V

    .line 1021
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v6, :cond_1

    .line 1022
    invoke-virtual {v1, v5}, Lcom/tencent/smtt/sdk/WebSettings;->setDisplayZoomControls(Z)V

    .line 1025
    :cond_1
    invoke-virtual {v1, v4}, Lcom/tencent/smtt/sdk/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 1026
    invoke-virtual {v1, v4}, Lcom/tencent/smtt/sdk/WebSettings;->setAppCacheEnabled(Z)V

    .line 1027
    invoke-virtual {v1, v4}, Lcom/tencent/smtt/sdk/WebSettings;->setDatabaseEnabled(Z)V

    .line 1028
    invoke-virtual {v1, v4}, Lcom/tencent/smtt/sdk/WebSettings;->setDomStorageEnabled(Z)V

    .line 1029
    invoke-virtual {v1, v4}, Lcom/tencent/smtt/sdk/WebSettings;->setGeolocationEnabled(Z)V

    .line 1030
    const-wide v2, 0x7fffffffffffffffL

    invoke-virtual {v1, v2, v3}, Lcom/tencent/smtt/sdk/WebSettings;->setAppCacheMaxSize(J)V

    .line 1031
    const-string v2, "appcache"

    invoke-virtual {p0, v2, v5}, Lcom/tencent/msdk/webview/WebViewActivity;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/smtt/sdk/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    .line 1032
    const-string v2, "databases"

    invoke-virtual {p0, v2, v5}, Lcom/tencent/msdk/webview/WebViewActivity;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/smtt/sdk/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    .line 1033
    const-string v2, "geolocation"

    invoke-virtual {p0, v2, v5}, Lcom/tencent/msdk/webview/WebViewActivity;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/smtt/sdk/WebSettings;->setGeolocationDatabasePath(Ljava/lang/String;)V

    .line 1034
    sget-object v2, Lcom/tencent/smtt/sdk/WebSettings$PluginState;->ON_DEMAND:Lcom/tencent/smtt/sdk/WebSettings$PluginState;

    invoke-virtual {v1, v2}, Lcom/tencent/smtt/sdk/WebSettings;->setPluginState(Lcom/tencent/smtt/sdk/WebSettings$PluginState;)V

    .line 1035
    sget-object v2, Lcom/tencent/smtt/sdk/WebSettings$RenderPriority;->HIGH:Lcom/tencent/smtt/sdk/WebSettings$RenderPriority;

    invoke-virtual {v1, v2}, Lcom/tencent/smtt/sdk/WebSettings;->setRenderPriority(Lcom/tencent/smtt/sdk/WebSettings$RenderPriority;)V

    .line 1036
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/tencent/smtt/sdk/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " MSDK/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1037
    invoke-static {}, Lcom/tencent/msdk/framework/MSDKEnv;->getInstance()Lcom/tencent/msdk/framework/MSDKEnv;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/msdk/framework/MSDKEnv;->getMSDKVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1036
    invoke-virtual {v1, v2}, Lcom/tencent/smtt/sdk/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 1039
    invoke-static {p0}, Lcom/tencent/smtt/sdk/CookieSyncManager;->createInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/CookieSyncManager;

    .line 1040
    invoke-static {}, Lcom/tencent/smtt/sdk/CookieSyncManager;->getInstance()Lcom/tencent/smtt/sdk/CookieSyncManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/smtt/sdk/CookieSyncManager;->sync()V

    .line 1042
    const-string v2, "[MSDK WebViewActivity]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tbs useragent : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/tencent/smtt/sdk/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1046
    .local v0, "tbsVersion":Ljava/lang/String;
    iget-object v2, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v2}, Lcom/tencent/smtt/sdk/WebView;->getX5WebViewExtension()Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewExtension;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1047
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Using Tbs webview core. TbsCoreVersion:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcom/tencent/smtt/sdk/WebView;->getTbsCoreVersion(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "TbsSDKVersion:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1048
    invoke-static {p0}, Lcom/tencent/smtt/sdk/WebView;->getTbsSDKVersion(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1052
    :goto_0
    invoke-direct {p0, v0}, Lcom/tencent/msdk/webview/WebViewActivity;->sendReportTbsVersion(Ljava/lang/String;)V

    .line 1053
    return-void

    .line 1050
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Using System webview core."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private loadUrl()V
    .locals 2

    .prologue
    .line 1056
    iget-object v0, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mOriginalUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1057
    const-string v0, "[MSDK WebViewActivity]"

    const-string v1, "mOriginalUrl is empty!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    :goto_0
    return-void

    .line 1060
    :cond_0
    iget-object v0, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    iget-object v1, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mOriginalUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private openByQQBrowser()V
    .locals 4

    .prologue
    .line 1481
    invoke-direct {p0}, Lcom/tencent/msdk/webview/WebViewActivity;->getCurrentUrl()Ljava/lang/String;

    move-result-object v1

    .line 1482
    .local v1, "url":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 1483
    const-string v2, "[MSDK WebViewActivity]"

    const-string v3, "Shared Url == null!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1495
    :cond_0
    :goto_0
    return-void

    .line 1486
    :cond_1
    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/tencent/msdk/webview/MttLoader;->loadUrl(Landroid/app/Activity;Ljava/lang/String;Ljava/util/HashMap;)I

    move-result v0

    .line 1487
    .local v0, "result":I
    const/4 v2, 0x4

    if-ne v0, v2, :cond_3

    .line 1488
    iget-object v2, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mMoreDlg:Landroid/app/Dialog;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mMoreDlg:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1489
    iget-object v2, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mMoreDlg:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 1491
    :cond_2
    invoke-direct {p0}, Lcom/tencent/msdk/webview/WebViewActivity;->showDownloadQQBrowserDlg()V

    goto :goto_0

    .line 1492
    :cond_3
    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    .line 1493
    const-string v2, "[MSDK WebViewActivity]"

    const-string v3, "qqbrowser version is too low..."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private parseJsMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "jsMessage"    # Ljava/lang/String;

    .prologue
    .line 853
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 854
    .local v2, "json":Lorg/json/JSONObject;
    const-string v3, "MsdkMethod"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 855
    .local v1, "jsMethod":Ljava/lang/String;
    const-string v3, "WGGetWXGameLinePicture"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 856
    invoke-direct {p0}, Lcom/tencent/msdk/webview/WebViewActivity;->WGGetWXGameLinePicture()Ljava/lang/String;

    move-result-object v3

    .line 863
    .end local v1    # "jsMethod":Ljava/lang/String;
    .end local v2    # "json":Lorg/json/JSONObject;
    :goto_0
    return-object v3

    .line 858
    .restart local v1    # "jsMethod":Ljava/lang/String;
    .restart local v2    # "json":Lorg/json/JSONObject;
    :cond_0
    invoke-direct {p0, p1}, Lcom/tencent/msdk/webview/WebViewActivity;->sendJsMessage(Ljava/lang/String;)V

    .line 859
    const-string v3, ""
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 861
    .end local v1    # "jsMethod":Ljava/lang/String;
    .end local v2    # "json":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 862
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 863
    const-string v3, ""

    goto :goto_0
.end method

.method private sendCloseEvent()V
    .locals 4

    .prologue
    .line 220
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 221
    .local v1, "json":Lorg/json/JSONObject;
    const-string v2, "req_type"

    const-string/jumbo v3, "webview_close"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 222
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/tencent/msdk/webview/WebViewActivity;->sendIPCMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    .end local v1    # "json":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 223
    :catch_0
    move-exception v0

    .line 224
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private sendIPCMessage(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 172
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tencent/msdk/webview/JumpShareActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 173
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "view_ipc_message"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    invoke-virtual {p0, v0}, Lcom/tencent/msdk/webview/WebViewActivity;->startActivity(Landroid/content/Intent;)V

    .line 175
    return-void
.end method

.method private sendJsMessage(Ljava/lang/String;)V
    .locals 11
    .param p1, "jsMessage"    # Ljava/lang/String;

    .prologue
    .line 285
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 286
    .local v5, "json":Lorg/json/JSONObject;
    const-string v8, "req_type"

    const-string v9, "javascript_method"

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 288
    const-string v8, "MsdkMethod"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 289
    .local v6, "msdkMethod":Ljava/lang/String;
    const-string v8, "[MSDK WebViewActivity]"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "MsdkMethod from js is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    const-string v8, "WGSendToQQ"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "WGSendToQQWithPhoto"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 291
    :cond_0
    const/4 v4, 0x0

    .line 292
    .local v4, "imgUrl":Ljava/lang/String;
    const-string v8, "imgUrl"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 293
    const-string v8, "imgUrl"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 295
    :cond_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 296
    const/4 v1, 0x0

    .line 297
    .local v1, "imgData":Ljava/lang/String;
    const-string v8, "imgData"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 298
    const-string v8, "imgData"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 300
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 301
    invoke-direct {p0}, Lcom/tencent/msdk/webview/WebViewActivity;->getWebViewImagePath()Ljava/lang/String;

    move-result-object v4

    .line 302
    const-string v8, "[MSDK WebViewActivity]"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "screen capture path is:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    .end local v1    # "imgData":Ljava/lang/String;
    :goto_0
    const-string v8, "imgUrl"

    invoke-virtual {v5, v8, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 364
    .end local v4    # "imgUrl":Ljava/lang/String;
    :cond_3
    :goto_1
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/tencent/msdk/webview/WebViewActivity;->sendIPCMessage(Ljava/lang/String;)V

    .line 368
    .end local v5    # "json":Lorg/json/JSONObject;
    .end local v6    # "msdkMethod":Ljava/lang/String;
    :goto_2
    return-void

    .line 304
    .restart local v1    # "imgData":Ljava/lang/String;
    .restart local v4    # "imgUrl":Ljava/lang/String;
    .restart local v5    # "json":Lorg/json/JSONObject;
    .restart local v6    # "msdkMethod":Ljava/lang/String;
    :cond_4
    invoke-direct {p0, v1}, Lcom/tencent/msdk/webview/WebViewActivity;->getJsImgDataPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 305
    const-string v8, "[MSDK WebViewActivity]"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "data to path is:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    const-string v8, "imgData"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 365
    .end local v1    # "imgData":Ljava/lang/String;
    .end local v4    # "imgUrl":Ljava/lang/String;
    .end local v5    # "json":Lorg/json/JSONObject;
    .end local v6    # "msdkMethod":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 366
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    .line 310
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v4    # "imgUrl":Ljava/lang/String;
    .restart local v5    # "json":Lorg/json/JSONObject;
    .restart local v6    # "msdkMethod":Ljava/lang/String;
    :cond_5
    :try_start_1
    const-string v8, "[MSDK WebViewActivity]"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "web path is:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 313
    .end local v4    # "imgUrl":Ljava/lang/String;
    :cond_6
    const-string v8, "WGSendToWeixinWithMusic"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    const-string v8, "WGSendToWeiXinWithUrl"

    .line 314
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    const-string v8, "WGSendToWeixin"

    .line 315
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 316
    :cond_7
    const-string v3, ""

    .line 317
    .local v3, "imgStr":Ljava/lang/String;
    const-string v2, ""

    .line 318
    .local v2, "imgPath":Ljava/lang/String;
    const-string v8, "imgData"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 319
    const-string v8, "imgData"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 320
    .restart local v1    # "imgData":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/tencent/msdk/webview/WebViewActivity;->getJsImgDataPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 322
    const-string v8, "[MSDK WebViewActivity]"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "img path is:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    const-string v8, "imgData"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 327
    .end local v1    # "imgData":Ljava/lang/String;
    :cond_8
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 328
    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lcom/tencent/msdk/webview/WebViewActivity;->getWebViewImageData(Z)[B

    move-result-object v1

    .line 329
    .local v1, "imgData":[B
    if-eqz v1, :cond_9

    .line 330
    invoke-static {v1}, Lcom/tencent/msdk/tools/Base64Util;->encode([B)Ljava/lang/String;

    move-result-object v3

    .line 332
    :cond_9
    const-string/jumbo v8, "webview_image_data_string"

    invoke-virtual {v5, v8, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_1

    .line 334
    .end local v1    # "imgData":[B
    :cond_a
    const-string v8, "imgFilePath"

    invoke-virtual {v5, v8, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_1

    .line 336
    .end local v2    # "imgPath":Ljava/lang/String;
    .end local v3    # "imgStr":Ljava/lang/String;
    :cond_b
    const-string v8, "WGSendToWeixinWithPhoto"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 337
    const-string v3, ""

    .line 338
    .restart local v3    # "imgStr":Ljava/lang/String;
    const-string v2, ""

    .line 339
    .restart local v2    # "imgPath":Ljava/lang/String;
    const-string v8, "imgData"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 340
    const-string v8, "imgData"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 341
    .local v1, "imgData":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/tencent/msdk/webview/WebViewActivity;->getJsImgDataPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 343
    const-string v8, "[MSDK WebViewActivity]"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "img path is:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    const-string v8, "imgData"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 348
    .end local v1    # "imgData":Ljava/lang/String;
    :cond_c
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 349
    const/4 v8, 0x1

    invoke-direct {p0, v8}, Lcom/tencent/msdk/webview/WebViewActivity;->getWebViewImageData(Z)[B

    move-result-object v1

    .line 350
    .local v1, "imgData":[B
    if-eqz v1, :cond_d

    .line 351
    invoke-static {v1}, Lcom/tencent/msdk/tools/Base64Util;->encode([B)Ljava/lang/String;

    move-result-object v3

    .line 352
    const-string v8, "[MSDK WebViewActivity]"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "data str is:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    :cond_d
    const-string/jumbo v8, "webview_image_data_string"

    invoke-virtual {v5, v8, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_1

    .line 356
    .end local v1    # "imgData":[B
    :cond_e
    const-string v8, "imgFilePath"

    invoke-virtual {v5, v8, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_1

    .line 359
    .end local v2    # "imgPath":Ljava/lang/String;
    .end local v3    # "imgStr":Ljava/lang/String;
    :cond_f
    const-string v8, "WGSendMessageToNative"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 360
    const-string v8, "MsgData"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 361
    .local v7, "msgData":Ljava/lang/String;
    const-string v8, "MsgData"

    invoke-virtual {v5, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method private sendOpenEvent()V
    .locals 4

    .prologue
    .line 210
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 211
    .local v1, "json":Lorg/json/JSONObject;
    const-string v2, "req_type"

    const-string/jumbo v3, "webview_open"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 212
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/tencent/msdk/webview/WebViewActivity;->sendIPCMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    .end local v1    # "json":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 213
    :catch_0
    move-exception v0

    .line 214
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private sendQQShare(Ljava/lang/String;)V
    .locals 8
    .param p1, "itemId"    # Ljava/lang/String;

    .prologue
    .line 229
    iget-object v5, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mTitleStr:Ljava/lang/String;

    .line 230
    .local v5, "title":Ljava/lang/String;
    invoke-direct {p0}, Lcom/tencent/msdk/webview/WebViewActivity;->getWebViewImagePath()Ljava/lang/String;

    move-result-object v1

    .line 231
    .local v1, "imgUrl":Ljava/lang/String;
    iget-object v6, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v6}, Lcom/tencent/smtt/sdk/WebView;->getUrl()Ljava/lang/String;

    move-result-object v4

    .line 232
    .local v4, "targetUrl":Ljava/lang/String;
    sget-object v6, Lcom/tencent/msdk/api/eQQScene;->QQScene_Session:Lcom/tencent/msdk/api/eQQScene;

    invoke-virtual {v6}, Lcom/tencent/msdk/api/eQQScene;->val()I

    move-result v3

    .line 233
    .local v3, "scene":I
    const-string v6, "shareToQQ"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 234
    sget-object v6, Lcom/tencent/msdk/api/eQQScene;->QQScene_Session:Lcom/tencent/msdk/api/eQQScene;

    invoke-virtual {v6}, Lcom/tencent/msdk/api/eQQScene;->val()I

    move-result v3

    .line 241
    :goto_0
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 242
    .local v2, "json":Lorg/json/JSONObject;
    const-string v6, "req_type"

    const-string v7, "button_send_to_qq"

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 243
    const-string/jumbo v6, "webview_title"

    invoke-virtual {v2, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 244
    const-string v6, "imgUrl"

    invoke-virtual {v2, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 245
    const-string/jumbo v6, "webview_target_url"

    invoke-virtual {v2, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 246
    const-string/jumbo v6, "webview_scene"

    invoke-virtual {v2, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 247
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/tencent/msdk/webview/WebViewActivity;->sendIPCMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    .end local v2    # "json":Lorg/json/JSONObject;
    :goto_1
    return-void

    .line 235
    :cond_0
    const-string v6, "shareToQzone"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 236
    sget-object v6, Lcom/tencent/msdk/api/eQQScene;->QQScene_QZone:Lcom/tencent/msdk/api/eQQScene;

    invoke-virtual {v6}, Lcom/tencent/msdk/api/eQQScene;->val()I

    move-result v3

    goto :goto_0

    .line 238
    :cond_1
    const-string v6, "[MSDK WebViewActivity]"

    const-string v7, "sendQQShare with unknown itemId"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 248
    :catch_0
    move-exception v0

    .line 249
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method private sendReportTbsVersion(Ljava/lang/String;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 199
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 200
    .local v1, "json":Lorg/json/JSONObject;
    const-string v2, "req_type"

    const-string v3, "report_tbs_version"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 201
    const-string/jumbo v2, "tbs_version"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 202
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/tencent/msdk/webview/WebViewActivity;->sendIPCMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    .end local v1    # "json":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 203
    :catch_0
    move-exception v0

    .line 204
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private sendWXShare(Ljava/lang/String;)V
    .locals 9
    .param p1, "itemId"    # Ljava/lang/String;

    .prologue
    .line 254
    iget-object v6, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mTitleStr:Ljava/lang/String;

    .line 255
    .local v6, "title":Ljava/lang/String;
    iget-object v7, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v7}, Lcom/tencent/smtt/sdk/WebView;->getUrl()Ljava/lang/String;

    move-result-object v5

    .line 256
    .local v5, "targetUrl":Ljava/lang/String;
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/tencent/msdk/webview/WebViewActivity;->getWebViewImageData(Z)[B

    move-result-object v1

    .line 257
    .local v1, "imgData":[B
    const-string v2, ""

    .line 258
    .local v2, "imgStr":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 259
    invoke-static {v1}, Lcom/tencent/msdk/tools/Base64Util;->encode([B)Ljava/lang/String;

    move-result-object v2

    .line 262
    :cond_0
    sget-object v7, Lcom/tencent/msdk/api/eWechatScene;->WechatScene_Session:Lcom/tencent/msdk/api/eWechatScene;

    invoke-virtual {v7}, Lcom/tencent/msdk/api/eWechatScene;->val()I

    move-result v4

    .line 263
    .local v4, "scene":I
    const-string v7, "shareToWx"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 264
    sget-object v7, Lcom/tencent/msdk/api/eWechatScene;->WechatScene_Session:Lcom/tencent/msdk/api/eWechatScene;

    invoke-virtual {v7}, Lcom/tencent/msdk/api/eWechatScene;->val()I

    move-result v4

    .line 271
    :goto_0
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 272
    .local v3, "json":Lorg/json/JSONObject;
    const-string v7, "req_type"

    const-string v8, "button_send_to_wx"

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 273
    const-string/jumbo v7, "webview_title"

    invoke-virtual {v3, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 274
    const-string/jumbo v7, "webview_target_url"

    invoke-virtual {v3, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 275
    const-string/jumbo v7, "webview_image_data_string"

    invoke-virtual {v3, v7, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 276
    const-string/jumbo v7, "webview_scene"

    invoke-virtual {v3, v7, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 277
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/tencent/msdk/webview/WebViewActivity;->sendIPCMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    .end local v3    # "json":Lorg/json/JSONObject;
    :goto_1
    return-void

    .line 265
    :cond_1
    const-string v7, "shareToWxfriend"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 266
    sget-object v7, Lcom/tencent/msdk/api/eWechatScene;->WechatScene_Timeline:Lcom/tencent/msdk/api/eWechatScene;

    invoke-virtual {v7}, Lcom/tencent/msdk/api/eWechatScene;->val()I

    move-result v4

    goto :goto_0

    .line 268
    :cond_2
    const-string v7, "[MSDK WebViewActivity]"

    const-string v8, "sendWXShare with unknown itemId"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 278
    :catch_0
    move-exception v0

    .line 279
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
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
    .line 1472
    iget-object v0, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mTitleBarHide:Landroid/animation/ValueAnimator;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1473
    iget-object v0, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mTitleBarShow:Landroid/animation/ValueAnimator;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1474
    iget-object v0, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mToolBarHide:Landroid/animation/ValueAnimator;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1475
    iget-object v0, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mToolBarShow:Landroid/animation/ValueAnimator;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1476
    iget-object v0, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mColorHide:Landroid/animation/ValueAnimator;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1477
    iget-object v0, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mColorShow:Landroid/animation/ValueAnimator;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1478
    return-void
.end method

.method private showDownloadQQBrowserDlg()V
    .locals 3

    .prologue
    .line 1510
    iget-object v1, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mDownloadDlg:Landroid/app/Dialog;

    if-nez v1, :cond_0

    .line 1511
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1512
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    sget v1, Lcom/tencent/msdk/webview/WebViewResID;->str_thrdcall_recom_mtt_title:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1513
    sget v1, Lcom/tencent/msdk/webview/WebViewResID;->str_thrdcall_recom_mtt_content:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1514
    sget v1, Lcom/tencent/msdk/webview/WebViewResID;->str_thrdcall_confirm:I

    new-instance v2, Lcom/tencent/msdk/webview/WebViewActivity$13;

    invoke-direct {v2, p0}, Lcom/tencent/msdk/webview/WebViewActivity$13;-><init>(Lcom/tencent/msdk/webview/WebViewActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1528
    sget v1, Lcom/tencent/msdk/webview/WebViewResID;->str_thrdcall_cancel:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1529
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mDownloadDlg:Landroid/app/Dialog;

    .line 1531
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_0
    iget-object v1, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mDownloadDlg:Landroid/app/Dialog;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mDownloadDlg:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1532
    iget-object v1, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mDownloadDlg:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 1534
    :cond_1
    return-void
.end method

.method private updateItemArrayList()V
    .locals 5

    .prologue
    .line 1115
    iget-object v3, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mItemArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1116
    invoke-direct {p0}, Lcom/tencent/msdk/webview/WebViewActivity;->getShareItems()Ljava/util/ArrayList;

    move-result-object v2

    .line 1117
    .local v2, "moreItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tencent/msdk/webview/WebViewActivity$ShareItem;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 1119
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1122
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "icon"

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/msdk/webview/WebViewActivity$ShareItem;

    iget v3, v3, Lcom/tencent/msdk/webview/WebViewActivity$ShareItem;->iconId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1124
    const-string/jumbo v4, "title"

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/msdk/webview/WebViewActivity$ShareItem;

    iget-object v3, v3, Lcom/tencent/msdk/webview/WebViewActivity$ShareItem;->title:Ljava/lang/String;

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1126
    const-string v4, "itemId"

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/msdk/webview/WebViewActivity$ShareItem;

    iget-object v3, v3, Lcom/tencent/msdk/webview/WebViewActivity$ShareItem;->itemId:Ljava/lang/String;

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1127
    iget-object v3, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mItemArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1117
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1129
    .end local v1    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    iget-object v3, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mAdapter:Landroid/widget/SimpleAdapter;

    invoke-virtual {v3}, Landroid/widget/SimpleAdapter;->notifyDataSetChanged()V

    .line 1130
    return-void
.end method


# virtual methods
.method public finishView()V
    .locals 0

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/tencent/msdk/webview/WebViewActivity;->finish()V

    .line 179
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v6, -0x1

    const/4 v2, 0x0

    .line 637
    iget-boolean v3, p0, Lcom/tencent/msdk/webview/WebViewActivity;->isRunCppCode:Z

    if-nez v3, :cond_1

    .line 638
    iget-object v2, p0, Lcom/tencent/msdk/webview/WebViewActivity;->prior:Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;

    invoke-virtual {v2, p1, p2, p3}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->onActivityResult(IILandroid/content/Intent;)V

    .line 669
    :cond_0
    :goto_0
    return-void

    .line 641
    :cond_1
    const-string v3, "[MSDK WebViewActivity]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WVMActivity onActivityResult, requestCode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",resultCode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    if-ne p2, v6, :cond_6

    .line 643
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 645
    :pswitch_0
    iget-object v3, p0, Lcom/tencent/msdk/webview/WebViewActivity;->uploadFileArray:Lcom/tencent/smtt/sdk/ValueCallback;

    if-eqz v3, :cond_3

    .line 646
    if-nez p3, :cond_2

    move-object v1, v2

    .line 647
    .local v1, "results":[Landroid/net/Uri;
    :goto_1
    iget-object v3, p0, Lcom/tencent/msdk/webview/WebViewActivity;->uploadFileArray:Lcom/tencent/smtt/sdk/ValueCallback;

    invoke-interface {v3, v1}, Lcom/tencent/smtt/sdk/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 648
    iput-object v2, p0, Lcom/tencent/msdk/webview/WebViewActivity;->uploadFileArray:Lcom/tencent/smtt/sdk/ValueCallback;

    goto :goto_0

    .line 646
    .end local v1    # "results":[Landroid/net/Uri;
    :cond_2
    const/4 v3, 0x1

    new-array v1, v3, [Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    aput-object v4, v1, v3

    goto :goto_1

    .line 649
    :cond_3
    iget-object v3, p0, Lcom/tencent/msdk/webview/WebViewActivity;->uploadFile:Lcom/tencent/smtt/sdk/ValueCallback;

    if-eqz v3, :cond_0

    .line 650
    if-eqz p3, :cond_4

    if-eq p2, v6, :cond_5

    :cond_4
    move-object v0, v2

    .line 652
    .local v0, "result":Landroid/net/Uri;
    :goto_2
    iget-object v3, p0, Lcom/tencent/msdk/webview/WebViewActivity;->uploadFile:Lcom/tencent/smtt/sdk/ValueCallback;

    invoke-interface {v3, v0}, Lcom/tencent/smtt/sdk/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 653
    iput-object v2, p0, Lcom/tencent/msdk/webview/WebViewActivity;->uploadFile:Lcom/tencent/smtt/sdk/ValueCallback;

    goto :goto_0

    .line 651
    .end local v0    # "result":Landroid/net/Uri;
    :cond_5
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    goto :goto_2

    .line 659
    :cond_6
    if-nez p2, :cond_0

    .line 660
    iget-object v3, p0, Lcom/tencent/msdk/webview/WebViewActivity;->uploadFileArray:Lcom/tencent/smtt/sdk/ValueCallback;

    if-eqz v3, :cond_7

    .line 661
    iget-object v3, p0, Lcom/tencent/msdk/webview/WebViewActivity;->uploadFileArray:Lcom/tencent/smtt/sdk/ValueCallback;

    invoke-interface {v3, v2}, Lcom/tencent/smtt/sdk/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 662
    iput-object v2, p0, Lcom/tencent/msdk/webview/WebViewActivity;->uploadFileArray:Lcom/tencent/smtt/sdk/ValueCallback;

    .line 664
    :cond_7
    iget-object v3, p0, Lcom/tencent/msdk/webview/WebViewActivity;->uploadFile:Lcom/tencent/smtt/sdk/ValueCallback;

    if-eqz v3, :cond_0

    .line 665
    iget-object v3, p0, Lcom/tencent/msdk/webview/WebViewActivity;->uploadFile:Lcom/tencent/smtt/sdk/ValueCallback;

    invoke-interface {v3, v2}, Lcom/tencent/smtt/sdk/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 666
    iput-object v2, p0, Lcom/tencent/msdk/webview/WebViewActivity;->uploadFile:Lcom/tencent/smtt/sdk/ValueCallback;

    goto :goto_0

    .line 643
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 4

    .prologue
    .line 553
    iget-boolean v0, p0, Lcom/tencent/msdk/webview/WebViewActivity;->isRunCppCode:Z

    if-nez v0, :cond_1

    .line 554
    iget-object v0, p0, Lcom/tencent/msdk/webview/WebViewActivity;->prior:Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;

    invoke-virtual {v0}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->onBackPressed()V

    .line 563
    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 564
    return-void

    .line 558
    :cond_1
    iget-object v0, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 560
    iget-object v0, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mDestroyRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 372
    iget-boolean v1, p0, Lcom/tencent/msdk/webview/WebViewActivity;->isRunCppCode:Z

    if-nez v1, :cond_1

    .line 373
    iget-object v1, p0, Lcom/tencent/msdk/webview/WebViewActivity;->prior:Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;

    invoke-virtual {v1, p1}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->onClick(Landroid/view/View;)V

    .line 401
    :cond_0
    :goto_0
    return-void

    .line 376
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 377
    .local v0, "containerId":I
    sget v1, Lcom/tencent/msdk/webview/WebViewResID;->back:I

    if-ne v0, v1, :cond_2

    .line 379
    iget-object v1, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v1}, Lcom/tencent/smtt/sdk/WebView;->canGoBack()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 380
    iget-object v1, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v1}, Lcom/tencent/smtt/sdk/WebView;->goBack()V

    goto :goto_0

    .line 382
    :cond_2
    sget v1, Lcom/tencent/msdk/webview/WebViewResID;->forward:I

    if-ne v0, v1, :cond_3

    .line 384
    iget-object v1, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v1}, Lcom/tencent/smtt/sdk/WebView;->canGoForward()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 385
    iget-object v1, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v1}, Lcom/tencent/smtt/sdk/WebView;->goForward()V

    goto :goto_0

    .line 387
    :cond_3
    sget v1, Lcom/tencent/msdk/webview/WebViewResID;->refresh:I

    if-ne v0, v1, :cond_4

    .line 388
    iget-object v1, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v1}, Lcom/tencent/smtt/sdk/WebView;->reload()V

    goto :goto_0

    .line 389
    :cond_4
    sget v1, Lcom/tencent/msdk/webview/WebViewResID;->stop:I

    if-ne v0, v1, :cond_5

    .line 390
    iget-object v1, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v1}, Lcom/tencent/smtt/sdk/WebView;->stopLoading()V

    goto :goto_0

    .line 391
    :cond_5
    sget v1, Lcom/tencent/msdk/webview/WebViewResID;->return_app:I

    if-ne v0, v1, :cond_6

    .line 392
    invoke-virtual {p0}, Lcom/tencent/msdk/webview/WebViewActivity;->onBackPressed()V

    goto :goto_0

    .line 393
    :cond_6
    sget v1, Lcom/tencent/msdk/webview/WebViewResID;->more:I

    if-eq v0, v1, :cond_7

    sget v1, Lcom/tencent/msdk/webview/WebViewResID;->land_more:I

    if-ne v0, v1, :cond_8

    .line 394
    :cond_7
    invoke-direct {p0}, Lcom/tencent/msdk/webview/WebViewActivity;->initMoreDlg()V

    .line 395
    iget-object v1, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mMoreDlg:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    .line 396
    iget-object v1, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mMoreDlg:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 398
    :cond_8
    sget v1, Lcom/tencent/msdk/webview/WebViewResID;->openByQQBrowser:I

    if-eq v0, v1, :cond_9

    sget v1, Lcom/tencent/msdk/webview/WebViewResID;->land_openByQQBrowser:I

    if-ne v0, v1, :cond_0

    .line 399
    :cond_9
    invoke-direct {p0}, Lcom/tencent/msdk/webview/WebViewActivity;->openByQQBrowser()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v2, 0x2

    const/16 v1, 0x400

    .line 618
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 619
    iget-boolean v0, p0, Lcom/tencent/msdk/webview/WebViewActivity;->isRunCppCode:Z

    if-nez v0, :cond_0

    .line 620
    iget-object v0, p0, Lcom/tencent/msdk/webview/WebViewActivity;->prior:Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;

    invoke-virtual {v0, p1}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 633
    :goto_0
    return-void

    .line 623
    :cond_0
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v0, :cond_1

    .line 624
    iput v2, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mWebViewOrientation:I

    .line 625
    invoke-virtual {p0}, Lcom/tencent/msdk/webview/WebViewActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 627
    invoke-direct {p0}, Lcom/tencent/msdk/webview/WebViewActivity;->initToolbarStatus()V

    goto :goto_0

    .line 629
    :cond_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mWebViewOrientation:I

    .line 630
    invoke-virtual {p0}, Lcom/tencent/msdk/webview/WebViewActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 631
    invoke-direct {p0}, Lcom/tencent/msdk/webview/WebViewActivity;->initToolbarStatus()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v8, 0x400

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 439
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 442
    invoke-virtual {p0}, Lcom/tencent/msdk/webview/WebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "webview_close_x5"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 443
    .local v0, "closeX5":Z
    const-string v3, "[MSDK WebViewActivity]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Close X5 : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    if-eqz v0, :cond_0

    .line 445
    invoke-static {}, Lcom/tencent/smtt/sdk/QbSdk;->forceSysWebView()V

    .line 452
    :cond_0
    iput-boolean v6, p0, Lcom/tencent/msdk/webview/WebViewActivity;->isRunCppCode:Z

    .line 453
    const-string v3, "[MSDK WebViewActivity]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isRunCppCode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/tencent/msdk/webview/WebViewActivity;->isRunCppCode:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    iget-boolean v3, p0, Lcom/tencent/msdk/webview/WebViewActivity;->isRunCppCode:Z

    if-nez v3, :cond_2

    .line 456
    iget-object v3, p0, Lcom/tencent/msdk/webview/WebViewActivity;->prior:Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;

    if-nez v3, :cond_1

    .line 457
    new-instance v3, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;

    invoke-direct {v3, p0}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;-><init>(Landroid/app/Activity;)V

    iput-object v3, p0, Lcom/tencent/msdk/webview/WebViewActivity;->prior:Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;

    .line 459
    :cond_1
    iget-object v3, p0, Lcom/tencent/msdk/webview/WebViewActivity;->prior:Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;

    invoke-virtual {v3, p1}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->onCreate(Landroid/os/Bundle;)V

    .line 534
    :goto_0
    return-void

    .line 464
    :cond_2
    invoke-virtual {p0}, Lcom/tencent/msdk/webview/WebViewActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, -0x3

    invoke-virtual {v3, v4}, Landroid/view/Window;->setFormat(I)V

    .line 465
    invoke-virtual {p0, v6}, Lcom/tencent/msdk/webview/WebViewActivity;->requestWindowFeature(I)Z

    .line 467
    :try_start_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-lt v3, v4, :cond_3

    .line 468
    invoke-virtual {p0}, Lcom/tencent/msdk/webview/WebViewActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/high16 v4, 0x1000000

    const/high16 v5, 0x1000000

    invoke-virtual {v3, v4, v5}, Landroid/view/Window;->setFlags(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 476
    :cond_3
    :goto_1
    invoke-static {p0}, Lcom/tencent/msdk/webview/WebViewResID;->init(Landroid/content/Context;)V

    .line 477
    sget v2, Lcom/tencent/msdk/webview/WebViewResID;->layout_thrdcall_window:I

    .line 478
    .local v2, "layoutId":I
    if-nez v2, :cond_4

    .line 479
    const-string v3, "[MSDK WebViewActivity]"

    const-string v4, "WVMResID.layout_thrdcall_window == 0x00"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    invoke-virtual {p0}, Lcom/tencent/msdk/webview/WebViewActivity;->finish()V

    goto :goto_0

    .line 472
    .end local v2    # "layoutId":I
    :catch_0
    move-exception v1

    .line 473
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 484
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "layoutId":I
    :cond_4
    invoke-virtual {p0}, Lcom/tencent/msdk/webview/WebViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v7, v3, :cond_5

    .line 485
    iput v7, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mWebViewOrientation:I

    .line 486
    invoke-virtual {p0}, Lcom/tencent/msdk/webview/WebViewActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v8, v8}, Landroid/view/Window;->setFlags(II)V

    .line 493
    :goto_2
    invoke-direct {p0}, Lcom/tencent/msdk/webview/WebViewActivity;->hiddenConfig()V

    .line 496
    new-instance v3, Landroid/view/GestureDetector;

    new-instance v4, Lcom/tencent/msdk/webview/WebViewActivity$WebviewGestureListener;

    invoke-direct {v4, p0}, Lcom/tencent/msdk/webview/WebViewActivity$WebviewGestureListener;-><init>(Lcom/tencent/msdk/webview/WebViewActivity;)V

    invoke-direct {v3, p0, v4}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v3, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mDetector:Landroid/view/GestureDetector;

    .line 499
    invoke-virtual {p0}, Lcom/tencent/msdk/webview/WebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/tencent/msdk/webview/WebViewActivity;->handleIntent(Landroid/content/Intent;)V

    .line 500
    sget v3, Lcom/tencent/msdk/webview/WebViewResID;->layout_thrdcall_window:I

    invoke-virtual {p0, v3}, Lcom/tencent/msdk/webview/WebViewActivity;->setContentView(I)V

    .line 503
    sget v3, Lcom/tencent/msdk/webview/WebViewResID;->webview:I

    invoke-virtual {p0, v3}, Lcom/tencent/msdk/webview/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/tencent/smtt/sdk/WebView;

    iput-object v3, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    .line 504
    iget-object v3, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    if-nez v3, :cond_6

    .line 505
    const-string v3, "[MSDK WebViewActivity]"

    const-string v4, "Fail to instance webview!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    invoke-virtual {p0}, Lcom/tencent/msdk/webview/WebViewActivity;->finish()V

    goto :goto_0

    .line 489
    :cond_5
    iput v6, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mWebViewOrientation:I

    goto :goto_2

    .line 509
    :cond_6
    iget-object v3, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    new-instance v4, Lcom/tencent/msdk/webview/WebViewActivity$1;

    invoke-direct {v4, p0}, Lcom/tencent/msdk/webview/WebViewActivity$1;-><init>(Lcom/tencent/msdk/webview/WebViewActivity;)V

    invoke-virtual {v3, v4}, Lcom/tencent/smtt/sdk/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 518
    invoke-direct {p0}, Lcom/tencent/msdk/webview/WebViewActivity;->initWebView()V

    .line 522
    invoke-direct {p0}, Lcom/tencent/msdk/webview/WebViewActivity;->loadUrl()V

    .line 524
    invoke-direct {p0}, Lcom/tencent/msdk/webview/WebViewActivity;->initLayout()V

    .line 526
    invoke-direct {p0}, Lcom/tencent/msdk/webview/WebViewActivity;->initToolbarStatus()V

    .line 528
    invoke-direct {p0}, Lcom/tencent/msdk/webview/WebViewActivity;->changeBackForwordBtnState()V

    .line 530
    invoke-direct {p0}, Lcom/tencent/msdk/webview/WebViewActivity;->initAnimation()V

    .line 531
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mHandler:Landroid/os/Handler;

    .line 533
    invoke-direct {p0}, Lcom/tencent/msdk/webview/WebViewActivity;->sendOpenEvent()V

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 577
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 578
    iget-boolean v0, p0, Lcom/tencent/msdk/webview/WebViewActivity;->isRunCppCode:Z

    if-nez v0, :cond_1

    .line 579
    iget-object v0, p0, Lcom/tencent/msdk/webview/WebViewActivity;->prior:Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;

    invoke-virtual {v0}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->onDestroy()V

    .line 614
    :cond_0
    :goto_0
    return-void

    .line 583
    :cond_1
    const-string v0, "[MSDK WebViewActivity]"

    const-string/jumbo v1, "webview will be destroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    invoke-direct {p0}, Lcom/tencent/msdk/webview/WebViewActivity;->sendCloseEvent()V

    .line 586
    iget-object v0, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 587
    iget-object v0, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mDestroyRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 589
    :cond_2
    iget-object v0, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    if-eqz v0, :cond_4

    .line 590
    iget-object v0, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebView;->removeAllViews()V

    .line 591
    iget-object v0, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mParentLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    .line 592
    iget-object v0, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mParentLayout:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 594
    :cond_3
    iget-object v0, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebView;->destroy()V

    .line 597
    :cond_4
    iget-object v0, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mMoreDlg:Landroid/app/Dialog;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mMoreDlg:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 598
    iget-object v0, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mMoreDlg:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 599
    iput-object v2, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mMoreDlg:Landroid/app/Dialog;

    .line 602
    :cond_5
    iget-object v0, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mDownloadDlg:Landroid/app/Dialog;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mDownloadDlg:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 603
    iget-object v0, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mDownloadDlg:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 604
    iput-object v2, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mDownloadDlg:Landroid/app/Dialog;

    .line 607
    :cond_6
    iput-object v2, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mHandler:Landroid/os/Handler;

    .line 608
    invoke-direct {p0}, Lcom/tencent/msdk/webview/WebViewActivity;->deleteWxGamelinePicture()V

    .line 610
    invoke-virtual {p0}, Lcom/tencent/msdk/webview/WebViewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/msdk/config/ConfigManager;->killWebViewProcess(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 611
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 12
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
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
    .line 405
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-boolean v0, p0, Lcom/tencent/msdk/webview/WebViewActivity;->isRunCppCode:Z

    if-nez v0, :cond_1

    .line 406
    iget-object v0, p0, Lcom/tencent/msdk/webview/WebViewActivity;->prior:Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide/from16 v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 435
    :cond_0
    :goto_0
    return-void

    .line 409
    :cond_1
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/HashMap;

    .line 410
    .local v8, "item":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "itemId"

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 411
    .local v9, "itemId":Ljava/lang/String;
    const-string v0, "openByOtherBrowser"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 412
    invoke-direct {p0}, Lcom/tencent/msdk/webview/WebViewActivity;->getCurrentUrl()Ljava/lang/String;

    move-result-object v11

    .line 413
    .local v11, "url":Ljava/lang/String;
    if-nez v11, :cond_2

    .line 414
    const-string v0, "[MSDK WebViewActivity]"

    const-string v1, "Shared Url == null!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 417
    :cond_2
    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 418
    .local v10, "uri":Landroid/net/Uri;
    new-instance v7, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {v7, v0, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 420
    .local v7, "intent":Landroid/content/Intent;
    :try_start_0
    invoke-virtual {p0, v7}, Lcom/tencent/msdk/webview/WebViewActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 432
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v10    # "uri":Landroid/net/Uri;
    .end local v11    # "url":Ljava/lang/String;
    :goto_1
    iget-object v0, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mMoreDlg:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mMoreDlg:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 433
    iget-object v0, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mMoreDlg:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 421
    .restart local v7    # "intent":Landroid/content/Intent;
    .restart local v10    # "uri":Landroid/net/Uri;
    .restart local v11    # "url":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 422
    .local v6, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v6}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 424
    .end local v6    # "e":Landroid/content/ActivityNotFoundException;
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v10    # "uri":Landroid/net/Uri;
    .end local v11    # "url":Ljava/lang/String;
    :cond_3
    const-string v0, "openByQQBrowser"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 425
    invoke-direct {p0}, Lcom/tencent/msdk/webview/WebViewActivity;->openByQQBrowser()V

    goto :goto_1

    .line 426
    :cond_4
    const-string v0, "shareToQQ"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "shareToQzone"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 427
    :cond_5
    invoke-direct {p0, v9}, Lcom/tencent/msdk/webview/WebViewActivity;->sendQQShare(Ljava/lang/String;)V

    goto :goto_1

    .line 429
    :cond_6
    invoke-direct {p0, v9}, Lcom/tencent/msdk/webview/WebViewActivity;->sendWXShare(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 538
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 539
    iget-boolean v0, p0, Lcom/tencent/msdk/webview/WebViewActivity;->isRunCppCode:Z

    if-nez v0, :cond_1

    .line 540
    iget-object v0, p0, Lcom/tencent/msdk/webview/WebViewActivity;->prior:Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;

    invoke-virtual {v0, p1}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->onNewIntent(Landroid/content/Intent;)V

    .line 549
    :cond_0
    :goto_0
    return-void

    .line 543
    :cond_1
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    if-eqz v0, :cond_0

    .line 547
    invoke-direct {p0, p1}, Lcom/tencent/msdk/webview/WebViewActivity;->handleIntent(Landroid/content/Intent;)V

    .line 548
    invoke-direct {p0}, Lcom/tencent/msdk/webview/WebViewActivity;->loadUrl()V

    goto :goto_0
.end method

.method public recvEvent(Ljava/lang/String;)V
    .locals 7
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 182
    const-string v4, "[MSDK WebViewActivity]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WebviewActivity receive : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 185
    .local v2, "json":Lorg/json/JSONObject;
    const-string v4, "req_type"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 186
    .local v3, "reqType":Ljava/lang/String;
    const-string v4, "set_fullscreen"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 187
    const-string v4, "isFullScreen"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 188
    .local v1, "isFullScreen":Z
    invoke-virtual {p0, v1}, Lcom/tencent/msdk/webview/WebViewActivity;->setFullScreen(Z)V

    .line 195
    .end local v1    # "isFullScreen":Z
    .end local v2    # "json":Lorg/json/JSONObject;
    .end local v3    # "reqType":Ljava/lang/String;
    :goto_0
    return-void

    .line 190
    .restart local v2    # "json":Lorg/json/JSONObject;
    .restart local v3    # "reqType":Ljava/lang/String;
    :cond_0
    const-string v4, "[MSDK WebViewActivity]"

    const-string v5, "Receive unknown request type!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 192
    .end local v2    # "json":Lorg/json/JSONObject;
    .end local v3    # "reqType":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 193
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public setFullScreen(Z)V
    .locals 5
    .param p1, "isFullScreen"    # Z

    .prologue
    const/16 v4, 0x200

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 672
    iget-boolean v1, p0, Lcom/tencent/msdk/webview/WebViewActivity;->isRunCppCode:Z

    if-nez v1, :cond_1

    .line 673
    iget-object v1, p0, Lcom/tencent/msdk/webview/WebViewActivity;->prior:Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;

    invoke-virtual {v1, p1}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->setFullScreen(Z)V

    .line 698
    :cond_0
    :goto_0
    return-void

    .line 677
    :cond_1
    iget-boolean v1, p0, Lcom/tencent/msdk/webview/WebViewActivity;->isFullScreen:Z

    if-eq v1, p1, :cond_0

    .line 680
    invoke-virtual {p0}, Lcom/tencent/msdk/webview/WebViewActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 681
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    if-eqz p1, :cond_2

    .line 682
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x400

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 683
    invoke-virtual {p0}, Lcom/tencent/msdk/webview/WebViewActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 684
    invoke-virtual {p0}, Lcom/tencent/msdk/webview/WebViewActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/Window;->clearFlags(I)V

    .line 686
    iget-object v1, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mTitleBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 687
    iget-object v1, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mToolBar:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 697
    :goto_1
    iput-boolean p1, p0, Lcom/tencent/msdk/webview/WebViewActivity;->isFullScreen:Z

    goto :goto_0

    .line 689
    :cond_2
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x400

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 691
    invoke-virtual {p0}, Lcom/tencent/msdk/webview/WebViewActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 692
    invoke-virtual {p0}, Lcom/tencent/msdk/webview/WebViewActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/Window;->addFlags(I)V

    .line 693
    iget-object v1, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mTitleBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 694
    iget-object v1, p0, Lcom/tencent/msdk/webview/WebViewActivity;->mToolBar:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 695
    invoke-direct {p0}, Lcom/tencent/msdk/webview/WebViewActivity;->initToolbarStatus()V

    goto :goto_1
.end method
