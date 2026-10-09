.class Lcom/tencent/mna/c/d/a$1;
.super Ljava/lang/Object;
.source "McAccelerator.java"

# interfaces
.implements Lcom/tencent/mna/base/f/k$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/mna/c/d/a;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIIIIZ)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/mna/c/d/a;


# direct methods
.method constructor <init>(Lcom/tencent/mna/c/d/a;)V
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Lcom/tencent/mna/c/d/a$1;->a:Lcom/tencent/mna/c/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .prologue
    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNetworkChange:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/tencent/mna/base/f/l;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    .line 196
    invoke-static {p1}, Lcom/tencent/mna/base/f/l;->c(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 198
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/tencent/mna/base/jni/d;->a(Z)V

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 199
    :cond_1
    invoke-static {p1}, Lcom/tencent/mna/base/f/l;->d(I)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Lcom/tencent/mna/base/f/l;->e(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    :cond_2
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/tencent/mna/base/jni/d;->a(Z)V

    goto :goto_0
.end method
