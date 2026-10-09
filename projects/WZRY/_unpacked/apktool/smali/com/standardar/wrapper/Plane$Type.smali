.class public final enum Lcom/standardar/wrapper/Plane$Type;
.super Ljava/lang/Enum;
.source "Plane.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/standardar/wrapper/Plane;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/standardar/wrapper/Plane$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/standardar/wrapper/Plane$Type;

.field public static final enum HORIZONTAL_DOWNWARD_FACING:Lcom/standardar/wrapper/Plane$Type;

.field public static final enum HORIZONTAL_UPWARD_FACING:Lcom/standardar/wrapper/Plane$Type;


# instance fields
.field mIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 13
    new-instance v0, Lcom/standardar/wrapper/Plane$Type;

    const-string v1, "HORIZONTAL_UPWARD_FACING"

    invoke-direct {v0, v1, v2, v2}, Lcom/standardar/wrapper/Plane$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/standardar/wrapper/Plane$Type;->HORIZONTAL_UPWARD_FACING:Lcom/standardar/wrapper/Plane$Type;

    new-instance v0, Lcom/standardar/wrapper/Plane$Type;

    const-string v1, "HORIZONTAL_DOWNWARD_FACING"

    invoke-direct {v0, v1, v3, v3}, Lcom/standardar/wrapper/Plane$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/standardar/wrapper/Plane$Type;->HORIZONTAL_DOWNWARD_FACING:Lcom/standardar/wrapper/Plane$Type;

    .line 12
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/standardar/wrapper/Plane$Type;

    sget-object v1, Lcom/standardar/wrapper/Plane$Type;->HORIZONTAL_UPWARD_FACING:Lcom/standardar/wrapper/Plane$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/standardar/wrapper/Plane$Type;->HORIZONTAL_DOWNWARD_FACING:Lcom/standardar/wrapper/Plane$Type;

    aput-object v1, v0, v3

    sput-object v0, Lcom/standardar/wrapper/Plane$Type;->$VALUES:[Lcom/standardar/wrapper/Plane$Type;

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
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/standardar/wrapper/Plane$Type;->mIndex:I

    return-void
.end method

.method static fromNumber(I)Lcom/standardar/wrapper/Plane$Type;
    .locals 5
    .param p0, "intvalue"    # I

    .prologue
    .line 18
    invoke-static {}, Lcom/standardar/wrapper/Plane$Type;->values()[Lcom/standardar/wrapper/Plane$Type;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 19
    .local v0, "state":Lcom/standardar/wrapper/Plane$Type;
    iget v4, v0, Lcom/standardar/wrapper/Plane$Type;->mIndex:I

    if-ne v4, p0, :cond_0

    .line 24
    .end local v0    # "state":Lcom/standardar/wrapper/Plane$Type;
    :goto_1
    return-object v0

    .line 18
    .restart local v0    # "state":Lcom/standardar/wrapper/Plane$Type;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 24
    .end local v0    # "state":Lcom/standardar/wrapper/Plane$Type;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/standardar/wrapper/Plane$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 12
    const-class v0, Lcom/standardar/wrapper/Plane$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/standardar/wrapper/Plane$Type;

    return-object v0
.end method

.method public static values()[Lcom/standardar/wrapper/Plane$Type;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/standardar/wrapper/Plane$Type;->$VALUES:[Lcom/standardar/wrapper/Plane$Type;

    invoke-virtual {v0}, [Lcom/standardar/wrapper/Plane$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/standardar/wrapper/Plane$Type;

    return-object v0
.end method
