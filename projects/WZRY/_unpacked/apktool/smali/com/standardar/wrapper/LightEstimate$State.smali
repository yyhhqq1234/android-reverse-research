.class public final enum Lcom/standardar/wrapper/LightEstimate$State;
.super Ljava/lang/Enum;
.source "LightEstimate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/standardar/wrapper/LightEstimate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/standardar/wrapper/LightEstimate$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/standardar/wrapper/LightEstimate$State;

.field public static final enum NOT_VALID:Lcom/standardar/wrapper/LightEstimate$State;

.field public static final enum VALID:Lcom/standardar/wrapper/LightEstimate$State;


# instance fields
.field mIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 10
    new-instance v0, Lcom/standardar/wrapper/LightEstimate$State;

    const-string v1, "NOT_VALID"

    invoke-direct {v0, v1, v2, v2}, Lcom/standardar/wrapper/LightEstimate$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/standardar/wrapper/LightEstimate$State;->NOT_VALID:Lcom/standardar/wrapper/LightEstimate$State;

    new-instance v0, Lcom/standardar/wrapper/LightEstimate$State;

    const-string v1, "VALID"

    invoke-direct {v0, v1, v3, v3}, Lcom/standardar/wrapper/LightEstimate$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/standardar/wrapper/LightEstimate$State;->VALID:Lcom/standardar/wrapper/LightEstimate$State;

    .line 9
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/standardar/wrapper/LightEstimate$State;

    sget-object v1, Lcom/standardar/wrapper/LightEstimate$State;->NOT_VALID:Lcom/standardar/wrapper/LightEstimate$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/standardar/wrapper/LightEstimate$State;->VALID:Lcom/standardar/wrapper/LightEstimate$State;

    aput-object v1, v0, v3

    sput-object v0, Lcom/standardar/wrapper/LightEstimate$State;->$VALUES:[Lcom/standardar/wrapper/LightEstimate$State;

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
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/standardar/wrapper/LightEstimate$State;->mIndex:I

    return-void
.end method

.method static fromNumber(I)Lcom/standardar/wrapper/LightEstimate$State;
    .locals 5
    .param p0, "intvalue"    # I

    .prologue
    .line 15
    invoke-static {}, Lcom/standardar/wrapper/LightEstimate$State;->values()[Lcom/standardar/wrapper/LightEstimate$State;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 16
    .local v0, "state":Lcom/standardar/wrapper/LightEstimate$State;
    iget v4, v0, Lcom/standardar/wrapper/LightEstimate$State;->mIndex:I

    if-ne v4, p0, :cond_0

    .line 21
    .end local v0    # "state":Lcom/standardar/wrapper/LightEstimate$State;
    :goto_1
    return-object v0

    .line 15
    .restart local v0    # "state":Lcom/standardar/wrapper/LightEstimate$State;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 21
    .end local v0    # "state":Lcom/standardar/wrapper/LightEstimate$State;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/standardar/wrapper/LightEstimate$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 9
    const-class v0, Lcom/standardar/wrapper/LightEstimate$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/standardar/wrapper/LightEstimate$State;

    return-object v0
.end method

.method public static values()[Lcom/standardar/wrapper/LightEstimate$State;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/standardar/wrapper/LightEstimate$State;->$VALUES:[Lcom/standardar/wrapper/LightEstimate$State;

    invoke-virtual {v0}, [Lcom/standardar/wrapper/LightEstimate$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/standardar/wrapper/LightEstimate$State;

    return-object v0
.end method
