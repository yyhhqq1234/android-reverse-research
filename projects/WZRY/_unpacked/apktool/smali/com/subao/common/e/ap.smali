.class public Lcom/subao/common/e/ap;
.super Lcom/subao/common/e/u;
.source "UserAccelInfoUploader.java"


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-string v0, "http"

    sput-object v0, Lcom/subao/common/e/ap;->a:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/subao/common/e/u$a;Lcom/subao/common/e/u$d;[B)V
    .locals 1
    .param p1    # Lcom/subao/common/e/u$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/subao/common/e/u$d;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [B
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 20
    sget-object v0, Lcom/subao/common/j/a$b;->b:Lcom/subao/common/j/a$b;

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/subao/common/e/u;-><init>(Lcom/subao/common/e/u$a;Lcom/subao/common/e/u$d;Lcom/subao/common/j/a$b;[B)V

    .line 21
    iget-object v0, p2, Lcom/subao/common/e/u$d;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/subao/common/e/ap;->d:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public static a(Lcom/subao/common/e/u$a;Lcom/subao/common/e/u$d;[B)V
    .locals 2
    .param p0    # Lcom/subao/common/e/u$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/subao/common/e/u$d;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [B
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 25
    new-instance v0, Lcom/subao/common/e/ap;

    invoke-direct {v0, p0, p1, p2}, Lcom/subao/common/e/ap;-><init>(Lcom/subao/common/e/u$a;Lcom/subao/common/e/u$d;[B)V

    .line 28
    invoke-static {}, Lcom/subao/common/m/d;->a()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/subao/common/e/ap;->a(Ljava/util/concurrent/Executor;)V

    .line 29
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 32
    const-string v0, "https"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    sput-object p0, Lcom/subao/common/e/ap;->a:Ljava/lang/String;

    .line 37
    :goto_0
    return-void

    .line 35
    :cond_0
    const-string v0, "http"

    sput-object v0, Lcom/subao/common/e/ap;->a:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method protected a()I
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x3

    return v0
.end method

.method protected b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/api/v1/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/subao/common/e/ap;->b:Lcom/subao/common/e/u$a;

    iget-object v1, v1, Lcom/subao/common/e/u$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/users/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/subao/common/e/ap;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/gameAccel"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/subao/common/e/ap;->a:Ljava/lang/String;

    return-object v0
.end method
