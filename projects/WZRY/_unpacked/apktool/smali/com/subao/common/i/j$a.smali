.class Lcom/subao/common/i/j$a;
.super Ljava/lang/Object;
.source "MessageToolsImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/i/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/subao/common/i/j$1;)V
    .locals 0

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/subao/common/i/j$a;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 141
    invoke-static {}, Lcom/subao/common/e/l;->a()Lcom/subao/common/e/l;

    move-result-object v0

    invoke-static {}, Lcom/subao/common/n/c;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/subao/common/e/l;->a(I)V

    .line 142
    return-void
.end method
