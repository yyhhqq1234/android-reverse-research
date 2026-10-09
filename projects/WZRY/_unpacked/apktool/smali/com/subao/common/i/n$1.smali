.class Lcom/subao/common/i/n$1;
.super Ljava/lang/Object;
.source "Message_EventMsg.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/subao/common/i/n;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lcom/subao/common/i/n$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/subao/common/i/n;


# direct methods
.method constructor <init>(Lcom/subao/common/i/n;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/subao/common/i/n$1;->a:Lcom/subao/common/i/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/subao/common/i/n$a;
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method public synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/subao/common/i/n$1;->a()Lcom/subao/common/i/n$a;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 0

    .prologue
    .line 86
    return-void
.end method
