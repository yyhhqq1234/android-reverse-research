.class public final enum Lcom/standardar/wrapper/Frame$HitTestMode;
.super Ljava/lang/Enum;
.source "Frame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/standardar/wrapper/Frame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HitTestMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/standardar/wrapper/Frame$HitTestMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/standardar/wrapper/Frame$HitTestMode;

.field public static final enum AR_HIT_TEST_MODE_POLYGON_AND_HORIZONPLANE:Lcom/standardar/wrapper/Frame$HitTestMode;

.field public static final enum AR_HIT_TEST_MODE_POLYGON_ONLY:Lcom/standardar/wrapper/Frame$HitTestMode;

.field public static final enum AR_HIT_TEST_MODE_POLYGON_PERSISTENCE:Lcom/standardar/wrapper/Frame$HitTestMode;


# instance fields
.field final nativeCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 17
    new-instance v0, Lcom/standardar/wrapper/Frame$HitTestMode;

    const-string v1, "AR_HIT_TEST_MODE_POLYGON_ONLY"

    invoke-direct {v0, v1, v2, v2}, Lcom/standardar/wrapper/Frame$HitTestMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/standardar/wrapper/Frame$HitTestMode;->AR_HIT_TEST_MODE_POLYGON_ONLY:Lcom/standardar/wrapper/Frame$HitTestMode;

    .line 18
    new-instance v0, Lcom/standardar/wrapper/Frame$HitTestMode;

    const-string v1, "AR_HIT_TEST_MODE_POLYGON_AND_HORIZONPLANE"

    invoke-direct {v0, v1, v3, v3}, Lcom/standardar/wrapper/Frame$HitTestMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/standardar/wrapper/Frame$HitTestMode;->AR_HIT_TEST_MODE_POLYGON_AND_HORIZONPLANE:Lcom/standardar/wrapper/Frame$HitTestMode;

    .line 19
    new-instance v0, Lcom/standardar/wrapper/Frame$HitTestMode;

    const-string v1, "AR_HIT_TEST_MODE_POLYGON_PERSISTENCE"

    invoke-direct {v0, v1, v4, v4}, Lcom/standardar/wrapper/Frame$HitTestMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/standardar/wrapper/Frame$HitTestMode;->AR_HIT_TEST_MODE_POLYGON_PERSISTENCE:Lcom/standardar/wrapper/Frame$HitTestMode;

    .line 16
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/standardar/wrapper/Frame$HitTestMode;

    sget-object v1, Lcom/standardar/wrapper/Frame$HitTestMode;->AR_HIT_TEST_MODE_POLYGON_ONLY:Lcom/standardar/wrapper/Frame$HitTestMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/standardar/wrapper/Frame$HitTestMode;->AR_HIT_TEST_MODE_POLYGON_AND_HORIZONPLANE:Lcom/standardar/wrapper/Frame$HitTestMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/standardar/wrapper/Frame$HitTestMode;->AR_HIT_TEST_MODE_POLYGON_PERSISTENCE:Lcom/standardar/wrapper/Frame$HitTestMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/standardar/wrapper/Frame$HitTestMode;->$VALUES:[Lcom/standardar/wrapper/Frame$HitTestMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "nativeCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 24
    iput p3, p0, Lcom/standardar/wrapper/Frame$HitTestMode;->nativeCode:I

    .line 25
    return-void
.end method

.method static forNumber(I)Lcom/standardar/wrapper/Frame$HitTestMode;
    .locals 5
    .param p0, "nativeCode"    # I

    .prologue
    .line 28
    invoke-static {}, Lcom/standardar/wrapper/Frame$HitTestMode;->values()[Lcom/standardar/wrapper/Frame$HitTestMode;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 29
    .local v0, "state":Lcom/standardar/wrapper/Frame$HitTestMode;
    iget v4, v0, Lcom/standardar/wrapper/Frame$HitTestMode;->nativeCode:I

    if-ne v4, p0, :cond_0

    .line 33
    .end local v0    # "state":Lcom/standardar/wrapper/Frame$HitTestMode;
    :goto_1
    return-object v0

    .line 28
    .restart local v0    # "state":Lcom/standardar/wrapper/Frame$HitTestMode;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 33
    .end local v0    # "state":Lcom/standardar/wrapper/Frame$HitTestMode;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/standardar/wrapper/Frame$HitTestMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 16
    const-class v0, Lcom/standardar/wrapper/Frame$HitTestMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/standardar/wrapper/Frame$HitTestMode;

    return-object v0
.end method

.method public static values()[Lcom/standardar/wrapper/Frame$HitTestMode;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/standardar/wrapper/Frame$HitTestMode;->$VALUES:[Lcom/standardar/wrapper/Frame$HitTestMode;

    invoke-virtual {v0}, [Lcom/standardar/wrapper/Frame$HitTestMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/standardar/wrapper/Frame$HitTestMode;

    return-object v0
.end method
