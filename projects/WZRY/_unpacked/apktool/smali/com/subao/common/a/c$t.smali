.class Lcom/subao/common/a/c$t;
.super Ljava/lang/Object;
.source "EngineWrapper.java"

# interfaces
.implements Lcom/subao/common/l/b$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "t"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/subao/common/j/j;

.field private final d:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/subao/common/j/j;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1938
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1939
    iput-object p1, p0, Lcom/subao/common/a/c$t;->a:Ljava/lang/String;

    .line 1940
    iput-object p2, p0, Lcom/subao/common/a/c$t;->b:Ljava/lang/String;

    .line 1941
    iput-object p3, p0, Lcom/subao/common/a/c$t;->c:Lcom/subao/common/j/j;

    .line 1942
    iput-object p4, p0, Lcom/subao/common/a/c$t;->d:Ljava/lang/String;

    .line 1943
    return-void
.end method


# virtual methods
.method public a()Lcom/subao/common/e/g;
    .locals 1

    .prologue
    .line 1952
    sget-object v0, Lcom/subao/common/e/g;->d:Lcom/subao/common/e/g;

    return-object v0
.end method

.method public a([B)Z
    .locals 1

    .prologue
    .line 1947
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1957
    iget-object v0, p0, Lcom/subao/common/a/c$t;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1962
    iget-object v0, p0, Lcom/subao/common/a/c$t;->b:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1967
    invoke-static {}, Lcom/subao/common/e/am;->b()Lcom/subao/common/e/am;

    move-result-object v0

    invoke-virtual {v0}, Lcom/subao/common/e/am;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1977
    iget-object v0, p0, Lcom/subao/common/a/c$t;->d:Ljava/lang/String;

    return-object v0
.end method
