.class public Lcom/subao/common/c/f;
.super Ljava/lang/Object;
.source "TrialRequester.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/subao/common/c/f$b;,
        Lcom/subao/common/c/f$a;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field private final b:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final c:Lcom/subao/common/e/al;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final d:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final e:Lcom/subao/common/c/f$a;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/subao/common/e/al;Ljava/lang/String;Lcom/subao/common/c/f$a;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/subao/common/e/al;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/subao/common/c/f$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/subao/common/c/f;->b:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lcom/subao/common/c/f;->c:Lcom/subao/common/e/al;

    .line 44
    iput-object p3, p0, Lcom/subao/common/c/f;->d:Ljava/lang/String;

    .line 45
    iput-object p4, p0, Lcom/subao/common/c/f;->e:Lcom/subao/common/c/f$a;

    .line 46
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 56
    sget-object v0, Lcom/subao/common/c/f;->a:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 57
    new-instance v0, Lcom/subao/common/c/f$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/subao/common/c/f$b;-><init>(Lcom/subao/common/c/f$1;)V

    .line 58
    new-instance v1, Lcom/subao/common/c/e;

    iget-object v2, p0, Lcom/subao/common/c/f;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/subao/common/c/f;->c:Lcom/subao/common/e/al;

    invoke-direct {v1, v2, v3, v0}, Lcom/subao/common/c/e;-><init>(Ljava/lang/String;Lcom/subao/common/e/al;Lcom/subao/common/c/e$a;)V

    .line 62
    invoke-virtual {v1}, Lcom/subao/common/c/e;->run()V

    .line 63
    iget v1, v0, Lcom/subao/common/c/f$b;->a:I

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_0

    .line 64
    iget-object v1, p0, Lcom/subao/common/c/f;->e:Lcom/subao/common/c/f$a;

    sget-object v2, Lcom/subao/common/c/f$a$a;->a:Lcom/subao/common/c/f$a$a;

    iget v0, v0, Lcom/subao/common/c/f$b;->a:I

    invoke-interface {v1, v2, v0}, Lcom/subao/common/c/f$a;->a(Lcom/subao/common/c/f$a$a;I)V

    .line 82
    :goto_0
    return-void

    .line 69
    :cond_0
    iget-object v0, v0, Lcom/subao/common/c/f$b;->b:Lcom/subao/common/intf/ProductList;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/subao/common/intf/ProductList;->findByType(I)Lcom/subao/common/intf/Product;

    move-result-object v0

    .line 70
    if-nez v0, :cond_1

    .line 71
    iget-object v0, p0, Lcom/subao/common/c/f;->e:Lcom/subao/common/c/f$a;

    sget-object v1, Lcom/subao/common/c/f$a$a;->a:Lcom/subao/common/c/f$a$a;

    const/16 v2, 0x1f4

    invoke-interface {v0, v1, v2}, Lcom/subao/common/c/f$a;->a(Lcom/subao/common/c/f$a$a;I)V

    goto :goto_0

    .line 74
    :cond_1
    invoke-virtual {v0}, Lcom/subao/common/intf/Product;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/subao/common/c/f;->a:Ljava/lang/String;

    .line 77
    :cond_2
    new-instance v0, Lcom/subao/common/c/b;

    sget-object v1, Lcom/subao/common/c/f;->a:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/subao/common/c/b;-><init>(Ljava/lang/String;I)V

    .line 78
    new-instance v1, Lcom/subao/common/c/c;

    iget-object v2, p0, Lcom/subao/common/c/f;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/subao/common/c/f;->c:Lcom/subao/common/e/al;

    iget-object v4, p0, Lcom/subao/common/c/f;->d:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/subao/common/c/c;-><init>(Ljava/lang/String;Lcom/subao/common/e/al;Ljava/lang/String;Lcom/subao/common/c/b;)V

    .line 80
    invoke-virtual {v1}, Lcom/subao/common/c/c;->run()V

    .line 81
    iget-object v0, p0, Lcom/subao/common/c/f;->e:Lcom/subao/common/c/f$a;

    sget-object v2, Lcom/subao/common/c/f$a$a;->b:Lcom/subao/common/c/f$a$a;

    invoke-virtual {v1}, Lcom/subao/common/c/c;->d()I

    move-result v1

    invoke-interface {v0, v2, v1}, Lcom/subao/common/c/f$a;->a(Lcom/subao/common/c/f$a$a;I)V

    goto :goto_0
.end method
