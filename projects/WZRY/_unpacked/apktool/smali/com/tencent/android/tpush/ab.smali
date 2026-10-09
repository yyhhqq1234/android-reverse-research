.class final Lcom/tencent/android/tpush/ab;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 721
    iput-object p1, p0, Lcom/tencent/android/tpush/ab;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 723
    invoke-static {}, Lcom/tencent/android/tpush/b/d;->a()Lcom/tencent/android/tpush/b/d;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/android/tpush/ab;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/tencent/android/tpush/b/d;->c(Landroid/content/Context;)V

    .line 724
    return-void
.end method
