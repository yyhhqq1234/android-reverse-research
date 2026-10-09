.class public Lcom/google/atap/tangoservice/TangoFoiResult;
.super Ljava/lang/Object;
.source "TangoFoiResult.java"


# instance fields
.field public id:Ljava/lang/String;

.field public status:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "status"    # I
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput p1, p0, Lcom/google/atap/tangoservice/TangoFoiResult;->status:I

    .line 27
    iput-object p2, p0, Lcom/google/atap/tangoservice/TangoFoiResult;->id:Ljava/lang/String;

    .line 28
    return-void
.end method
