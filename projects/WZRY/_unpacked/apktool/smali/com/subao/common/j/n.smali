.class public abstract Lcom/subao/common/j/n;
.super Ljava/lang/Object;
.source "ResponseCallback.java"


# instance fields
.field private final a:Lcom/subao/common/i/d$b;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field protected final d:I

.field protected final e:I


# direct methods
.method public constructor <init>(Lcom/subao/common/i/d$b;II)V
    .locals 0
    .param p1    # Lcom/subao/common/i/d$b;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/subao/common/j/n;->a:Lcom/subao/common/i/d$b;

    .line 28
    iput p2, p0, Lcom/subao/common/j/n;->d:I

    .line 29
    iput p3, p0, Lcom/subao/common/j/n;->e:I

    .line 30
    return-void
.end method

.method public static a(I)Z
    .locals 1

    .prologue
    .line 64
    const/16 v0, 0xc8

    if-lt p0, v0, :cond_0

    const/16 v0, 0x12c

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected abstract a()Ljava/lang/String;
.end method

.method protected abstract a(I[B)V
.end method

.method public final a(Lcom/subao/common/j/a$c;)V
    .locals 2

    .prologue
    .line 41
    if-nez p1, :cond_0

    .line 42
    const/4 v0, -0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/subao/common/j/n;->d(I[B)V

    .line 47
    :goto_0
    return-void

    .line 46
    :cond_0
    iget v0, p1, Lcom/subao/common/j/a$c;->a:I

    iget-object v1, p1, Lcom/subao/common/j/a$c;->b:[B

    invoke-virtual {p0, v0, v1}, Lcom/subao/common/j/n;->c(I[B)V

    goto :goto_0
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 94
    iget-object v0, p0, Lcom/subao/common/j/n;->a:Lcom/subao/common/i/d$b;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/subao/common/j/n;->a:Lcom/subao/common/i/d$b;

    invoke-virtual {p0}, Lcom/subao/common/j/n;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "io"

    invoke-interface {v0, v1, v2}, Lcom/subao/common/i/d$b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    :cond_0
    const/4 v0, -0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/subao/common/j/n;->b(I[B)V

    .line 98
    return-void
.end method

.method protected abstract b(I[B)V
.end method

.method public final c()V
    .locals 3

    .prologue
    .line 104
    iget-object v0, p0, Lcom/subao/common/j/n;->a:Lcom/subao/common/i/d$b;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/subao/common/j/n;->a:Lcom/subao/common/i/d$b;

    invoke-virtual {p0}, Lcom/subao/common/j/n;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "net"

    invoke-interface {v0, v1, v2}, Lcom/subao/common/i/d$b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    :cond_0
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/subao/common/j/n;->b(I[B)V

    .line 108
    return-void
.end method

.method public final c(I[B)V
    .locals 2

    .prologue
    .line 51
    invoke-static {p1}, Lcom/subao/common/j/n;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    if-eqz p2, :cond_0

    .line 54
    invoke-virtual {p0, p1, p2}, Lcom/subao/common/j/n;->a(I[B)V

    .line 61
    :goto_0
    return-void

    .line 56
    :cond_0
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/subao/common/j/n;->d(I[B)V

    goto :goto_0

    .line 59
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/subao/common/j/n;->d(I[B)V

    goto :goto_0
.end method

.method protected final d()V
    .locals 3

    .prologue
    .line 121
    iget-object v0, p0, Lcom/subao/common/j/n;->a:Lcom/subao/common/i/d$b;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/subao/common/j/n;->a:Lcom/subao/common/i/d$b;

    invoke-virtual {p0}, Lcom/subao/common/j/n;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ok"

    invoke-interface {v0, v1, v2}, Lcom/subao/common/i/d$b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :cond_0
    return-void
.end method

.method protected final d(I[B)V
    .locals 3

    .prologue
    .line 84
    iget-object v0, p0, Lcom/subao/common/j/n;->a:Lcom/subao/common/i/d$b;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/subao/common/j/n;->a:Lcom/subao/common/i/d$b;

    invoke-virtual {p0}, Lcom/subao/common/j/n;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/subao/common/i/d$b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/subao/common/j/n;->b(I[B)V

    .line 88
    return-void
.end method
