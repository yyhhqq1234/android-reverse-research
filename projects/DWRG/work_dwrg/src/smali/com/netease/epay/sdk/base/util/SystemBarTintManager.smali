.class public Lcom/netease/epay/sdk/base/util/SystemBarTintManager;
.super Ljava/lang/Object;
.source "SystemBarTintManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/epay/sdk/base/util/SystemBarTintManager$SystemBarConfig;
    }
.end annotation


# static fields
.field private static final DEFAULT_TINT_COLOR:I = -0x67000000

.field private static sNavBarOverride:Ljava/lang/String;


# instance fields
.field private final mConfig:Lcom/netease/epay/sdk/base/util/SystemBarTintManager$SystemBarConfig;

.field private mNavBarAvailable:Z

.field private mNavBarTintEnabled:Z

.field private mNavBarTintView:Landroid/view/View;

.field private mStatusBarAvailable:Z

.field private mStatusBarTintEnabled:Z

.field private mStatusBarTintView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 40
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 42
    :try_start_0
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 43
    const-string v1, "get"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 44
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 45
    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "qemu.hw.mainkeys"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/netease/epay/sdk/base/util/SystemBarTintManager;->sNavBarOverride:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :cond_0
    :goto_0
    return-void

    .line 46
    :catch_0
    move-exception v0

    .line 47
    sput-object v5, Lcom/netease/epay/sdk/base/util/SystemBarTintManager;->sNavBarOverride:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 79
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 81
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_1

    .line 83
    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    .line 85
    invoke-virtual {p1, v2}, Landroid/app/Activity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 87
    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/netease/epay/sdk/base/util/SystemBarTintManager;->mStatusBarAvailable:Z

    .line 88
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/netease/epay/sdk/base/util/SystemBarTintManager;->mNavBarAvailable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 94
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 95
    const/high16 v2, 0x4000000

    .line 96
    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    .line 97
    iput-boolean v6, p0, Lcom/netease/epay/sdk/base/util/SystemBarTintManager;->mStatusBarAvailable:Z

    .line 99
    :cond_0
    const/high16 v2, 0x8000000

    .line 100
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    .line 101
    iput-boolean v6, p0, Lcom/netease/epay/sdk/base/util/SystemBarTintManager;->mNavBarAvailable:Z

    .line 105
    :cond_1
    new-instance v1, Lcom/netease/epay/sdk/base/util/SystemBarTintManager$SystemBarConfig;

    iget-boolean v2, p0, Lcom/netease/epay/sdk/base/util/SystemBarTintManager;->mStatusBarAvailable:Z

    iget-boolean v3, p0, Lcom/netease/epay/sdk/base/util/SystemBarTintManager;->mNavBarAvailable:Z

    const/4 v4, 0x0

    invoke-direct {v1, p1, v2, v3, v4}, Lcom/netease/epay/sdk/base/util/SystemBarTintManager$SystemBarConfig;-><init>(Landroid/app/Activity;ZZLcom/netease/epay/sdk/base/util/SystemBarTintManager$1;)V

    iput-object v1, p0, Lcom/netease/epay/sdk/base/util/SystemBarTintManager;->mConfig:Lcom/netease/epay/sdk/base/util/SystemBarTintManager$SystemBarConfig;

    .line 107
    iget-object v1, p0, Lcom/netease/epay/sdk/base/util/SystemBarTintManager;->mConfig:Lcom/netease/epay/sdk/base/util/SystemBarTintManager$SystemBarConfig;

    invoke-virtual {v1}, Lcom/netease/epay/sdk/base/util/SystemBarTintManager$SystemBarConfig;->hasNavigtionBar()Z

    move-result v1

    if-nez v1, :cond_2

    .line 108
    iput-boolean v5, p0, Lcom/netease/epay/sdk/base/util/SystemBarTintManager;->mNavBarAvailable:Z

    .line 111
    :cond_2
    iget-boolean v1, p0, Lcom/netease/epay/sdk/base/util/SystemBarTintManager;->mStatusBarAvailable:Z

    if-eqz v1, :cond_3

    .line 112
    invoke-direct {p0, p1, v0}, Lcom/netease/epay/sdk/base/util/SystemBarTintManager;->setupStatusBarView(Landroid/content/Context;Landroid/view/ViewGroup;)V

    .line 114
    :cond_3
    iget-boolean v1, p0, Lcom/netease/epay/sdk/base/util/SystemBarTintManager;->mNavBarAvailable:Z

    if-eqz v1, :cond_4

    .line 115
    invoke-direct {p0, p1, v0}, Lcom/netease/epay/sdk/base/util/SystemBarTintManager;->setupNavBarView(Landroid/content/Context;Landroid/view/ViewGroup;)V

    .line 118
    :cond_4
    return-void

    .line 90
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    throw v0

    .line 83
    :array_0
    .array-data 4
        0x10103ef
        0x10103f0
    .end array-data
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/netease/epay/sdk/base/util/SystemBarTintManager;->sNavBarOverride:Ljava/lang/String;

    return-object v0
.end method

.method private setNavigationBarAlpha(F)V
    .locals 2
    .param p1, "alpha"    # F
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 279
    iget-boolean v0, p0, Lcom/netease/epay/sdk/base/util/SystemBarTintManager;->mNavBarAvailable:Z

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 280
    iget-object v0, p0, Lcom/netease/epay/sdk/base/util/SystemBarTintManager;->mNavBarTintView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 282
    :cond_0
    return-void
.end method

.method private setNavigationBarTintColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 244
    iget-boolean v0, p0, Lcom/netease/epay/sdk/base/util/SystemBarTintManager;->mNavBarAvailable:Z

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/netease/epay/sdk/base/util/SystemBarTintManager;->mNavBarTintView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 247
    :cond_0
    return-void
.end method

.method private setNavigationBarTintDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 267
    iget-boolean v0, p0, Lcom/netease/epay/sdk/base/util/SystemBarTintManager;->mNavBarAvailable:Z

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/netease/epay/sdk/base/util/SystemBarTintManager;->mNavBarTintView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 270
    :cond_0
    return-void
.end method

.method private setNavigationBarTintResource(I)V
    .locals 1
    .param p1, "res"    # I

    .prologue
    .line 255
    iget-boolean v0, p0, Lcom/netease/epay/sdk/base/util/SystemBarTintManager;->mNavBarAvailable:Z

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/netease/epay/sdk/base/util/SystemBarTintManager;->mNavBarTintView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 258
    :cond_0
    return-void
.end method

.method private setStatusBarAlpha(F)V
    .locals 2
    .param p1, "alpha"    # F
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 233
    iget-boolean v0, p0, Lcom/netease/epay/sdk/base/util/SystemBarTintManager;->mStatusBarAvailable:Z

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 234
    iget-object v0, p0, Lcom/netease/epay/sdk/base/util/SystemBarTintManager;->mStatusBarTintView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 236
    :cond_0
    return-void
.end method

.method private setStatusBarTintDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 221
    iget-boolean v0, p0, Lcom/netease/epay/sdk/base/util/SystemBarTintManager;->mStatusBarAvailable:Z

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/netease/epay/sdk/base/util/SystemBarTintManager;->mStatusBarTintView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 224
    :cond_0
    return-void
.end method

.method private setStatusBarTintResource(I)V
    .locals 1
    .param p1, "res"    # I

    .prologue
    .line 209
    iget-boolean v0, p0, Lcom/netease/epay/sdk/base/util/SystemBarTintManager;->mStatusBarAvailable:Z

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/netease/epay/sdk/base/util/SystemBarTintManager;->mStatusBarTintView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 212
    :cond_0
    return-void
.end method

.method private setupNavBarView(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "decorViewGroup"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v2, -0x1

    .line 325
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netease/epay/sdk/base/util/SystemBarTintManager;->mNavBarTintView:Landroid/view/View;

    .line 327
    iget-object v0, p0, Lcom/netease/epay/sdk/base/util/SystemBarTintManager;->mConfig:Lcom/netease/epay/sdk/base/util/SystemBarTintManager$SystemBarConfig;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/util/SystemBarTintManager$SystemBarConfig;->isNavigationAtBottom()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/netease/epay/sdk/base/util/SystemBarTintManager;->mConfig:Lcom/netease/epay/sdk/base/util/SystemBarTintManager$SystemBarConfig;

    invoke-virtual {v1}, Lcom/netease/epay/sdk/base/util/SystemBarTintManager$SystemBarConfig;->getNavigationBarHeight()I

    move-result v1

    invoke-direct {v0, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 329
    const/16 v1, 0x50

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 334
    :goto_0
    iget-object v1, p0, Lcom/netease/epay/sdk/base/util/SystemBarTintManager;->mNavBarTintView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 335
    iget-object v0, p0, Lcom/netease/epay/sdk/base/util/SystemBarTintManager;->mNavBarTintView:Landroid/view/View;

    const/high16 v1, -0x67000000

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 336
    iget-object v0, p0, Lcom/netease/epay/sdk/base/util/SystemBarTintManager;->mNavBarTintView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 337
    iget-object v0, p0, Lcom/netease/epay/sdk/base/util/SystemBarTintManager;->mNavBarTintView:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 338
    return-void

    .line 331
    :cond_0
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/netease/epay/sdk/base/util/SystemBarTintManager;->mConfig:Lcom/netease/epay/sdk/base/util/SystemBarTintManager$SystemBarConfig;

    invoke-virtual {v1}, Lcom/netease/epay/sdk/base/util/SystemBarTintManager$SystemBarConfig;->getNavigationBarWidth()I

    move-result v1

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 332
    const/4 v1, 0x5

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0
.end method

.method private setupStatusBarView(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "decorViewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 312
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netease/epay/sdk/base/util/SystemBarTintManager;->mStatusBarTintView:Landroid/view/View;

    .line 313
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/netease/epay/sdk/base/util/SystemBarTintManager;->mConfig:Lcom/netease/epay/sdk/base/util/SystemBarTintManager$SystemBarConfig;

    invoke-virtual {v2}, Lcom/netease/epay/sdk/base/util/SystemBarTintManager$SystemBarConfig;->getStatusBarHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 314
    const/16 v1, 0x30

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 315
    iget-boolean v1, p0, Lcom/netease/epay/sdk/base/util/SystemBarTintManager;->mNavBarAvailable:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netease/epay/sdk/base/util/SystemBarTintManager;->mConfig:Lcom/netease/epay/sdk/base/util/SystemBarTintManager$SystemBarConfig;

    invoke-virtual {v1}, Lcom/netease/epay/sdk/base/util/SystemBarTintManager$SystemBarConfig;->isNavigationAtBottom()Z

    move-result v1

    if-nez v1, :cond_0

    .line 316
    iget-object v1, p0, Lcom/netease/epay/sdk/base/util/SystemBarTintManager;->mConfig:Lcom/netease/epay/sdk/base/util/SystemBarTintManager$SystemBarConfig;

    invoke-virtual {v1}, Lcom/netease/epay/sdk/base/util/SystemBarTintManager$SystemBarConfig;->getNavigationBarWidth()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 318
    :cond_0
    iget-object v1, p0, Lcom/netease/epay/sdk/base/util/SystemBarTintManager;->mStatusBarTintView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 319
    iget-object v0, p0, Lcom/netease/epay/sdk/base/util/SystemBarTintManager;->mStatusBarTintView:Landroid/view/View;

    const/high16 v1, -0x67000000

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 320
    iget-object v0, p0, Lcom/netease/epay/sdk/base/util/SystemBarTintManager;->mStatusBarTintView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 321
    iget-object v0, p0, Lcom/netease/epay/sdk/base/util/SystemBarTintManager;->mStatusBarTintView:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 322
    return-void
.end method


# virtual methods
.method public getConfig()Lcom/netease/epay/sdk/base/util/SystemBarTintManager$SystemBarConfig;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/netease/epay/sdk/base/util/SystemBarTintManager;->mConfig:Lcom/netease/epay/sdk/base/util/SystemBarTintManager$SystemBarConfig;

    return-object v0
.end method

.method public isNavBarTintEnabled()Z
    .locals 1

    .prologue
    .line 308
    iget-boolean v0, p0, Lcom/netease/epay/sdk/base/util/SystemBarTintManager;->mNavBarTintEnabled:Z

    return v0
.end method

.method public isStatusBarTintEnabled()Z
    .locals 1

    .prologue
    .line 299
    iget-boolean v0, p0, Lcom/netease/epay/sdk/base/util/SystemBarTintManager;->mStatusBarTintEnabled:Z

    return v0
.end method

.method public setNavigationBarTintEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 146
    iput-boolean p1, p0, Lcom/netease/epay/sdk/base/util/SystemBarTintManager;->mNavBarTintEnabled:Z

    .line 147
    iget-boolean v0, p0, Lcom/netease/epay/sdk/base/util/SystemBarTintManager;->mNavBarAvailable:Z

    if-eqz v0, :cond_0

    .line 148
    iget-object v1, p0, Lcom/netease/epay/sdk/base/util/SystemBarTintManager;->mNavBarTintView:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 150
    :cond_0
    return-void

    .line 148
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setStatusBarTintColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 198
    iget-boolean v0, p0, Lcom/netease/epay/sdk/base/util/SystemBarTintManager;->mStatusBarAvailable:Z

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/netease/epay/sdk/base/util/SystemBarTintManager;->mStatusBarTintView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 201
    :cond_0
    return-void
.end method

.method public setStatusBarTintEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 130
    iput-boolean p1, p0, Lcom/netease/epay/sdk/base/util/SystemBarTintManager;->mStatusBarTintEnabled:Z

    .line 131
    iget-boolean v0, p0, Lcom/netease/epay/sdk/base/util/SystemBarTintManager;->mStatusBarAvailable:Z

    if-eqz v0, :cond_0

    .line 132
    iget-object v1, p0, Lcom/netease/epay/sdk/base/util/SystemBarTintManager;->mStatusBarTintView:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 134
    :cond_0
    return-void

    .line 132
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setTintAlpha(F)V
    .locals 0
    .param p1, "alpha"    # F

    .prologue
    .line 188
    invoke-direct {p0, p1}, Lcom/netease/epay/sdk/base/util/SystemBarTintManager;->setStatusBarAlpha(F)V

    .line 189
    invoke-direct {p0, p1}, Lcom/netease/epay/sdk/base/util/SystemBarTintManager;->setNavigationBarAlpha(F)V

    .line 190
    return-void
.end method

.method public setTintColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 158
    invoke-virtual {p0, p1}, Lcom/netease/epay/sdk/base/util/SystemBarTintManager;->setStatusBarTintColor(I)V

    .line 159
    invoke-direct {p0, p1}, Lcom/netease/epay/sdk/base/util/SystemBarTintManager;->setNavigationBarTintColor(I)V

    .line 160
    return-void
.end method

.method public setTintDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 178
    invoke-direct {p0, p1}, Lcom/netease/epay/sdk/base/util/SystemBarTintManager;->setStatusBarTintDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 179
    invoke-direct {p0, p1}, Lcom/netease/epay/sdk/base/util/SystemBarTintManager;->setNavigationBarTintDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 180
    return-void
.end method

.method public setTintResource(I)V
    .locals 0
    .param p1, "res"    # I

    .prologue
    .line 168
    invoke-direct {p0, p1}, Lcom/netease/epay/sdk/base/util/SystemBarTintManager;->setStatusBarTintResource(I)V

    .line 169
    invoke-direct {p0, p1}, Lcom/netease/epay/sdk/base/util/SystemBarTintManager;->setNavigationBarTintResource(I)V

    .line 170
    return-void
.end method
