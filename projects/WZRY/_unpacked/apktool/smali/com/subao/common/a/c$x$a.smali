.class Lcom/subao/common/a/c$x$a;
.super Ljava/lang/Object;
.source "EngineWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/a/c$x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 2967
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2968
    iput-object p1, p0, Lcom/subao/common/a/c$x$a;->a:Ljava/lang/String;

    .line 2969
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/subao/common/a/c$1;)V
    .locals 0

    .prologue
    .line 2963
    invoke-direct {p0, p1}, Lcom/subao/common/a/c$x$a;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 2974
    :try_start_0
    iget-object v0, p0, Lcom/subao/common/a/c$x$a;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v1

    .line 2975
    if-eqz v1, :cond_0

    const-string v0, "SubaoGame"

    invoke-static {v0}, Lcom/subao/common/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2976
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 2977
    const-string v4, "SubaoGame"

    invoke-virtual {v3}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2976
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2980
    :catch_0
    move-exception v0

    .line 2981
    invoke-virtual {v0}, Ljava/net/UnknownHostException;->printStackTrace()V

    .line 2983
    :cond_0
    return-void
.end method
