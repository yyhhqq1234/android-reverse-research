.class final Lcom/tencent/mna/b$1;
.super Ljava/lang/Object;
.source "MnaSystem.java"

# interfaces
.implements Lcom/tencent/mna/base/f/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/mna/b;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 1

    .prologue
    .line 137
    new-instance v0, Lcom/tencent/mna/b$1$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/tencent/mna/b$1$1;-><init>(Lcom/tencent/mna/b$1;II)V

    invoke-static {v0}, Lcom/tencent/mna/a;->d(Ljava/lang/Runnable;)V

    .line 153
    return-void
.end method
