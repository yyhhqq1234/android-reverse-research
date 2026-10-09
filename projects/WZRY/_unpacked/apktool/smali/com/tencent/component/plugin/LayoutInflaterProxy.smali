.class final Lcom/tencent/component/plugin/LayoutInflaterProxy;
.super Landroid/view/LayoutInflater;
.source "LayoutInflaterProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/component/plugin/LayoutInflaterProxy$InflaterImpl;
    }
.end annotation


# instance fields
.field private mInflaterImpl:Lcom/tencent/component/plugin/LayoutInflaterProxy$InflaterImpl;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tencent/component/plugin/LayoutInflaterProxy;-><init>(Landroid/content/Context;Lcom/tencent/component/plugin/LayoutInflaterProxy$InflaterImpl;)V

    .line 26
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/tencent/component/plugin/LayoutInflaterProxy$InflaterImpl;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "inflater"    # Lcom/tencent/component/plugin/LayoutInflaterProxy$InflaterImpl;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/view/LayoutInflater;-><init>(Landroid/content/Context;)V

    .line 30
    invoke-virtual {p0, p2}, Lcom/tencent/component/plugin/LayoutInflaterProxy;->setInflaterImpl(Lcom/tencent/component/plugin/LayoutInflaterProxy$InflaterImpl;)V

    .line 31
    invoke-direct {p0}, Lcom/tencent/component/plugin/LayoutInflaterProxy;->init()V

    .line 32
    return-void
.end method

.method static synthetic access$000(Lcom/tencent/component/plugin/LayoutInflaterProxy;Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/component/plugin/LayoutInflaterProxy;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Landroid/content/Context;
    .param p4, "x4"    # Landroid/util/AttributeSet;

    .prologue
    .line 16
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencent/component/plugin/LayoutInflaterProxy;->createViewSafely(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private createViewSafely(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 3
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/tencent/component/plugin/LayoutInflaterProxy;->mInflaterImpl:Lcom/tencent/component/plugin/LayoutInflaterProxy$InflaterImpl;

    .line 78
    .local v0, "inflater":Lcom/tencent/component/plugin/LayoutInflaterProxy$InflaterImpl;
    if-nez v0, :cond_0

    .line 79
    const/4 v1, 0x0

    .line 87
    :goto_0
    return-object v1

    .line 81
    :cond_0
    const/4 v1, 0x0

    .line 83
    .local v1, "view":Landroid/view/View;
    :try_start_0
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/tencent/component/plugin/LayoutInflaterProxy$InflaterImpl;->createViewImpl(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 84
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private init()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi",
            "NewApi"
        }
    .end annotation

    .prologue
    .line 45
    const/4 v0, 0x0

    .line 46
    .local v0, "init":Z
    invoke-static {}, Lcom/tencent/component/plugin/LayoutInflaterProxy;->supportFactory2()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    :try_start_0
    new-instance v1, Lcom/tencent/component/plugin/LayoutInflaterProxy$1;

    invoke-direct {v1, p0}, Lcom/tencent/component/plugin/LayoutInflaterProxy$1;-><init>(Lcom/tencent/component/plugin/LayoutInflaterProxy;)V

    invoke-virtual {p0, v1}, Lcom/tencent/component/plugin/LayoutInflaterProxy;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    const/4 v0, 0x1

    .line 66
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 67
    new-instance v1, Lcom/tencent/component/plugin/LayoutInflaterProxy$2;

    invoke-direct {v1, p0}, Lcom/tencent/component/plugin/LayoutInflaterProxy$2;-><init>(Lcom/tencent/component/plugin/LayoutInflaterProxy;)V

    invoke-virtual {p0, v1}, Lcom/tencent/component/plugin/LayoutInflaterProxy;->setFactory(Landroid/view/LayoutInflater$Factory;)V

    .line 74
    :cond_1
    return-void

    .line 61
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static supportFactory2()Z
    .locals 2

    .prologue
    .line 91
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;
    .locals 1
    .param p1, "newContext"    # Landroid/content/Context;

    .prologue
    .line 36
    const/4 v0, 0x0

    return-object v0
.end method

.method public setInflaterImpl(Lcom/tencent/component/plugin/LayoutInflaterProxy$InflaterImpl;)V
    .locals 0
    .param p1, "inflater"    # Lcom/tencent/component/plugin/LayoutInflaterProxy$InflaterImpl;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/tencent/component/plugin/LayoutInflaterProxy;->mInflaterImpl:Lcom/tencent/component/plugin/LayoutInflaterProxy$InflaterImpl;

    .line 41
    return-void
.end method
