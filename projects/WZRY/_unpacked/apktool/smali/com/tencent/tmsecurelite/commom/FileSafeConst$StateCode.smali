.class public final Lcom/tencent/tmsecurelite/commom/FileSafeConst$StateCode;
.super Ljava/lang/Object;
.source "FileSafeConst.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tmsecurelite/commom/FileSafeConst;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "StateCode"
.end annotation


# static fields
.field public static final STATE_DECRYPT:I = 0x2

.field public static final STATE_DELETE:I = 0x3

.field public static final STATE_ENCRYPT:I = 0x1

.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_MERGE:I = 0x4

.field public static final STATE_MOVE:I = 0x5


# instance fields
.field final synthetic this$0:Lcom/tencent/tmsecurelite/commom/FileSafeConst;


# direct methods
.method public constructor <init>(Lcom/tencent/tmsecurelite/commom/FileSafeConst;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/tencent/tmsecurelite/commom/FileSafeConst$StateCode;->this$0:Lcom/tencent/tmsecurelite/commom/FileSafeConst;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
