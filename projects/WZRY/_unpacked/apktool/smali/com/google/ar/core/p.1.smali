.class final Lcom/google/ar/core/p;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private final synthetic a:Lcom/google/ar/core/m;


# direct methods
.method constructor <init>(Lcom/google/ar/core/m;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ar/core/p;->a:Lcom/google/ar/core/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    iget-object v0, p0, Lcom/google/ar/core/p;->a:Lcom/google/ar/core/m;

    invoke-static {v0, p2}, Lcom/google/ar/core/m;->a(Lcom/google/ar/core/m;Landroid/os/IBinder;)V

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    iget-object v0, p0, Lcom/google/ar/core/p;->a:Lcom/google/ar/core/m;

    invoke-static {v0}, Lcom/google/ar/core/m;->a(Lcom/google/ar/core/m;)V

    return-void
.end method
