.class public Lcom/tencent/component/utils/UITools;
.super Ljava/lang/Object;
.source "UITools.java"


# static fields
.field private static mUIHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 12
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/tencent/component/utils/UITools;->mUIHandler:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method static synthetic access$000(Ljava/lang/CharSequence;I)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/CharSequence;
    .param p1, "x1"    # I

    .prologue
    .line 10
    invoke-static {p0, p1}, Lcom/tencent/component/utils/UITools;->toastInner(Ljava/lang/CharSequence;I)V

    return-void
.end method

.method public static showDebugToast(I)V
    .locals 1
    .param p0, "resId"    # I

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/tencent/component/utils/UITools;->showDebugToast(II)V

    .line 66
    return-void
.end method

.method public static showDebugToast(II)V
    .locals 2
    .param p0, "resId"    # I
    .param p1, "duration"    # I

    .prologue
    .line 70
    :try_start_0
    invoke-static {}, Lcom/tencent/component/ComponentContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/tencent/component/utils/UITools;->showDebugToast(Ljava/lang/CharSequence;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :goto_0
    return-void

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static showDebugToast(Ljava/lang/CharSequence;)V
    .locals 1
    .param p0, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/tencent/component/utils/UITools;->showDebugToast(Ljava/lang/CharSequence;I)V

    .line 55
    return-void
.end method

.method public static showDebugToast(Ljava/lang/CharSequence;I)V
    .locals 3
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "duration"    # I

    .prologue
    .line 58
    invoke-static {}, Lcom/tencent/component/utils/DebugUtil;->isDebuggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "debug\u7248\u672c\u8c03\u8bd5\u4fe1\u606f\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "outStr":Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/tencent/component/utils/UITools;->showToast(Ljava/lang/CharSequence;I)V

    .line 62
    .end local v0    # "outStr":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static showToast(I)V
    .locals 1
    .param p0, "resId"    # I

    .prologue
    .line 23
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/tencent/component/utils/UITools;->showToast(II)V

    .line 24
    return-void
.end method

.method public static showToast(II)V
    .locals 1
    .param p0, "resId"    # I
    .param p1, "duration"    # I

    .prologue
    .line 27
    invoke-static {}, Lcom/tencent/component/ComponentContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/tencent/component/utils/UITools;->showToast(Ljava/lang/CharSequence;I)V

    .line 28
    return-void
.end method

.method public static showToast(Ljava/lang/CharSequence;)V
    .locals 1
    .param p0, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 19
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/tencent/component/utils/UITools;->showToast(Ljava/lang/CharSequence;I)V

    .line 20
    return-void
.end method

.method public static showToast(Ljava/lang/CharSequence;I)V
    .locals 2
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "duration"    # I

    .prologue
    .line 31
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 32
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 33
    invoke-static {p0, p1}, Lcom/tencent/component/utils/UITools;->toastInner(Ljava/lang/CharSequence;I)V

    .line 44
    :cond_0
    :goto_0
    return-void

    .line 35
    :cond_1
    sget-object v0, Lcom/tencent/component/utils/UITools;->mUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/component/utils/UITools$1;

    invoke-direct {v1, p0, p1}, Lcom/tencent/component/utils/UITools$1;-><init>(Ljava/lang/CharSequence;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private static toastInner(Ljava/lang/CharSequence;I)V
    .locals 2
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "duration"    # I

    .prologue
    .line 47
    invoke-static {}, Lcom/tencent/component/ComponentContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p0, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 48
    .local v0, "toast":Landroid/widget/Toast;
    invoke-virtual {v0, p0}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 49
    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setDuration(I)V

    .line 50
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 51
    return-void
.end method
