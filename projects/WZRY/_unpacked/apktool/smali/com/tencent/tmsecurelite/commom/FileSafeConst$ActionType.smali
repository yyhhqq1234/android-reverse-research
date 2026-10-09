.class public final Lcom/tencent/tmsecurelite/commom/FileSafeConst$ActionType;
.super Ljava/lang/Object;
.source "FileSafeConst.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tmsecurelite/commom/FileSafeConst;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ActionType"
.end annotation


# static fields
.field public static final ACTION_DECRYPT:I = 0x1

.field public static final ACTION_DELETE:I = 0x2

.field public static final ACTION_ENCRYPT:I


# instance fields
.field final synthetic this$0:Lcom/tencent/tmsecurelite/commom/FileSafeConst;


# direct methods
.method public constructor <init>(Lcom/tencent/tmsecurelite/commom/FileSafeConst;)V
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/tencent/tmsecurelite/commom/FileSafeConst$ActionType;->this$0:Lcom/tencent/tmsecurelite/commom/FileSafeConst;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
