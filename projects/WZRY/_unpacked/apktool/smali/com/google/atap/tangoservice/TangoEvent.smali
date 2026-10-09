.class public Lcom/google/atap/tangoservice/TangoEvent;
.super Ljava/lang/Object;
.source "TangoEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/atap/tangoservice/TangoEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final DESCRIPTION_COLOR_OVER_EXPOSED:Ljava/lang/String; = "ColorOverExposed"

.field public static final DESCRIPTION_COLOR_UNDER_EXPOSED:Ljava/lang/String; = "ColorUnderExposed"

.field public static final DESCRIPTION_FISHEYE_OVER_EXPOSED:Ljava/lang/String; = "FisheyeOverExposed"

.field public static final DESCRIPTION_FISHEYE_UNDER_EXPOSED:Ljava/lang/String; = "FisheyeUnderExposed"

.field public static final DESCRIPTION_SENSOR_CALLBACK_FAILURE:Ljava/lang/String; = "callback_failure"

.field public static final DESCRIPTION_SENSOR_STARTUP_FAILURE:Ljava/lang/String; = "startup_failure"

.field public static final DESCRIPTION_TOO_FEW_FEATURES_TRACKED:Ljava/lang/String; = "TooFewFeaturesTracked"

.field public static final EVENT_AREA_LEARNING:I = 0x6

.field public static final EVENT_CLOUD_ADF:I = 0x7

.field public static final EVENT_COLOR_CAMERA:I = 0x3

.field public static final EVENT_FEATURE_TRACKING:I = 0x5

.field public static final EVENT_FISHEYE_CAMERA:I = 0x2

.field public static final EVENT_GENERAL:I = 0x1

.field public static final EVENT_IMU:I = 0x4

.field public static final EVENT_SENSOR_FAILURE:I = 0x8

.field public static final EVENT_UNKNOWN:I = 0x0

.field public static final KEY_AREA_DESCRIPTION_SAVE_PROGRESS:Ljava/lang/String; = "AreaDescriptionSaveProgress"

.field public static final KEY_SENSOR_FEATURES:Ljava/lang/String; = "features"

.field public static final KEY_SENSOR_IMU:Ljava/lang/String; = "imu"

.field public static final KEY_SERVICE_EXCEPTION:Ljava/lang/String; = "TangoServiceException"

.field public static final VALUE_SERVICE_FAULT:Ljava/lang/String; = "Service faulted will restart."


# instance fields
.field public eventKey:Ljava/lang/String;

.field public eventType:I

.field public eventValue:Ljava/lang/String;

.field public timestamp:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 155
    new-instance v0, Lcom/google/atap/tangoservice/TangoEvent$1;

    invoke-direct {v0}, Lcom/google/atap/tangoservice/TangoEvent$1;-><init>()V

    sput-object v0, Lcom/google/atap/tangoservice/TangoEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    invoke-virtual {p0, p1}, Lcom/google/atap/tangoservice/TangoEvent;->readFromParcel(Landroid/os/Parcel;)V

    .line 181
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/atap/tangoservice/TangoEvent$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/google/atap/tangoservice/TangoEvent$1;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/google/atap/tangoservice/TangoEvent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 192
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 201
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/atap/tangoservice/TangoEvent;->timestamp:D

    .line 202
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/google/atap/tangoservice/TangoEvent;->eventType:I

    .line 203
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 204
    .local v0, "status":I
    if-eqz v0, :cond_0

    .line 205
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/atap/tangoservice/TangoEvent;->eventKey:Ljava/lang/String;

    .line 206
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/atap/tangoservice/TangoEvent;->eventValue:Ljava/lang/String;

    .line 208
    :cond_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 219
    iget-wide v0, p0, Lcom/google/atap/tangoservice/TangoEvent;->timestamp:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 220
    iget v0, p0, Lcom/google/atap/tangoservice/TangoEvent;->eventType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 221
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 222
    iget-object v0, p0, Lcom/google/atap/tangoservice/TangoEvent;->eventKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Lcom/google/atap/tangoservice/TangoEvent;->eventValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 224
    return-void
.end method
