.class Lcom/tencent/mna/base/a/d$a;
.super Ljava/lang/Object;
.source "RulesCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/mna/base/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:I

.field b:Lcom/tencent/mna/base/a/a/e;


# direct methods
.method constructor <init>(ILcom/tencent/mna/base/a/a/e;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput p1, p0, Lcom/tencent/mna/base/a/d$a;->a:I

    .line 23
    iput-object p2, p0, Lcom/tencent/mna/base/a/d$a;->b:Lcom/tencent/mna/base/a/a/e;

    .line 24
    return-void
.end method
