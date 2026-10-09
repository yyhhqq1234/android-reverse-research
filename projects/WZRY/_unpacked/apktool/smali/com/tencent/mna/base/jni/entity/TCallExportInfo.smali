.class public Lcom/tencent/mna/base/jni/entity/TCallExportInfo;
.super Ljava/lang/Object;
.source "TCallExportInfo.java"


# instance fields
.field public isSameArea:I

.field public isSameIsp:I

.field public status:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput p1, p0, Lcom/tencent/mna/base/jni/entity/TCallExportInfo;->isSameArea:I

    .line 11
    iput p2, p0, Lcom/tencent/mna/base/jni/entity/TCallExportInfo;->isSameIsp:I

    .line 12
    iput p3, p0, Lcom/tencent/mna/base/jni/entity/TCallExportInfo;->status:I

    .line 13
    return-void
.end method
