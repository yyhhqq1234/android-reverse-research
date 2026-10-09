.class public Lcom/subao/common/e/ao$b;
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
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/subao/common/e/ao$a",
        "<",
        "Lcom/subao/common/intf/AppInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Lcom/subao/common/e/an;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 165
    invoke-virtual {p0, p1}, Lcom/subao/common/e/ao$b;->b(Lcom/subao/common/e/an;)Lcom/subao/common/intf/AppInfo;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/subao/common/e/an;)Lcom/subao/common/intf/AppInfo;
    .locals 3

    .prologue
    .line 169
    new-instance v0, Lcom/subao/common/intf/AppInfo;

    iget v1, p1, Lcom/subao/common/e/an;->a:I

    iget-object v2, p1, Lcom/subao/common/e/an;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/subao/common/intf/AppInfo;-><init>(ILjava/lang/String;)V

    return-object v0
.end method
