.class Lcom/subao/common/a/c$q;
.super Ljava/lang/Object;
.source "EngineWrapper.java"

# interfaces
.implements Lcom/subao/common/e/af$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "q"
.end annotation


# instance fields
.field private final a:Lcom/subao/common/g/c;


# direct methods
.method constructor <init>(Lcom/subao/common/g/c;)V
    .locals 0
    .param p1    # Lcom/subao/common/g/c;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 2927
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2928
    iput-object p1, p0, Lcom/subao/common/a/c$q;->a:Lcom/subao/common/g/c;

    .line 2929
    return-void
.end method


# virtual methods
.method public a(Lcom/subao/common/e/af$b;)V
    .locals 4

    .prologue
    .line 2940
    const-string v0, "steam_proxy"

    invoke-virtual {p1, v0}, Lcom/subao/common/e/af$b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2941
    if-eqz v0, :cond_0

    .line 2942
    iget-object v1, p0, Lcom/subao/common/a/c$q;->a:Lcom/subao/common/g/c;

    const/4 v2, 0x0

    const-string v3, "key_http_proxy_node"

    invoke-virtual {v1, v2, v3, v0}, Lcom/subao/common/g/c;->b(ILjava/lang/String;Ljava/lang/String;)V

    .line 2944
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 2933
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2934
    iget-object v0, p0, Lcom/subao/common/a/c$q;->a:Lcom/subao/common/g/c;

    const/4 v1, 0x0

    sget-object v2, Lcom/subao/common/e/q$b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lcom/subao/common/g/c;->b(ILjava/lang/String;Ljava/lang/String;)V

    .line 2936
    :cond_0
    return-void
.end method
