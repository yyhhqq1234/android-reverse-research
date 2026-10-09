.class final Lcom/tencent/mna/b/a/b$10;
.super Lcom/tencent/mna/b/a/b$a;
.source "AccelerateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/mna/b/a/b;->a(Lcom/tencent/mna/b/a/d;Lcom/tencent/mna/base/c/a;J)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/mna/b/a/d;


# direct methods
.method constructor <init>(Lcom/tencent/mna/b/a/c/c;JLcom/tencent/mna/b/a/d;)V
    .locals 0

    .prologue
    .line 1182
    iput-object p4, p0, Lcom/tencent/mna/b/a/b$10;->a:Lcom/tencent/mna/b/a/d;

    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/mna/b/a/b$a;-><init>(Lcom/tencent/mna/b/a/c/c;J)V

    return-void
.end method


# virtual methods
.method protected a()I
    .locals 1

    .prologue
    .line 1185
    iget-object v0, p0, Lcom/tencent/mna/b/a/b$10;->a:Lcom/tencent/mna/b/a/d;

    invoke-virtual {v0}, Lcom/tencent/mna/b/a/d;->b()I

    move-result v0

    return v0
.end method
