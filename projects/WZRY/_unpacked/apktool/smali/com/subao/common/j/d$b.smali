.class Lcom/subao/common/j/d$b;
.super Ljava/lang/Object;
.source "IPInfoQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/j/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field public final a:Lcom/subao/common/j/d$a;

.field final b:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/subao/common/j/d$a;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    iput-object p1, p0, Lcom/subao/common/j/d$b;->a:Lcom/subao/common/j/d$a;

    .line 180
    iput-object p2, p0, Lcom/subao/common/j/d$b;->b:Ljava/lang/Object;

    .line 181
    return-void
.end method


# virtual methods
.method a(Lcom/subao/common/j/d$c;)V
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/subao/common/j/d$b;->a:Lcom/subao/common/j/d$a;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/subao/common/j/d$b;->a:Lcom/subao/common/j/d$a;

    iget-object v1, p0, Lcom/subao/common/j/d$b;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/subao/common/j/d$a;->a(Ljava/lang/Object;Lcom/subao/common/j/d$c;)V

    .line 187
    :cond_0
    return-void
.end method
