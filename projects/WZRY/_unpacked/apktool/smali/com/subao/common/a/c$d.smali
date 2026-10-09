.class Lcom/subao/common/a/c$d;
.super Ljava/lang/Object;
.source "EngineWrapper.java"

# interfaces
.implements Lcom/subao/common/a/c$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/subao/common/a/c;


# direct methods
.method private constructor <init>(Lcom/subao/common/a/c;)V
    .locals 0

    .prologue
    .line 2849
    iput-object p1, p0, Lcom/subao/common/a/c$d;->a:Lcom/subao/common/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/subao/common/a/c;Lcom/subao/common/a/c$1;)V
    .locals 0

    .prologue
    .line 2849
    invoke-direct {p0, p1}, Lcom/subao/common/a/c$d;-><init>(Lcom/subao/common/a/c;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;[BLcom/subao/common/intf/XunyouTokenStateListener;)V
    .locals 4

    .prologue
    .line 2853
    const-string v0, "SubaoGame"

    invoke-static {v0}, Lcom/subao/common/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2854
    const-string v0, "SubaoGame"

    const-string v1, "setUserToken_FromOtherAppCaller, userId = %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2857
    :cond_0
    if-eqz p2, :cond_1

    array-length v0, p2

    if-nez v0, :cond_3

    .line 2858
    :cond_1
    const-string v0, "SubaoGame"

    invoke-static {v0}, Lcom/subao/common/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2859
    const-string v0, "SubaoGame"

    const-string v1, "setUserToken_FromOtherAppCaller, jwtToken is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2868
    :cond_2
    :goto_0
    return-void

    .line 2864
    :cond_3
    invoke-static {p2}, Lcom/subao/common/b/b;->a([B)V

    .line 2865
    invoke-static {p3}, Lcom/subao/common/b/b;->a(Lcom/subao/common/intf/XunyouTokenStateListener;)V

    .line 2866
    iget-object v0, p0, Lcom/subao/common/a/c$d;->a:Lcom/subao/common/a/c;

    invoke-static {v0}, Lcom/subao/common/a/c;->a(Lcom/subao/common/a/c;)Lcom/subao/common/g/c;

    move-result-object v0

    const/16 v1, 0x32

    const-string v2, "DummyToken"

    const-string v3, "WiFiKey"

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/subao/common/g/c;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a()[B
    .locals 1

    .prologue
    .line 2872
    invoke-static {}, Lcom/subao/common/b/b;->a()[B

    move-result-object v0

    return-object v0
.end method
