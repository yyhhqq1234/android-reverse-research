.class public Lcom/subao/common/e/ao$c;
.super Ljava/lang/Object;
.source "SupportGameList.java"

# interfaces
.implements Lcom/subao/common/e/ao$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/e/ao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/subao/common/e/ao$a",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Lcom/subao/common/e/an;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 157
    invoke-virtual {p0, p1}, Lcom/subao/common/e/ao$c;->b(Lcom/subao/common/e/an;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/subao/common/e/an;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p1, Lcom/subao/common/e/an;->b:Ljava/lang/String;

    return-object v0
.end method
