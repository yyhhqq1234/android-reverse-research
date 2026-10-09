.class Lcom/subao/common/l/k$a;
.super Ljava/lang/Object;
.source "QosUser4GRegionAndISP.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/l/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/subao/common/l/k;

.field private final b:Lcom/subao/common/j/d$c;


# direct methods
.method private constructor <init>(Lcom/subao/common/l/k;Lcom/subao/common/j/d$c;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/subao/common/l/k$a;->a:Lcom/subao/common/l/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    iput-object p2, p0, Lcom/subao/common/l/k$a;->b:Lcom/subao/common/j/d$c;

    .line 148
    return-void
.end method

.method synthetic constructor <init>(Lcom/subao/common/l/k;Lcom/subao/common/j/d$c;Lcom/subao/common/l/k$1;)V
    .locals 0

    .prologue
    .line 142
    invoke-direct {p0, p1, p2}, Lcom/subao/common/l/k$a;-><init>(Lcom/subao/common/l/k;Lcom/subao/common/j/d$c;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/subao/common/l/k$a;->a:Lcom/subao/common/l/k;

    iget-object v1, p0, Lcom/subao/common/l/k$a;->b:Lcom/subao/common/j/d$c;

    invoke-static {v0, v1}, Lcom/subao/common/l/k;->a(Lcom/subao/common/l/k;Lcom/subao/common/j/d$c;)V

    .line 153
    return-void
.end method
