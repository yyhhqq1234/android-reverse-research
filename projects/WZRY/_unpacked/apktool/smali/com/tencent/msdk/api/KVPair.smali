.class public Lcom/tencent/msdk/api/KVPair;
.super Ljava/lang/Object;
.source "KVPair.java"


# instance fields
.field public key:Ljava/lang/String;

.field public value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/api/KVPair;->key:Ljava/lang/String;

    .line 5
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/api/KVPair;->value:Ljava/lang/String;

    return-void
.end method
