.class public final Lcom/tencent/component/plugin/PluginInfo$ExtraInfo;
.super Ljava/lang/Object;
.source "PluginInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/component/plugin/PluginInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ExtraInfo"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/tencent/component/plugin/PluginInfo$ExtraInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final SINGLE_TOP_EXACTLY:I = 0x2

.field public static final SINGLE_TOP_NONE:I = 0x0

.field public static final SINGLE_TOP_STANDARD:I = 0x1


# instance fields
.field public autoLoad:Z

.field public liveUpdate:Ljava/lang/Boolean;

.field public singleProcess:Z

.field public singleTop:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 416
    new-instance v0, Lcom/tencent/component/plugin/PluginInfo$ExtraInfo$1;

    invoke-direct {v0}, Lcom/tencent/component/plugin/PluginInfo$ExtraInfo$1;-><init>()V

    sput-object v0, Lcom/tencent/component/plugin/PluginInfo$ExtraInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 382
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 383
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 385
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 386
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/tencent/component/plugin/PluginInfo$ExtraInfo;->singleTop:I

    .line 387
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/tencent/component/plugin/PluginInfo$ExtraInfo;->singleProcess:Z

    .line 388
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 389
    .local v0, "liveUpdateInt":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const/4 v1, 0x0

    :goto_1
    iput-object v1, p0, Lcom/tencent/component/plugin/PluginInfo$ExtraInfo;->liveUpdate:Ljava/lang/Boolean;

    .line 390
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3

    :goto_2
    iput-boolean v2, p0, Lcom/tencent/component/plugin/PluginInfo$ExtraInfo;->autoLoad:Z

    .line 391
    return-void

    .end local v0    # "liveUpdateInt":I
    :cond_0
    move v1, v3

    .line 387
    goto :goto_0

    .line 389
    .restart local v0    # "liveUpdateInt":I
    :cond_1
    if-eqz v0, :cond_2

    move v1, v2

    :goto_3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_1

    :cond_2
    move v1, v3

    goto :goto_3

    :cond_3
    move v2, v3

    .line 390
    goto :goto_2
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/tencent/component/plugin/PluginInfo$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/tencent/component/plugin/PluginInfo$1;

    .prologue
    .line 363
    invoke-direct {p0, p1}, Lcom/tencent/component/plugin/PluginInfo$ExtraInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 405
    const/4 v0, 0x0

    return v0
.end method

.method public setTo(Lcom/tencent/component/plugin/PluginInfo$ExtraInfo;)V
    .locals 1
    .param p1, "src"    # Lcom/tencent/component/plugin/PluginInfo$ExtraInfo;

    .prologue
    .line 394
    if-nez p1, :cond_0

    .line 401
    :goto_0
    return-void

    .line 397
    :cond_0
    iget v0, p1, Lcom/tencent/component/plugin/PluginInfo$ExtraInfo;->singleTop:I

    iput v0, p0, Lcom/tencent/component/plugin/PluginInfo$ExtraInfo;->singleTop:I

    .line 398
    iget-boolean v0, p1, Lcom/tencent/component/plugin/PluginInfo$ExtraInfo;->singleProcess:Z

    iput-boolean v0, p0, Lcom/tencent/component/plugin/PluginInfo$ExtraInfo;->singleProcess:Z

    .line 399
    iget-object v0, p1, Lcom/tencent/component/plugin/PluginInfo$ExtraInfo;->liveUpdate:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/tencent/component/plugin/PluginInfo$ExtraInfo;->liveUpdate:Ljava/lang/Boolean;

    .line 400
    iget-boolean v0, p1, Lcom/tencent/component/plugin/PluginInfo$ExtraInfo;->autoLoad:Z

    iput-boolean v0, p0, Lcom/tencent/component/plugin/PluginInfo$ExtraInfo;->autoLoad:Z

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 410
    iget v0, p0, Lcom/tencent/component/plugin/PluginInfo$ExtraInfo;->singleTop:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 411
    iget-boolean v0, p0, Lcom/tencent/component/plugin/PluginInfo$ExtraInfo;->singleProcess:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 412
    iget-object v0, p0, Lcom/tencent/component/plugin/PluginInfo$ExtraInfo;->liveUpdate:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    const/4 v0, -0x1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 413
    iget-boolean v0, p0, Lcom/tencent/component/plugin/PluginInfo$ExtraInfo;->autoLoad:Z

    if-eqz v0, :cond_3

    :goto_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 414
    return-void

    :cond_0
    move v0, v2

    .line 411
    goto :goto_0

    .line 412
    :cond_1
    iget-object v0, p0, Lcom/tencent/component/plugin/PluginInfo$ExtraInfo;->liveUpdate:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    move v1, v2

    .line 413
    goto :goto_2
.end method
