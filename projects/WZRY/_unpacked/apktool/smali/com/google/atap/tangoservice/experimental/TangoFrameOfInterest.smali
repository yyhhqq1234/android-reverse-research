.class public Lcom/google/atap/tangoservice/experimental/TangoFrameOfInterest;
.super Ljava/lang/Object;
.source "TangoFrameOfInterest.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method


# virtual methods
.method public createFrameOfInterest(DLjava/util/UUID;Lcom/google/atap/tangoservice/TangoTransformation;)Ljava/util/UUID;
    .locals 1
    .param p1, "timestamp"    # D
    .param p3, "baseFrameUuid"    # Ljava/util/UUID;
    .param p4, "transform"    # Lcom/google/atap/tangoservice/TangoTransformation;

    .prologue
    .line 63
    new-instance v0, Lcom/google/atap/tangoservice/TangoErrorException;

    invoke-direct {v0}, Lcom/google/atap/tangoservice/TangoErrorException;-><init>()V

    throw v0
.end method

.method public deleteFrameOfInterest(Ljava/util/UUID;)V
    .locals 1
    .param p1, "foiUuid"    # Ljava/util/UUID;

    .prologue
    .line 110
    new-instance v0, Lcom/google/atap/tangoservice/TangoErrorException;

    invoke-direct {v0}, Lcom/google/atap/tangoservice/TangoErrorException;-><init>()V

    throw v0
.end method

.method public updateFrameOfInterest(DLjava/util/UUID;Lcom/google/atap/tangoservice/TangoTransformation;Ljava/util/UUID;)V
    .locals 1
    .param p1, "timestamp"    # D
    .param p3, "baseFrameUuid"    # Ljava/util/UUID;
    .param p4, "transform"    # Lcom/google/atap/tangoservice/TangoTransformation;
    .param p5, "foiUuid"    # Ljava/util/UUID;

    .prologue
    .line 99
    new-instance v0, Lcom/google/atap/tangoservice/TangoErrorException;

    invoke-direct {v0}, Lcom/google/atap/tangoservice/TangoErrorException;-><init>()V

    throw v0
.end method
