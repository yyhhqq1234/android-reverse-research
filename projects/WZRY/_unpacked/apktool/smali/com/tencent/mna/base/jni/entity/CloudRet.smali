.class public Lcom/tencent/mna/base/jni/entity/CloudRet;
.super Ljava/lang/Object;
.source "CloudRet.java"


# instance fields
.field public errno:I

.field public json:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput p1, p0, Lcom/tencent/mna/base/jni/entity/CloudRet;->errno:I

    .line 11
    iput-object p2, p0, Lcom/tencent/mna/base/jni/entity/CloudRet;->json:Ljava/lang/String;

    .line 12
    return-void
.end method
