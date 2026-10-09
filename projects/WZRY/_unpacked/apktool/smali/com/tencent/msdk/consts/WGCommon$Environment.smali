.class public final enum Lcom/tencent/msdk/consts/WGCommon$Environment;
.super Ljava/lang/Enum;
.source "WGCommon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/msdk/consts/WGCommon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Environment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/tencent/msdk/consts/WGCommon$Environment;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tencent/msdk/consts/WGCommon$Environment;

.field public static final enum ONLINE:Lcom/tencent/msdk/consts/WGCommon$Environment;

.field public static final enum TEST:Lcom/tencent/msdk/consts/WGCommon$Environment;


# instance fields
.field value:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 10
    new-instance v0, Lcom/tencent/msdk/consts/WGCommon$Environment;

    const-string v1, "TEST"

    invoke-direct {v0, v1, v2, v2}, Lcom/tencent/msdk/consts/WGCommon$Environment;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/msdk/consts/WGCommon$Environment;->TEST:Lcom/tencent/msdk/consts/WGCommon$Environment;

    new-instance v0, Lcom/tencent/msdk/consts/WGCommon$Environment;

    const-string v1, "ONLINE"

    invoke-direct {v0, v1, v3, v3}, Lcom/tencent/msdk/consts/WGCommon$Environment;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/msdk/consts/WGCommon$Environment;->ONLINE:Lcom/tencent/msdk/consts/WGCommon$Environment;

    .line 9
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/tencent/msdk/consts/WGCommon$Environment;

    sget-object v1, Lcom/tencent/msdk/consts/WGCommon$Environment;->TEST:Lcom/tencent/msdk/consts/WGCommon$Environment;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tencent/msdk/consts/WGCommon$Environment;->ONLINE:Lcom/tencent/msdk/consts/WGCommon$Environment;

    aput-object v1, v0, v3

    sput-object v0, Lcom/tencent/msdk/consts/WGCommon$Environment;->$VALUES:[Lcom/tencent/msdk/consts/WGCommon$Environment;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .param p3, "val"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 12
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/msdk/consts/WGCommon$Environment;->value:I

    .line 15
    iput p3, p0, Lcom/tencent/msdk/consts/WGCommon$Environment;->value:I

    .line 16
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/msdk/consts/WGCommon$Environment;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 9
    const-class v0, Lcom/tencent/msdk/consts/WGCommon$Environment;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tencent/msdk/consts/WGCommon$Environment;

    return-object v0
.end method

.method public static values()[Lcom/tencent/msdk/consts/WGCommon$Environment;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/tencent/msdk/consts/WGCommon$Environment;->$VALUES:[Lcom/tencent/msdk/consts/WGCommon$Environment;

    invoke-virtual {v0}, [Lcom/tencent/msdk/consts/WGCommon$Environment;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/msdk/consts/WGCommon$Environment;

    return-object v0
.end method


# virtual methods
.method public val()I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/tencent/msdk/consts/WGCommon$Environment;->value:I

    return v0
.end method
