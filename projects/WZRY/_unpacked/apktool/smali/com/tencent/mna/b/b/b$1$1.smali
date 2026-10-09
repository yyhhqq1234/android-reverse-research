.class Lcom/tencent/mna/b/b/b$1$1;
.super Ljava/lang/Object;
.source "NetworkBinding.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/mna/b/b/b$1;->onAvailable(Landroid/net/Network;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/tencent/mna/b/b/b$1;


# direct methods
.method constructor <init>(Lcom/tencent/mna/b/b/b$1;II)V
    .locals 0

    .prologue
    .line 291
    iput-object p1, p0, Lcom/tencent/mna/b/b/b$1$1;->c:Lcom/tencent/mna/b/b/b$1;

    iput p2, p0, Lcom/tencent/mna/b/b/b$1$1;->a:I

    iput p3, p0, Lcom/tencent/mna/b/b/b$1$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetworkBinding rebindAll, preNetId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mna/b/b/b$1$1;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", newNetId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mna/b/b/b$1$1;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->b(Ljava/lang/String;)V

    .line 295
    iget-object v0, p0, Lcom/tencent/mna/b/b/b$1$1;->c:Lcom/tencent/mna/b/b/b$1;

    iget-object v0, v0, Lcom/tencent/mna/b/b/b$1;->a:Lcom/tencent/mna/b/b/b;

    iget v1, p0, Lcom/tencent/mna/b/b/b$1$1;->b:I

    invoke-static {v0, v1}, Lcom/tencent/mna/b/b/b;->a(Lcom/tencent/mna/b/b/b;I)I

    .line 296
    return-void
.end method
