.class public Lcom/tencent/hawk/bridge/GpuVendorBase$SeriesParam;
.super Ljava/lang/Object;
.source "GpuVendorBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/hawk/bridge/GpuVendorBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "SeriesParam"
.end annotation


# instance fields
.field private paramValue:[I

.field private seriesName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "cls"    # I

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object v0, p0, Lcom/tencent/hawk/bridge/GpuVendorBase$SeriesParam;->seriesName:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/tencent/hawk/bridge/GpuVendorBase$SeriesParam;->paramValue:[I

    .line 21
    iput-object p1, p0, Lcom/tencent/hawk/bridge/GpuVendorBase$SeriesParam;->seriesName:Ljava/lang/String;

    .line 22
    new-array v0, p2, [I

    iput-object v0, p0, Lcom/tencent/hawk/bridge/GpuVendorBase$SeriesParam;->paramValue:[I

    .line 23
    return-void
.end method


# virtual methods
.method public getParamValue()[I
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/tencent/hawk/bridge/GpuVendorBase$SeriesParam;->paramValue:[I

    return-object v0
.end method

.method public getSeriesName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/tencent/hawk/bridge/GpuVendorBase$SeriesParam;->seriesName:Ljava/lang/String;

    return-object v0
.end method
