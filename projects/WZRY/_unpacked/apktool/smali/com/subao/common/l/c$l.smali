.class abstract Lcom/subao/common/l/c$l;
.super Lcom/subao/common/l/c$h;
.source "QosManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/l/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "l"
.end annotation


# instance fields
.field public final b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/subao/common/l/c$e;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 853
    invoke-direct {p0, p1}, Lcom/subao/common/l/c$h;-><init>(Lcom/subao/common/l/c$e;)V

    .line 854
    iput-object p2, p0, Lcom/subao/common/l/c$l;->b:Ljava/lang/String;

    .line 855
    return-void
.end method


# virtual methods
.method c()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 860
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/subao/common/l/c$h;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/subao/common/l/c$l;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method d()Lcom/subao/common/l/c$h$a;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 866
    const/4 v0, 0x0

    return-object v0
.end method
