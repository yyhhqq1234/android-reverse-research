.class public Lcom/subao/common/intf/AppInfo;
.super Ljava/lang/Object;
.source "AppInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/subao/common/intf/AppInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final packageName:Ljava/lang/String;

.field private final uid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Lcom/subao/common/intf/AppInfo$1;

    invoke-direct {v0}, Lcom/subao/common/intf/AppInfo$1;-><init>()V

    sput-object v0, Lcom/subao/common/intf/AppInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Lcom/subao/common/intf/AppInfo;->uid:I

    .line 30
    iput-object p2, p0, Lcom/subao/common/intf/AppInfo;->packageName:Ljava/lang/String;

    .line 31
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/subao/common/intf/AppInfo;->uid:I

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 36
    if-gez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/subao/common/intf/AppInfo;->packageName:Ljava/lang/String;

    .line 37
    return-void

    .line 36
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/subao/common/intf/AppInfo$1;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/subao/common/intf/AppInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 55
    if-nez p1, :cond_1

    .line 66
    :cond_0
    :goto_0
    return v1

    .line 58
    :cond_1
    if-ne p1, p0, :cond_2

    move v1, v0

    .line 59
    goto :goto_0

    .line 61
    :cond_2
    instance-of v2, p1, Lcom/subao/common/intf/AppInfo;

    if-eqz v2, :cond_0

    .line 64
    check-cast p1, Lcom/subao/common/intf/AppInfo;

    .line 65
    iget v2, p0, Lcom/subao/common/intf/AppInfo;->uid:I

    iget v3, p1, Lcom/subao/common/intf/AppInfo;->uid:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/subao/common/intf/AppInfo;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/subao/common/intf/AppInfo;->packageName:Ljava/lang/String;

    .line 66
    invoke-static {v2, v3}, Lcom/subao/common/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/subao/common/intf/AppInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/subao/common/intf/AppInfo;->uid:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/subao/common/intf/AppInfo;->uid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    iget-object v0, p0, Lcom/subao/common/intf/AppInfo;->packageName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 78
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    :goto_0
    return-void

    .line 80
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    iget-object v0, p0, Lcom/subao/common/intf/AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0
.end method
