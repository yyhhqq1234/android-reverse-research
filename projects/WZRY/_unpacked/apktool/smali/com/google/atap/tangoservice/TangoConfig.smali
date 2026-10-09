.class public Lcom/google/atap/tangoservice/TangoConfig;
.super Ljava/lang/Object;
.source "TangoConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CONFIG_TYPE_AREA_DESCRIPTION:I = 0x3

.field public static final CONFIG_TYPE_CURRENT:I = 0x1

.field public static final CONFIG_TYPE_DEFAULT:I = 0x0

.field public static final CONFIG_TYPE_MOTION_TRACKING:I = 0x2

.field public static final CONFIG_TYPE_RUNTIME:I = 0x4

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/atap/tangoservice/TangoConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEY_BOOLEAN_AUTORECOVERY:Ljava/lang/String; = "config_enable_auto_recovery"

.field public static final KEY_BOOLEAN_COLORCAMERA:Ljava/lang/String; = "config_enable_color_camera"

.field public static final KEY_BOOLEAN_DATASETRECORDING:Ljava/lang/String; = "config_enable_dataset_recording"

.field public static final KEY_BOOLEAN_DEPTH:Ljava/lang/String; = "config_enable_depth"

.field public static final KEY_BOOLEAN_DRIFT_CORRECTION:Ljava/lang/String; = "config_enable_drift_correction"

.field public static final KEY_BOOLEAN_EXPERIMENTAL_DEPTH_FROM_VIO:Ljava/lang/String; = "config_experimental_enable_depth_from_vio"

.field public static final KEY_BOOLEAN_EXPERIMENTAL_LOADDATASETUUID:Ljava/lang/String; = "config_experimental_load_dataset_UUID"

.field public static final KEY_BOOLEAN_EXPERIMENTAL_ONLINE_CALIBRATION:Ljava/lang/String; = "config_experimental_enable_online_calibration"

.field public static final KEY_BOOLEAN_EXPERIMENTAL_PLANE_DETECTION:Ljava/lang/String; = "config_experimental_enable_plane_detection"

.field public static final KEY_BOOLEAN_HIGH_RATE_POSE:Ljava/lang/String; = "config_high_rate_pose"

.field public static final KEY_BOOLEAN_LEARNINGMODE:Ljava/lang/String; = "config_enable_learning_mode"

.field public static final KEY_BOOLEAN_LOWLATENCYIMUINTEGRATION:Ljava/lang/String; = "config_enable_low_latency_imu_integration"

.field public static final KEY_BOOLEAN_MOTIONTRACKING:Ljava/lang/String; = "config_enable_motion_tracking"

.field public static final KEY_BOOLEAN_SMOOTH_POSE:Ljava/lang/String; = "config_smooth_pose"

.field public static final KEY_BOOLEAN_USE_3DOF_FALLBACK:Ljava/lang/String; = "config_experimental_3dof_fallback"

.field public static final KEY_DOUBLE_DEPTHPERIODINSECONDS:Ljava/lang/String; = "depth_period_in_seconds"

.field public static final KEY_INT_DATASETRECORDING_MODE:Ljava/lang/String; = "config_dataset_recording_mode"

.field public static final KEY_INT_DEPTH_MODE:Ljava/lang/String; = "config_depth_mode"

.field public static final KEY_INT_EXPERIMENTAL_RUNTIME_PLANE_DETECTION_CONTROL:Ljava/lang/String; = "config_runtime_plane_detection_control"

.field public static final KEY_INT_EXPERIMENTAL_RUNTIME_RECORDING_CONTROL:Ljava/lang/String; = "config_runtime_recording_control"

.field public static final KEY_INT_MAXPOINTCLOUDELEMENTS:Ljava/lang/String; = "max_point_cloud_elements"

.field public static final KEY_INT_RUNTIME_DEPTH_FRAMERATE:Ljava/lang/String; = "config_runtime_depth_framerate"

.field public static final KEY_STRING_AREADESCRIPTION:Ljava/lang/String; = "config_load_area_description_UUID"

.field public static final KEY_STRING_DATASETS_PATH:Ljava/lang/String; = "config_datasets_path"

.field public static final KEY_STRING_LETANGO_LOADDATASETUUID:Ljava/lang/String; = "config_letango_load_dataset_UUID"

.field public static final KEY_STRING_SERVICEVERSION:Ljava/lang/String; = "tango_service_library_version"

.field public static final TANGO_DATASETRECORDING_MODE_ALL:I = 0x3

.field public static final TANGO_DATASETRECORDING_MODE_MOTION_TRACKING:I = 0x0

.field public static final TANGO_DATASETRECORDING_MODE_MOTION_TRACKING_AND_FISHEYE:I = 0x2

.field public static final TANGO_DATASETRECORDING_MODE_SCENE_RECONSTRUCTION:I = 0x1

.field public static final TANGO_DEPTH_MODE_POINT_CLOUD:I = 0x0

.field public static final TANGO_DEPTH_MODE_XYZ_IJ:I = -0x1

.field public static final TANGO_RUNTIME_PLANE_DETECTION_NO_CHANGE:I = 0x0

.field public static final TANGO_RUNTIME_PLANE_DETECTION_START:I = 0x1

.field public static final TANGO_RUNTIME_PLANE_DETECTION_STOP:I = 0x2

.field public static final TANGO_RUNTIME_RECORDING_NO_CHANGE:I = 0x0

.field public static final TANGO_RUNTIME_RECORDING_START:I = 0x1

.field public static final TANGO_RUNTIME_RECORDING_STOP:I = 0x2

.field private static final VALUETYPE_BOOL:Ljava/lang/String; = "bool"

.field private static final VALUETYPE_DOUBLE:Ljava/lang/String; = "double"

.field private static final VALUETYPE_INT32:Ljava/lang/String; = "int32"

.field private static final VALUETYPE_INT64:Ljava/lang/String; = "uint64"

.field private static final VALUETYPE_STRING:Ljava/lang/String; = "string"


# instance fields
.field private data:Landroid/os/Bundle;

.field private typemap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 325
    new-instance v0, Lcom/google/atap/tangoservice/TangoConfig$1;

    invoke-direct {v0}, Lcom/google/atap/tangoservice/TangoConfig$1;-><init>()V

    sput-object v0, Lcom/google/atap/tangoservice/TangoConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 341
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 342
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/atap/tangoservice/TangoConfig;->data:Landroid/os/Bundle;

    .line 343
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/atap/tangoservice/TangoConfig;->typemap:Ljava/util/HashMap;

    .line 344
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 353
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/atap/tangoservice/TangoConfig;->data:Landroid/os/Bundle;

    .line 354
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/atap/tangoservice/TangoConfig;->typemap:Ljava/util/HashMap;

    .line 355
    invoke-virtual {p0, p1}, Lcom/google/atap/tangoservice/TangoConfig;->readFromParcel(Landroid/os/Parcel;)V

    .line 356
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/atap/tangoservice/TangoConfig$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/google/atap/tangoservice/TangoConfig$1;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/google/atap/tangoservice/TangoConfig;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 488
    const/4 v0, 0x0

    return v0
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 373
    iget-object v0, p0, Lcom/google/atap/tangoservice/TangoConfig;->data:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getDouble(Ljava/lang/String;)D
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 406
    iget-object v0, p0, Lcom/google/atap/tangoservice/TangoConfig;->data:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 384
    iget-object v0, p0, Lcom/google/atap/tangoservice/TangoConfig;->data:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 395
    iget-object v0, p0, Lcom/google/atap/tangoservice/TangoConfig;->data:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 417
    iget-object v0, p0, Lcom/google/atap/tangoservice/TangoConfig;->data:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 362
    iget-object v0, p0, Lcom/google/atap/tangoservice/TangoConfig;->typemap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public putBoolean(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 428
    iget-object v0, p0, Lcom/google/atap/tangoservice/TangoConfig;->typemap:Ljava/util/HashMap;

    const-string v1, "bool"

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    iget-object v0, p0, Lcom/google/atap/tangoservice/TangoConfig;->data:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 430
    return-void
.end method

.method public putDouble(Ljava/lang/String;D)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # D

    .prologue
    .line 463
    iget-object v0, p0, Lcom/google/atap/tangoservice/TangoConfig;->typemap:Ljava/util/HashMap;

    const-string v1, "double"

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    iget-object v0, p0, Lcom/google/atap/tangoservice/TangoConfig;->data:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 465
    return-void
.end method

.method public putInt(Ljava/lang/String;I)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 440
    iget-object v0, p0, Lcom/google/atap/tangoservice/TangoConfig;->typemap:Ljava/util/HashMap;

    const-string v1, "int32"

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    iget-object v0, p0, Lcom/google/atap/tangoservice/TangoConfig;->data:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 442
    return-void
.end method

.method public putLong(Ljava/lang/String;J)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 452
    iget-object v0, p0, Lcom/google/atap/tangoservice/TangoConfig;->typemap:Ljava/util/HashMap;

    const-string/jumbo v1, "uint64"

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    iget-object v0, p0, Lcom/google/atap/tangoservice/TangoConfig;->data:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 454
    return-void
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 475
    iget-object v0, p0, Lcom/google/atap/tangoservice/TangoConfig;->typemap:Ljava/util/HashMap;

    const-string/jumbo v1, "string"

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    iget-object v0, p0, Lcom/google/atap/tangoservice/TangoConfig;->data:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 501
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v4

    if-lez v4, :cond_5

    .line 502
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 503
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 504
    .local v3, "valueType":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 505
    .local v0, "desc":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 506
    .local v2, "value":Ljava/lang/String;
    const-string v4, "bool"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 507
    const-string/jumbo v4, "true"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {p0, v1, v4}, Lcom/google/atap/tangoservice/TangoConfig;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 508
    :cond_1
    const-string v4, "int32"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 509
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p0, v1, v4}, Lcom/google/atap/tangoservice/TangoConfig;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 510
    :cond_2
    const-string/jumbo v4, "uint64"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 511
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {p0, v1, v4, v5}, Lcom/google/atap/tangoservice/TangoConfig;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    .line 512
    :cond_3
    const-string v4, "double"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 513
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-virtual {p0, v1, v4, v5}, Lcom/google/atap/tangoservice/TangoConfig;->putDouble(Ljava/lang/String;D)V

    goto :goto_0

    .line 514
    :cond_4
    const-string/jumbo v4, "string"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 515
    invoke-virtual {p0, v1, v2}, Lcom/google/atap/tangoservice/TangoConfig;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 518
    .end local v0    # "desc":Ljava/lang/String;
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/String;
    .end local v3    # "valueType":Ljava/lang/String;
    :cond_5
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 8
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 533
    iget-object v4, p0, Lcom/google/atap/tangoservice/TangoConfig;->typemap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 534
    .local v1, "keyIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 535
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 536
    .local v0, "key":Ljava/lang/String;
    iget-object v4, p0, Lcom/google/atap/tangoservice/TangoConfig;->typemap:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 537
    .local v3, "valueType":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 538
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 540
    const-string v4, "desc"

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 541
    const-string v2, ""

    .line 542
    .local v2, "valueString":Ljava/lang/String;
    const-string v4, "bool"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 543
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v0}, Lcom/google/atap/tangoservice/TangoConfig;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 553
    :cond_0
    :goto_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 544
    :cond_1
    const-string v4, "int32"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 545
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v0}, Lcom/google/atap/tangoservice/TangoConfig;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 546
    :cond_2
    const-string/jumbo v4, "uint64"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 547
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v0}, Lcom/google/atap/tangoservice/TangoConfig;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 548
    :cond_3
    const-string v4, "double"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 549
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v0}, Lcom/google/atap/tangoservice/TangoConfig;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 550
    :cond_4
    const-string/jumbo v4, "string"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 551
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v0}, Lcom/google/atap/tangoservice/TangoConfig;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 555
    .end local v0    # "key":Ljava/lang/String;
    .end local v2    # "valueString":Ljava/lang/String;
    .end local v3    # "valueType":Ljava/lang/String;
    :cond_5
    return-void
.end method
