.class public final enum Lcom/standardar/common/CameraSource$CameraOrientation;
.super Ljava/lang/Enum;
.source "CameraSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/standardar/common/CameraSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CameraOrientation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/standardar/common/CameraSource$CameraOrientation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/standardar/common/CameraSource$CameraOrientation;

.field public static final enum ST_CLOCKWISE_ROTATE_0:Lcom/standardar/common/CameraSource$CameraOrientation;

.field public static final enum ST_CLOCKWISE_ROTATE_180:Lcom/standardar/common/CameraSource$CameraOrientation;

.field public static final enum ST_CLOCKWISE_ROTATE_270:Lcom/standardar/common/CameraSource$CameraOrientation;

.field public static final enum ST_CLOCKWISE_ROTATE_90:Lcom/standardar/common/CameraSource$CameraOrientation;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 73
    new-instance v0, Lcom/standardar/common/CameraSource$CameraOrientation;

    const-string v1, "ST_CLOCKWISE_ROTATE_0"

    invoke-direct {v0, v1, v2}, Lcom/standardar/common/CameraSource$CameraOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/standardar/common/CameraSource$CameraOrientation;->ST_CLOCKWISE_ROTATE_0:Lcom/standardar/common/CameraSource$CameraOrientation;

    .line 74
    new-instance v0, Lcom/standardar/common/CameraSource$CameraOrientation;

    const-string v1, "ST_CLOCKWISE_ROTATE_90"

    invoke-direct {v0, v1, v3}, Lcom/standardar/common/CameraSource$CameraOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/standardar/common/CameraSource$CameraOrientation;->ST_CLOCKWISE_ROTATE_90:Lcom/standardar/common/CameraSource$CameraOrientation;

    .line 75
    new-instance v0, Lcom/standardar/common/CameraSource$CameraOrientation;

    const-string v1, "ST_CLOCKWISE_ROTATE_180"

    invoke-direct {v0, v1, v4}, Lcom/standardar/common/CameraSource$CameraOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/standardar/common/CameraSource$CameraOrientation;->ST_CLOCKWISE_ROTATE_180:Lcom/standardar/common/CameraSource$CameraOrientation;

    .line 76
    new-instance v0, Lcom/standardar/common/CameraSource$CameraOrientation;

    const-string v1, "ST_CLOCKWISE_ROTATE_270"

    invoke-direct {v0, v1, v5}, Lcom/standardar/common/CameraSource$CameraOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/standardar/common/CameraSource$CameraOrientation;->ST_CLOCKWISE_ROTATE_270:Lcom/standardar/common/CameraSource$CameraOrientation;

    .line 72
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/standardar/common/CameraSource$CameraOrientation;

    sget-object v1, Lcom/standardar/common/CameraSource$CameraOrientation;->ST_CLOCKWISE_ROTATE_0:Lcom/standardar/common/CameraSource$CameraOrientation;

    aput-object v1, v0, v2

    sget-object v1, Lcom/standardar/common/CameraSource$CameraOrientation;->ST_CLOCKWISE_ROTATE_90:Lcom/standardar/common/CameraSource$CameraOrientation;

    aput-object v1, v0, v3

    sget-object v1, Lcom/standardar/common/CameraSource$CameraOrientation;->ST_CLOCKWISE_ROTATE_180:Lcom/standardar/common/CameraSource$CameraOrientation;

    aput-object v1, v0, v4

    sget-object v1, Lcom/standardar/common/CameraSource$CameraOrientation;->ST_CLOCKWISE_ROTATE_270:Lcom/standardar/common/CameraSource$CameraOrientation;

    aput-object v1, v0, v5

    sput-object v0, Lcom/standardar/common/CameraSource$CameraOrientation;->$VALUES:[Lcom/standardar/common/CameraSource$CameraOrientation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/standardar/common/CameraSource$CameraOrientation;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 72
    const-class v0, Lcom/standardar/common/CameraSource$CameraOrientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/standardar/common/CameraSource$CameraOrientation;

    return-object v0
.end method

.method public static values()[Lcom/standardar/common/CameraSource$CameraOrientation;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/standardar/common/CameraSource$CameraOrientation;->$VALUES:[Lcom/standardar/common/CameraSource$CameraOrientation;

    invoke-virtual {v0}, [Lcom/standardar/common/CameraSource$CameraOrientation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/standardar/common/CameraSource$CameraOrientation;

    return-object v0
.end method
