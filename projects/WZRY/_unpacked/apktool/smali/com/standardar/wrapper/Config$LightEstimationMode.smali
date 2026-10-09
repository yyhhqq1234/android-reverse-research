.class public final enum Lcom/standardar/wrapper/Config$LightEstimationMode;
.super Ljava/lang/Enum;
.source "Config.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/standardar/wrapper/Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LightEstimationMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/standardar/wrapper/Config$LightEstimationMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/standardar/wrapper/Config$LightEstimationMode;

.field public static final enum AMBIENT_INTENSITY:Lcom/standardar/wrapper/Config$LightEstimationMode;

.field public static final enum DISABLED:Lcom/standardar/wrapper/Config$LightEstimationMode;


# instance fields
.field final mIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 12
    new-instance v0, Lcom/standardar/wrapper/Config$LightEstimationMode;

    const-string v1, "DISABLED"

    invoke-direct {v0, v1, v2, v2}, Lcom/standardar/wrapper/Config$LightEstimationMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/standardar/wrapper/Config$LightEstimationMode;->DISABLED:Lcom/standardar/wrapper/Config$LightEstimationMode;

    new-instance v0, Lcom/standardar/wrapper/Config$LightEstimationMode;

    const-string v1, "AMBIENT_INTENSITY"

    invoke-direct {v0, v1, v3, v3}, Lcom/standardar/wrapper/Config$LightEstimationMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/standardar/wrapper/Config$LightEstimationMode;->AMBIENT_INTENSITY:Lcom/standardar/wrapper/Config$LightEstimationMode;

    .line 11
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/standardar/wrapper/Config$LightEstimationMode;

    sget-object v1, Lcom/standardar/wrapper/Config$LightEstimationMode;->DISABLED:Lcom/standardar/wrapper/Config$LightEstimationMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/standardar/wrapper/Config$LightEstimationMode;->AMBIENT_INTENSITY:Lcom/standardar/wrapper/Config$LightEstimationMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/standardar/wrapper/Config$LightEstimationMode;->$VALUES:[Lcom/standardar/wrapper/Config$LightEstimationMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/standardar/wrapper/Config$LightEstimationMode;->mIndex:I

    return-void
.end method

.method public static fromNumber(I)Lcom/standardar/wrapper/Config$LightEstimationMode;
    .locals 5
    .param p0, "intvalue"    # I

    .prologue
    .line 17
    invoke-static {}, Lcom/standardar/wrapper/Config$LightEstimationMode;->values()[Lcom/standardar/wrapper/Config$LightEstimationMode;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 18
    .local v0, "mode":Lcom/standardar/wrapper/Config$LightEstimationMode;
    iget v4, v0, Lcom/standardar/wrapper/Config$LightEstimationMode;->mIndex:I

    if-ne v4, p0, :cond_0

    .line 23
    .end local v0    # "mode":Lcom/standardar/wrapper/Config$LightEstimationMode;
    :goto_1
    return-object v0

    .line 17
    .restart local v0    # "mode":Lcom/standardar/wrapper/Config$LightEstimationMode;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 23
    .end local v0    # "mode":Lcom/standardar/wrapper/Config$LightEstimationMode;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/standardar/wrapper/Config$LightEstimationMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 11
    const-class v0, Lcom/standardar/wrapper/Config$LightEstimationMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/standardar/wrapper/Config$LightEstimationMode;

    return-object v0
.end method

.method public static values()[Lcom/standardar/wrapper/Config$LightEstimationMode;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/standardar/wrapper/Config$LightEstimationMode;->$VALUES:[Lcom/standardar/wrapper/Config$LightEstimationMode;

    invoke-virtual {v0}, [Lcom/standardar/wrapper/Config$LightEstimationMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/standardar/wrapper/Config$LightEstimationMode;

    return-object v0
.end method
