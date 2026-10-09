.class public final Lcom/tencent/mna/base/f/b;
.super Ljava/lang/Object;
.source "BatteryListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/mna/base/f/b$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mna/base/f/b;->a:I

    .line 15
    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/mna/base/f/b;->b:I

    .line 16
    return-void
.end method

.method static synthetic a(Lcom/tencent/mna/base/f/b;)I
    .locals 1

    .prologue
    .line 9
    iget v0, p0, Lcom/tencent/mna/base/f/b;->b:I

    return v0
.end method

.method static synthetic a(Lcom/tencent/mna/base/f/b;I)I
    .locals 0

    .prologue
    .line 9
    iput p1, p0, Lcom/tencent/mna/base/f/b;->a:I

    return p1
.end method

.method static synthetic b(Lcom/tencent/mna/base/f/b;)I
    .locals 1

    .prologue
    .line 9
    iget v0, p0, Lcom/tencent/mna/base/f/b;->a:I

    return v0
.end method

.method static synthetic b(Lcom/tencent/mna/base/f/b;I)I
    .locals 0

    .prologue
    .line 9
    iput p1, p0, Lcom/tencent/mna/base/f/b;->b:I

    return p1
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/tencent/mna/base/f/b$a;)V
    .locals 3

    .prologue
    .line 19
    if-nez p1, :cond_0

    .line 20
    const-string v0, "startBatteryListener context null"

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->d(Ljava/lang/String;)V

    .line 45
    :goto_0
    return-void

    .line 24
    :cond_0
    :try_start_0
    new-instance v0, Lcom/tencent/mna/base/f/b$1;

    invoke-direct {v0, p0, p2}, Lcom/tencent/mna/base/f/b$1;-><init>(Lcom/tencent/mna/base/f/b;Lcom/tencent/mna/base/f/b$a;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 42
    :catch_0
    move-exception v0

    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startBatteryListener "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
