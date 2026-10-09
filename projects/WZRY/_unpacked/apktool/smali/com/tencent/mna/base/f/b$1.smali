.class Lcom/tencent/mna/base/f/b$1;
.super Landroid/content/BroadcastReceiver;
.source "BatteryListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/mna/base/f/b;->a(Landroid/content/Context;Lcom/tencent/mna/base/f/b$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/mna/base/f/b$a;

.field final synthetic b:Lcom/tencent/mna/base/f/b;


# direct methods
.method constructor <init>(Lcom/tencent/mna/base/f/b;Lcom/tencent/mna/base/f/b$a;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/tencent/mna/base/f/b$1;->b:Lcom/tencent/mna/base/f/b;

    iput-object p2, p0, Lcom/tencent/mna/base/f/b$1;->a:Lcom/tencent/mna/base/f/b$a;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 27
    const/4 v0, 0x0

    .line 28
    const-string v2, "level"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 29
    const-string v3, "status"

    invoke-virtual {p2, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 30
    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    const/4 v4, 0x5

    if-ne v3, v4, :cond_1

    :cond_0
    move v0, v1

    .line 35
    :cond_1
    iget-object v1, p0, Lcom/tencent/mna/base/f/b$1;->b:Lcom/tencent/mna/base/f/b;

    invoke-static {v1}, Lcom/tencent/mna/base/f/b;->a(Lcom/tencent/mna/base/f/b;)I

    move-result v1

    if-ne v2, v1, :cond_2

    iget-object v1, p0, Lcom/tencent/mna/base/f/b$1;->b:Lcom/tencent/mna/base/f/b;

    invoke-static {v1}, Lcom/tencent/mna/base/f/b;->b(Lcom/tencent/mna/base/f/b;)I

    move-result v1

    if-eq v0, v1, :cond_3

    .line 36
    :cond_2
    iget-object v1, p0, Lcom/tencent/mna/base/f/b$1;->a:Lcom/tencent/mna/base/f/b$a;

    invoke-interface {v1, v0, v2}, Lcom/tencent/mna/base/f/b$a;->a(II)V

    .line 37
    iget-object v1, p0, Lcom/tencent/mna/base/f/b$1;->b:Lcom/tencent/mna/base/f/b;

    invoke-static {v1, v0}, Lcom/tencent/mna/base/f/b;->a(Lcom/tencent/mna/base/f/b;I)I

    .line 38
    iget-object v0, p0, Lcom/tencent/mna/base/f/b$1;->b:Lcom/tencent/mna/base/f/b;

    invoke-static {v0, v2}, Lcom/tencent/mna/base/f/b;->b(Lcom/tencent/mna/base/f/b;I)I

    .line 40
    :cond_3
    return-void
.end method
