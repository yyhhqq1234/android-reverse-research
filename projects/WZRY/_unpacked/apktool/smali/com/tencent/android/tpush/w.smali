.class Lcom/tencent/android/tpush/w;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/tencent/android/tpush/v;


# direct methods
.method constructor <init>(Lcom/tencent/android/tpush/v;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1361
    iput-object p1, p0, Lcom/tencent/android/tpush/w;->b:Lcom/tencent/android/tpush/v;

    iput-object p2, p0, Lcom/tencent/android/tpush/w;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1364
    iget-object v0, p0, Lcom/tencent/android/tpush/w;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/android/tpush/c/a;->c(Landroid/content/Context;)V

    .line 1365
    return-void
.end method
