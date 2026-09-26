.class public Lcom/netease/unisdk/gmbridge/view/FloatWindow;
.super Ljava/lang/Object;
.source "FloatWindow.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "gm_bridge FloatWindow"


# instance fields
.field private mAddExpandLayoutFlag:Z

.field private mAutoHideRunnable:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field private mExpandLayout:Lcom/netease/unisdk/gmbridge/view/ExpandLayout;

.field private mFloatIconTouchListener:Landroid/view/View$OnTouchListener;

.field private mGravity:I

.field private mIconDrawableId:I

.field private mIconPressDrawableId:I

.field private mIconView:Landroid/widget/ImageView;

.field private volatile mLoadBtnsFlag:Z

.field private mRedIv:Landroid/widget/ImageView;

.field private mShowing:Z

.field private mWindowManager:Landroid/view/WindowManager;

.field private mWindowParams:Landroid/view/WindowManager$LayoutParams;

.field private mWindowView:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "gravity"    # I

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Lcom/netease/unisdk/gmbridge/view/FloatWindow$1;

    invoke-direct {v0, p0}, Lcom/netease/unisdk/gmbridge/view/FloatWindow$1;-><init>(Lcom/netease/unisdk/gmbridge/view/FloatWindow;)V

    iput-object v0, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->mAutoHideRunnable:Ljava/lang/Runnable;

    .line 54
    new-instance v0, Lcom/netease/unisdk/gmbridge/view/FloatWindow$2;

    invoke-direct {v0, p0}, Lcom/netease/unisdk/gmbridge/view/FloatWindow$2;-><init>(Lcom/netease/unisdk/gmbridge/view/FloatWindow;)V

    iput-object v0, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->mFloatIconTouchListener:Landroid/view/View$OnTouchListener;

    .line 110
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->mContext:Landroid/content/Context;

    .line 111
    iput p2, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->mGravity:I

    .line 112
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 113
    return-void
.end method

.method static synthetic access$000(Lcom/netease/unisdk/gmbridge/view/FloatWindow;)Landroid/view/WindowManager$LayoutParams;
    .locals 1
    .param p0, "x0"    # Lcom/netease/unisdk/gmbridge/view/FloatWindow;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method static synthetic access$100(Lcom/netease/unisdk/gmbridge/view/FloatWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/netease/unisdk/gmbridge/view/FloatWindow;

    .prologue
    .line 25
    iget v0, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->mIconPressDrawableId:I

    return v0
.end method

.method static synthetic access$1002(Lcom/netease/unisdk/gmbridge/view/FloatWindow;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/netease/unisdk/gmbridge/view/FloatWindow;
    .param p1, "x1"    # Z

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->mLoadBtnsFlag:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/netease/unisdk/gmbridge/view/FloatWindow;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/netease/unisdk/gmbridge/view/FloatWindow;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->addExpandLayout(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$200(Lcom/netease/unisdk/gmbridge/view/FloatWindow;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/netease/unisdk/gmbridge/view/FloatWindow;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->mIconView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/netease/unisdk/gmbridge/view/FloatWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/netease/unisdk/gmbridge/view/FloatWindow;

    .prologue
    .line 25
    iget v0, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->mIconDrawableId:I

    return v0
.end method

.method static synthetic access$400(Lcom/netease/unisdk/gmbridge/view/FloatWindow;)V
    .locals 0
    .param p0, "x0"    # Lcom/netease/unisdk/gmbridge/view/FloatWindow;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->iconClick()V

    return-void
.end method

.method static synthetic access$500(Lcom/netease/unisdk/gmbridge/view/FloatWindow;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/netease/unisdk/gmbridge/view/FloatWindow;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->mAutoHideRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$600(Lcom/netease/unisdk/gmbridge/view/FloatWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/netease/unisdk/gmbridge/view/FloatWindow;

    .prologue
    .line 25
    iget v0, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->mGravity:I

    return v0
.end method

.method static synthetic access$700(Lcom/netease/unisdk/gmbridge/view/FloatWindow;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/netease/unisdk/gmbridge/view/FloatWindow;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->mWindowView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$800(Lcom/netease/unisdk/gmbridge/view/FloatWindow;)Landroid/view/WindowManager;
    .locals 1
    .param p0, "x0"    # Lcom/netease/unisdk/gmbridge/view/FloatWindow;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/netease/unisdk/gmbridge/view/FloatWindow;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/netease/unisdk/gmbridge/view/FloatWindow;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private addExpandLayout(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netease/unisdk/gmbridge/floatwindow/BtnInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 172
    .local p1, "btnInfos":Ljava/util/List;, "Ljava/util/List<Lcom/netease/unisdk/gmbridge/floatwindow/BtnInfo;>;"
    iget-boolean v0, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->mAddExpandLayoutFlag:Z

    if-eqz v0, :cond_0

    .line 177
    :goto_0
    return-void

    .line 173
    :cond_0
    new-instance v0, Lcom/netease/unisdk/gmbridge/view/ExpandLayout;

    iget-object v1, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/netease/unisdk/gmbridge/view/ExpandLayout;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->mExpandLayout:Lcom/netease/unisdk/gmbridge/view/ExpandLayout;

    .line 174
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->mWindowView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->mExpandLayout:Lcom/netease/unisdk/gmbridge/view/ExpandLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 175
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->mLoadBtnsFlag:Z

    .line 176
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->mAddExpandLayoutFlag:Z

    goto :goto_0
.end method

.method private iconClick()V
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->mExpandLayout:Lcom/netease/unisdk/gmbridge/view/ExpandLayout;

    if-nez v0, :cond_2

    .line 127
    iget-boolean v0, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->mLoadBtnsFlag:Z

    if-eqz v0, :cond_1

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->mLoadBtnsFlag:Z

    .line 132
    new-instance v0, Lcom/netease/unisdk/gmbridge/view/FloatWindow$3;

    invoke-direct {v0, p0}, Lcom/netease/unisdk/gmbridge/view/FloatWindow$3;-><init>(Lcom/netease/unisdk/gmbridge/view/FloatWindow;)V

    invoke-static {v0}, Lcom/netease/unisdk/gmbridge/task/TaskExecutor;->executeTask(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 160
    :cond_2
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->mExpandLayout:Lcom/netease/unisdk/gmbridge/view/ExpandLayout;

    invoke-virtual {v0}, Lcom/netease/unisdk/gmbridge/view/ExpandLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 161
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->mExpandLayout:Lcom/netease/unisdk/gmbridge/view/ExpandLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/netease/unisdk/gmbridge/view/ExpandLayout;->setVisibility(I)V

    goto :goto_0

    .line 163
    :cond_3
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->mExpandLayout:Lcom/netease/unisdk/gmbridge/view/ExpandLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netease/unisdk/gmbridge/view/ExpandLayout;->setVisibility(I)V

    .line 164
    sget-object v0, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge;->sDataManager:Lcom/netease/unisdk/gmbridge/data/DataManager;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->mExpandLayout:Lcom/netease/unisdk/gmbridge/view/ExpandLayout;

    sget-object v1, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge;->sDataManager:Lcom/netease/unisdk/gmbridge/data/DataManager;

    invoke-virtual {v1}, Lcom/netease/unisdk/gmbridge/data/DataManager;->getRedIds()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/unisdk/gmbridge/view/ExpandLayout;->showRed([Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initLayoutParams()V
    .locals 6

    .prologue
    const/4 v1, -0x2

    .line 180
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v3, 0x2

    const/16 v4, 0x408

    const/4 v5, -0x3

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    .line 187
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->mGravity:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 188
    return-void
.end method

.method private initView()V
    .locals 3

    .prologue
    .line 116
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->mContext:Landroid/content/Context;

    const-string v1, "uni_gm_f_icon"

    invoke-static {v0, v1}, Lcom/netease/unisdk/gmbridge/utils/ResIdReader;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->mIconDrawableId:I

    .line 117
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->mContext:Landroid/content/Context;

    const-string v1, "uni_gm_f_icon_press"

    invoke-static {v0, v1}, Lcom/netease/unisdk/gmbridge/utils/ResIdReader;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->mIconPressDrawableId:I

    .line 118
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->mContext:Landroid/content/Context;

    const-string v2, "uni_gm_float_view"

    invoke-static {v1, v2}, Lcom/netease/unisdk/gmbridge/utils/ResIdReader;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->mWindowView:Landroid/widget/LinearLayout;

    .line 119
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->mWindowView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->mContext:Landroid/content/Context;

    const-string v2, "icon_iv"

    invoke-static {v1, v2}, Lcom/netease/unisdk/gmbridge/utils/ResIdReader;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->mIconView:Landroid/widget/ImageView;

    .line 120
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->mIconView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->mFloatIconTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 121
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->mWindowView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->mContext:Landroid/content/Context;

    const-string v2, "icon_red_iv"

    invoke-static {v1, v2}, Lcom/netease/unisdk/gmbridge/utils/ResIdReader;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->mRedIv:Landroid/widget/ImageView;

    .line 122
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->initLayoutParams()V

    .line 123
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 242
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->mWindowView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 245
    :try_start_0
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->mWindowView:Landroid/widget/LinearLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    :cond_0
    :goto_0
    iput-object v2, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 250
    iput-object v2, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->mWindowView:Landroid/widget/LinearLayout;

    .line 251
    iput-object v2, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    .line 252
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->mShowing:Z

    .line 253
    return-void

    .line 246
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 225
    iget-boolean v0, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->mShowing:Z

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->mWindowView:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 227
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->mShowing:Z

    .line 229
    :cond_0
    return-void
.end method

.method public hideExpandLayout()V
    .locals 2

    .prologue
    .line 236
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->mExpandLayout:Lcom/netease/unisdk/gmbridge/view/ExpandLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->mExpandLayout:Lcom/netease/unisdk/gmbridge/view/ExpandLayout;

    invoke-virtual {v0}, Lcom/netease/unisdk/gmbridge/view/ExpandLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->mExpandLayout:Lcom/netease/unisdk/gmbridge/view/ExpandLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/netease/unisdk/gmbridge/view/ExpandLayout;->setVisibility(I)V

    .line 239
    :cond_0
    return-void
.end method

.method public hideRed()V
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->mRedIv:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 206
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 232
    iget-boolean v0, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->mShowing:Z

    return v0
.end method

.method public show()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 209
    iget-boolean v1, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->mShowing:Z

    if-nez v1, :cond_0

    .line 210
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->mWindowView:Landroid/widget/LinearLayout;

    if-nez v1, :cond_1

    .line 211
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->initView()V

    .line 212
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->mWindowView:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 216
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->mShowing:Z

    .line 217
    sget-object v0, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge;->sDataManager:Lcom/netease/unisdk/gmbridge/data/DataManager;

    .line 218
    .local v0, "dataManager":Lcom/netease/unisdk/gmbridge/data/DataManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netease/unisdk/gmbridge/data/DataManager;->getRedIds()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 219
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->mRedIv:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 222
    .end local v0    # "dataManager":Lcom/netease/unisdk/gmbridge/data/DataManager;
    :cond_0
    return-void

    .line 214
    :cond_1
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->mWindowView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public showRed([Ljava/lang/String;)V
    .locals 2
    .param p1, "menuIds"    # [Ljava/lang/String;

    .prologue
    .line 196
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->mRedIv:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 197
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->mRedIv:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->mExpandLayout:Lcom/netease/unisdk/gmbridge/view/ExpandLayout;

    if-eqz v0, :cond_1

    .line 200
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->mExpandLayout:Lcom/netease/unisdk/gmbridge/view/ExpandLayout;

    invoke-virtual {v0, p1}, Lcom/netease/unisdk/gmbridge/view/ExpandLayout;->showRed([Ljava/lang/String;)V

    .line 202
    :cond_1
    return-void
.end method
