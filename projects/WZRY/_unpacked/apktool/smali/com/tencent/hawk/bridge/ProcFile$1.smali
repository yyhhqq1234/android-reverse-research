.class Lcom/tencent/hawk/bridge/ProcFile$1;
.super Ljava/lang/Object;
.source "ProcFile.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/hawk/bridge/ProcFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/tencent/hawk/bridge/ProcFile;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/tencent/hawk/bridge/ProcFile;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 82
    new-instance v0, Lcom/tencent/hawk/bridge/ProcFile;

    invoke-direct {v0, p1}, Lcom/tencent/hawk/bridge/ProcFile;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/tencent/hawk/bridge/ProcFile$1;->createFromParcel(Landroid/os/Parcel;)Lcom/tencent/hawk/bridge/ProcFile;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/tencent/hawk/bridge/ProcFile;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 87
    new-array v0, p1, [Lcom/tencent/hawk/bridge/ProcFile;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/tencent/hawk/bridge/ProcFile$1;->newArray(I)[Lcom/tencent/hawk/bridge/ProcFile;

    move-result-object v0

    return-object v0
.end method
