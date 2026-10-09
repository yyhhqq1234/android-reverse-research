.class final Lcom/tencent/android/tpush/c/c;
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
    .line 24
    iput-object p1, p0, Lcom/tencent/android/tpush/c/c;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/tencent/android/tpush/c/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/android/tpush/c/b;->b(Landroid/content/Context;)V

    .line 28
    return-void
.end method
