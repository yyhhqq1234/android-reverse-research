.class Lcom/tencent/qt/base/net/NetworkEngine$IPAdress;
.super Ljava/lang/Object;
.source "NetworkEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qt/base/net/NetworkEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IPAdress"
.end annotation


# instance fields
.field host:Ljava/lang/String;

.field port:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1058
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/qt/base/net/NetworkEngine$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/tencent/qt/base/net/NetworkEngine$1;

    .prologue
    .line 1058
    invoke-direct {p0}, Lcom/tencent/qt/base/net/NetworkEngine$IPAdress;-><init>()V

    return-void
.end method
