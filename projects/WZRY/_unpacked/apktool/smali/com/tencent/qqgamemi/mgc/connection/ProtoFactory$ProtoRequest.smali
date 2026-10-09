.class public Lcom/tencent/qqgamemi/mgc/connection/ProtoFactory$ProtoRequest;
.super Ljava/lang/Object;
.source "ProtoFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qqgamemi/mgc/connection/ProtoFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProtoRequest"
.end annotation


# instance fields
.field public command:I

.field public data:[B

.field public extra:[B

.field public reverve:[B

.field public subcmd:I


# direct methods
.method public constructor <init>(II[B)V
    .locals 0
    .param p1, "command"    # I
    .param p2, "subcmd"    # I
    .param p3, "data"    # [B

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Lcom/tencent/qqgamemi/mgc/connection/ProtoFactory$ProtoRequest;->command:I

    .line 16
    iput p2, p0, Lcom/tencent/qqgamemi/mgc/connection/ProtoFactory$ProtoRequest;->subcmd:I

    .line 17
    iput-object p3, p0, Lcom/tencent/qqgamemi/mgc/connection/ProtoFactory$ProtoRequest;->data:[B

    .line 18
    return-void
.end method
