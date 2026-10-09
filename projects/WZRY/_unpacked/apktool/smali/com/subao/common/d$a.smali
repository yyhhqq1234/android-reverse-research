.class Lcom/subao/common/d$a;
.super Ljava/lang/Object;
.source "Logger.java"

# interfaces
.implements Lcom/subao/common/d$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/subao/common/d$1;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/subao/common/d$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;I)Z
    .locals 1

    .prologue
    .line 73
    invoke-static {}, Lcom/subao/common/f/b;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
