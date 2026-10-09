.class public final Lcom/tencent/tmsecurelite/commom/FileSafeConst$FileType;
.super Ljava/lang/Object;
.source "FileSafeConst.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tmsecurelite/commom/FileSafeConst;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "FileType"
.end annotation


# static fields
.field public static final ASHMEM_FLAG:I = -0x80000000

.field public static final TYPE_IMAGE:I = 0x0

.field public static final TYPE_VIDEO:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/tencent/tmsecurelite/commom/FileSafeConst;


# direct methods
.method public constructor <init>(Lcom/tencent/tmsecurelite/commom/FileSafeConst;)V
    .locals 0

    .prologue
    .line 8
    iput-object p1, p0, Lcom/tencent/tmsecurelite/commom/FileSafeConst$FileType;->this$0:Lcom/tencent/tmsecurelite/commom/FileSafeConst;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
