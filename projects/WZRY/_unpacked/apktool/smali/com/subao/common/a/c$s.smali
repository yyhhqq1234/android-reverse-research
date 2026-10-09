.class Lcom/subao/common/a/c$s;
.super Ljava/lang/Thread;
.source "EngineWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "s"
.end annotation


# instance fields
.field private a:Lcom/subao/common/g/c;

.field private volatile b:Z


# direct methods
.method constructor <init>(Lcom/subao/common/g/c;)V
    .locals 0

    .prologue
    .line 1574
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1575
    iput-object p1, p0, Lcom/subao/common/a/c$s;->a:Lcom/subao/common/g/c;

    .line 1576
    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    .prologue
    .line 1587
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/subao/common/a/c$s;->b:Z

    .line 1588
    return-void
.end method

.method public run()V
    .locals 1

    .prologue
    .line 1580
    :goto_0
    iget-boolean v0, p0, Lcom/subao/common/a/c$s;->b:Z

    if-nez v0, :cond_0

    .line 1581
    iget-object v0, p0, Lcom/subao/common/a/c$s;->a:Lcom/subao/common/g/c;

    invoke-virtual {v0}, Lcom/subao/common/g/c;->g()V

    goto :goto_0

    .line 1583
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/subao/common/a/c$s;->a:Lcom/subao/common/g/c;

    .line 1584
    return-void
.end method
