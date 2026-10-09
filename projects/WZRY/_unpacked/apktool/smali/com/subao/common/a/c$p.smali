.class Lcom/subao/common/a/c$p;
.super Lcom/subao/common/e/ab$a;
.source "EngineWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "p"
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/subao/common/e/al;Lcom/subao/common/j/j;)V
    .locals 0

    .prologue
    .line 1984
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/subao/common/e/ab$a;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/subao/common/e/al;Lcom/subao/common/j/j;)V

    .line 1985
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/subao/common/f/c;
    .locals 1

    .prologue
    .line 1989
    invoke-static {p1}, Lcom/subao/common/f/a;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 1990
    invoke-static {v0}, Lcom/subao/common/f/d;->a(Ljava/io/File;)Lcom/subao/common/f/c;

    move-result-object v0

    return-object v0
.end method
