.class public Lcom/pay/tool/APProductItem;
.super Ljava/lang/Object;
.source "APProductItem.java"


# instance fields
.field public name:Ljava/lang/String;

.field public num:Ljava/lang/String;

.field public price:Ljava/lang/String;

.field public productId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/pay/tool/APProductItem;->name:Ljava/lang/String;

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/pay/tool/APProductItem;->productId:Ljava/lang/String;

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/pay/tool/APProductItem;->price:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/pay/tool/APProductItem;->num:Ljava/lang/String;

    .line 14
    return-void
.end method
