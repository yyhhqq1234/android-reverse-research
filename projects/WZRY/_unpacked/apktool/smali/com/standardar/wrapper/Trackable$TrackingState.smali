.class public final enum Lcom/standardar/wrapper/Trackable$TrackingState;
.super Ljava/lang/Enum;
.source "Trackable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/standardar/wrapper/Trackable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TrackingState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/standardar/wrapper/Trackable$TrackingState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/standardar/wrapper/Trackable$TrackingState;

.field public static final enum PAUSED:Lcom/standardar/wrapper/Trackable$TrackingState;

.field public static final enum STOPPED:Lcom/standardar/wrapper/Trackable$TrackingState;

.field public static final enum TRACKING:Lcom/standardar/wrapper/Trackable$TrackingState;


# instance fields
.field mIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 10
    new-instance v0, Lcom/standardar/wrapper/Trackable$TrackingState;

    const-string v1, "TRACKING"

    invoke-direct {v0, v1, v2, v2}, Lcom/standardar/wrapper/Trackable$TrackingState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/standardar/wrapper/Trackable$TrackingState;->TRACKING:Lcom/standardar/wrapper/Trackable$TrackingState;

    new-instance v0, Lcom/standardar/wrapper/Trackable$TrackingState;

    const-string v1, "PAUSED"

    invoke-direct {v0, v1, v3, v3}, Lcom/standardar/wrapper/Trackable$TrackingState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/standardar/wrapper/Trackable$TrackingState;->PAUSED:Lcom/standardar/wrapper/Trackable$TrackingState;

    new-instance v0, Lcom/standardar/wrapper/Trackable$TrackingState;

    const-string v1, "STOPPED"

    invoke-direct {v0, v1, v4, v4}, Lcom/standardar/wrapper/Trackable$TrackingState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/standardar/wrapper/Trackable$TrackingState;->STOPPED:Lcom/standardar/wrapper/Trackable$TrackingState;

    .line 9
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/standardar/wrapper/Trackable$TrackingState;

    sget-object v1, Lcom/standardar/wrapper/Trackable$TrackingState;->TRACKING:Lcom/standardar/wrapper/Trackable$TrackingState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/standardar/wrapper/Trackable$TrackingState;->PAUSED:Lcom/standardar/wrapper/Trackable$TrackingState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/standardar/wrapper/Trackable$TrackingState;->STOPPED:Lcom/standardar/wrapper/Trackable$TrackingState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/standardar/wrapper/Trackable$TrackingState;->$VALUES:[Lcom/standardar/wrapper/Trackable$TrackingState;

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

    iput p3, p0, Lcom/standardar/wrapper/Trackable$TrackingState;->mIndex:I

    return-void
.end method

.method static fromNumber(I)Lcom/standardar/wrapper/Trackable$TrackingState;
    .locals 5
    .param p0, "intvalue"    # I

    .prologue
    .line 15
    invoke-static {}, Lcom/standardar/wrapper/Trackable$TrackingState;->values()[Lcom/standardar/wrapper/Trackable$TrackingState;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 16
    .local v0, "state":Lcom/standardar/wrapper/Trackable$TrackingState;
    iget v4, v0, Lcom/standardar/wrapper/Trackable$TrackingState;->mIndex:I

    if-ne v4, p0, :cond_0

    .line 21
    .end local v0    # "state":Lcom/standardar/wrapper/Trackable$TrackingState;
    :goto_1
    return-object v0

    .line 15
    .restart local v0    # "state":Lcom/standardar/wrapper/Trackable$TrackingState;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 21
    .end local v0    # "state":Lcom/standardar/wrapper/Trackable$TrackingState;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/standardar/wrapper/Trackable$TrackingState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 9
    const-class v0, Lcom/standardar/wrapper/Trackable$TrackingState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/standardar/wrapper/Trackable$TrackingState;

    return-object v0
.end method

.method public static values()[Lcom/standardar/wrapper/Trackable$TrackingState;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/standardar/wrapper/Trackable$TrackingState;->$VALUES:[Lcom/standardar/wrapper/Trackable$TrackingState;

    invoke-virtual {v0}, [Lcom/standardar/wrapper/Trackable$TrackingState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/standardar/wrapper/Trackable$TrackingState;

    return-object v0
.end method
