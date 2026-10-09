.class public Lcom/subao/common/j/b;
.super Ljava/lang/Object;
.source "HttpBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/subao/common/j/b$b;,
        Lcom/subao/common/j/b$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/subao/common/g/c;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final b:I


# direct methods
.method public constructor <init>(Lcom/subao/common/g/c;I)V
    .locals 0
    .param p1    # Lcom/subao/common/g/c;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/subao/common/j/b;->a:Lcom/subao/common/g/c;

    .line 33
    iput p2, p0, Lcom/subao/common/j/b;->b:I

    .line 34
    return-void
.end method

.method private a(I[B)V
    .locals 3
    .param p2    # [B
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 42
    iget-object v1, p0, Lcom/subao/common/j/b;->a:Lcom/subao/common/g/c;

    iget v2, p0, Lcom/subao/common/j/b;->b:I

    if-nez p2, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v2, p1, v0}, Lcom/subao/common/g/c;->a(IILjava/lang/String;)V

    .line 44
    return-void

    .line 42
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/subao/common/j/b;I[B)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/subao/common/j/b;->a(I[B)V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/lang/String;[BLjava/lang/String;)V
    .locals 7
    .param p4    # [B
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 37
    new-instance v0, Lcom/subao/common/j/b$b;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/subao/common/j/b$b;-><init>(Lcom/subao/common/j/b;ILjava/lang/String;Ljava/lang/String;[BLjava/lang/String;)V

    .line 38
    invoke-static {v0}, Lcom/subao/common/m/d;->a(Ljava/lang/Runnable;)V

    .line 39
    return-void
.end method
