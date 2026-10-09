.class public abstract Lcom/google/atap/tangoservice/fois/FoiRequest;
.super Ljava/lang/Object;
.source "FoiRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/atap/tangoservice/fois/FoiRequest$Delete;,
        Lcom/google/atap/tangoservice/fois/FoiRequest$Load;,
        Lcom/google/atap/tangoservice/fois/FoiRequest$Create;,
        Lcom/google/atap/tangoservice/fois/FoiRequest$Type;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/atap/tangoservice/fois/FoiRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mId:Ljava/lang/String;

.field public mType:Lcom/google/atap/tangoservice/fois/FoiRequest$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Lcom/google/atap/tangoservice/fois/FoiRequest$1;

    invoke-direct {v0}, Lcom/google/atap/tangoservice/fois/FoiRequest$1;-><init>()V

    sput-object v0, Lcom/google/atap/tangoservice/fois/FoiRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Lcom/google/atap/tangoservice/fois/FoiRequest$Type;)V
    .locals 1
    .param p1, "type"    # Lcom/google/atap/tangoservice/fois/FoiRequest$Type;

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    sget-object v0, Lcom/google/atap/tangoservice/fois/FoiRequest$Type;->INVALID:Lcom/google/atap/tangoservice/fois/FoiRequest$Type;

    iput-object v0, p0, Lcom/google/atap/tangoservice/fois/FoiRequest;->mType:Lcom/google/atap/tangoservice/fois/FoiRequest$Type;

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcom/google/atap/tangoservice/fois/FoiRequest;->mId:Ljava/lang/String;

    .line 86
    iput-object p1, p0, Lcom/google/atap/tangoservice/fois/FoiRequest;->mType:Lcom/google/atap/tangoservice/fois/FoiRequest$Type;

    .line 87
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/atap/tangoservice/fois/FoiRequest$Type;Lcom/google/atap/tangoservice/fois/FoiRequest$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/atap/tangoservice/fois/FoiRequest$Type;
    .param p2, "x1"    # Lcom/google/atap/tangoservice/fois/FoiRequest$1;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/google/atap/tangoservice/fois/FoiRequest;-><init>(Lcom/google/atap/tangoservice/fois/FoiRequest$Type;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract parcelRead(Landroid/os/Parcel;)V
.end method

.method protected abstract parcelWrite(Landroid/os/Parcel;)V
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/atap/tangoservice/fois/FoiRequest;->mType:Lcom/google/atap/tangoservice/fois/FoiRequest$Type;

    invoke-virtual {v0}, Lcom/google/atap/tangoservice/fois/FoiRequest$Type;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    iget-object v0, p0, Lcom/google/atap/tangoservice/fois/FoiRequest;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0, p1}, Lcom/google/atap/tangoservice/fois/FoiRequest;->parcelWrite(Landroid/os/Parcel;)V

    .line 113
    return-void
.end method
