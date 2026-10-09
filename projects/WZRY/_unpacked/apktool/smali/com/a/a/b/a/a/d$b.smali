.class Lcom/a/a/b/a/a/d$b;
.super Lcom/a/a/b/a/a/d$a;
.source "LinkedBlockingDeque.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/b/a/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/a/a/b/a/a/d",
        "<TE;>.a;"
    }
.end annotation


# instance fields
.field final synthetic d:Lcom/a/a/b/a/a/d;


# direct methods
.method private constructor <init>(Lcom/a/a/b/a/a/d;)V
    .locals 0

    .prologue
    .line 1128
    iput-object p1, p0, Lcom/a/a/b/a/a/d$b;->d:Lcom/a/a/b/a/a/d;

    invoke-direct {p0, p1}, Lcom/a/a/b/a/a/d$a;-><init>(Lcom/a/a/b/a/a/d;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/a/a/b/a/a/d;Lcom/a/a/b/a/a/d$1;)V
    .locals 0

    .prologue
    .line 1128
    invoke-direct {p0, p1}, Lcom/a/a/b/a/a/d$b;-><init>(Lcom/a/a/b/a/a/d;)V

    return-void
.end method


# virtual methods
.method a()Lcom/a/a/b/a/a/d$c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/b/a/a/d$c",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1130
    iget-object v0, p0, Lcom/a/a/b/a/a/d$b;->d:Lcom/a/a/b/a/a/d;

    iget-object v0, v0, Lcom/a/a/b/a/a/d;->a:Lcom/a/a/b/a/a/d$c;

    return-object v0
.end method

.method a(Lcom/a/a/b/a/a/d$c;)Lcom/a/a/b/a/a/d$c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/b/a/a/d$c",
            "<TE;>;)",
            "Lcom/a/a/b/a/a/d$c",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1134
    iget-object v0, p1, Lcom/a/a/b/a/a/d$c;->c:Lcom/a/a/b/a/a/d$c;

    return-object v0
.end method
