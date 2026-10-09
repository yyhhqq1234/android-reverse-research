.class public final Lcom/tencent/mna/base/f/k;
.super Landroid/content/BroadcastReceiver;
.source "NetworkChangeReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/mna/base/f/k$b;,
        Lcom/tencent/mna/base/f/k$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Lcom/tencent/mna/base/f/k$b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 15
    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/mna/base/f/k;->a:I

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mna/base/f/k;->b:Lcom/tencent/mna/base/f/k$b;

    .line 22
    return-void
.end method

.method public static a()V
    .locals 2

    .prologue
    .line 77
    invoke-static {}, Lcom/tencent/mna/base/f/k$a;->a()Lcom/tencent/mna/base/f/k;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/tencent/mna/base/f/k;->b:Lcom/tencent/mna/base/f/k$b;

    .line 78
    return-void
.end method

.method private a(I)V
    .locals 1

    .prologue
    .line 84
    invoke-static {}, Lcom/tencent/mna/base/f/k$a;->a()Lcom/tencent/mna/base/f/k;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mna/base/f/k;->b:Lcom/tencent/mna/base/f/k$b;

    if-eqz v0, :cond_0

    .line 85
    invoke-static {}, Lcom/tencent/mna/base/f/k$a;->a()Lcom/tencent/mna/base/f/k;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mna/base/f/k;->b:Lcom/tencent/mna/base/f/k$b;

    invoke-interface {v0, p1}, Lcom/tencent/mna/base/f/k$b;->a(I)V

    .line 87
    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 42
    if-nez p0, :cond_0

    .line 43
    const-string v0, "register NetworkChangeReceiver failed, context is null"

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->d(Ljava/lang/String;)V

    .line 49
    :goto_0
    return-void

    .line 46
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 47
    invoke-static {}, Lcom/tencent/mna/base/f/k$a;->a()Lcom/tencent/mna/base/f/k;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 48
    const-string v0, "register NetworkChangeReceiver succeed"

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Lcom/tencent/mna/base/f/k$b;)V
    .locals 1

    .prologue
    .line 67
    if-nez p0, :cond_0

    .line 71
    :goto_0
    return-void

    .line 70
    :cond_0
    invoke-static {}, Lcom/tencent/mna/base/f/k$a;->a()Lcom/tencent/mna/base/f/k;

    move-result-object v0

    iput-object p0, v0, Lcom/tencent/mna/base/f/k;->b:Lcom/tencent/mna/base/f/k$b;

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 26
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    invoke-static {p1}, Lcom/tencent/mna/base/f/l;->a(Landroid/content/Context;)I

    move-result v0

    .line 28
    iget v1, p0, Lcom/tencent/mna/base/f/k;->a:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 29
    iput v0, p0, Lcom/tencent/mna/base/f/k;->a:I

    .line 36
    :cond_0
    :goto_0
    return-void

    .line 30
    :cond_1
    iget v1, p0, Lcom/tencent/mna/base/f/k;->a:I

    if-eq v1, v0, :cond_0

    .line 31
    iput v0, p0, Lcom/tencent/mna/base/f/k;->a:I

    .line 33
    invoke-direct {p0, v0}, Lcom/tencent/mna/base/f/k;->a(I)V

    goto :goto_0
.end method
