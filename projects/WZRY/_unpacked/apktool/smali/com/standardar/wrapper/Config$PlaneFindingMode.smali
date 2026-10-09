.class public final enum Lcom/standardar/wrapper/Config$PlaneFindingMode;
.super Ljava/lang/Enum;
.source "Config.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/standardar/wrapper/Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PlaneFindingMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/standardar/wrapper/Config$PlaneFindingMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/standardar/wrapper/Config$PlaneFindingMode;

.field public static final enum DISABLED:Lcom/standardar/wrapper/Config$PlaneFindingMode;

.field public static final enum HORIZONTAL:Lcom/standardar/wrapper/Config$PlaneFindingMode;

.field public static final enum HORIZONTAL_VERTICAL:Lcom/standardar/wrapper/Config$PlaneFindingMode;


# instance fields
.field final mIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 28
    new-instance v0, Lcom/standardar/wrapper/Config$PlaneFindingMode;

    const-string v1, "DISABLED"

    invoke-direct {v0, v1, v2, v2}, Lcom/standardar/wrapper/Config$PlaneFindingMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/standardar/wrapper/Config$PlaneFindingMode;->DISABLED:Lcom/standardar/wrapper/Config$PlaneFindingMode;

    new-instance v0, Lcom/standardar/wrapper/Config$PlaneFindingMode;

    const-string v1, "HORIZONTAL"

    invoke-direct {v0, v1, v3, v3}, Lcom/standardar/wrapper/Config$PlaneFindingMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/standardar/wrapper/Config$PlaneFindingMode;->HORIZONTAL:Lcom/standardar/wrapper/Config$PlaneFindingMode;

    new-instance v0, Lcom/standardar/wrapper/Config$PlaneFindingMode;

    const-string v1, "HORIZONTAL_VERTICAL"

    invoke-direct {v0, v1, v4, v4}, Lcom/standardar/wrapper/Config$PlaneFindingMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/standardar/wrapper/Config$PlaneFindingMode;->HORIZONTAL_VERTICAL:Lcom/standardar/wrapper/Config$PlaneFindingMode;

    .line 27
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/standardar/wrapper/Config$PlaneFindingMode;

    sget-object v1, Lcom/standardar/wrapper/Config$PlaneFindingMode;->DISABLED:Lcom/standardar/wrapper/Config$PlaneFindingMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/standardar/wrapper/Config$PlaneFindingMode;->HORIZONTAL:Lcom/standardar/wrapper/Config$PlaneFindingMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/standardar/wrapper/Config$PlaneFindingMode;->HORIZONTAL_VERTICAL:Lcom/standardar/wrapper/Config$PlaneFindingMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/standardar/wrapper/Config$PlaneFindingMode;->$VALUES:[Lcom/standardar/wrapper/Config$PlaneFindingMode;

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
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/standardar/wrapper/Config$PlaneFindingMode;->mIndex:I

    return-void
.end method

.method public static fromNumber(I)Lcom/standardar/wrapper/Config$PlaneFindingMode;
    .locals 5
    .param p0, "intvalue"    # I

    .prologue
    .line 33
    invoke-static {}, Lcom/standardar/wrapper/Config$PlaneFindingMode;->values()[Lcom/standardar/wrapper/Config$PlaneFindingMode;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 34
    .local v0, "mode":Lcom/standardar/wrapper/Config$PlaneFindingMode;
    iget v4, v0, Lcom/standardar/wrapper/Config$PlaneFindingMode;->mIndex:I

    if-ne v4, p0, :cond_0

    .line 39
    .end local v0    # "mode":Lcom/standardar/wrapper/Config$PlaneFindingMode;
    :goto_1
    return-object v0

    .line 33
    .restart local v0    # "mode":Lcom/standardar/wrapper/Config$PlaneFindingMode;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 39
    .end local v0    # "mode":Lcom/standardar/wrapper/Config$PlaneFindingMode;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/standardar/wrapper/Config$PlaneFindingMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 27
    const-class v0, Lcom/standardar/wrapper/Config$PlaneFindingMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/standardar/wrapper/Config$PlaneFindingMode;

    return-object v0
.end method

.method public static values()[Lcom/standardar/wrapper/Config$PlaneFindingMode;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/standardar/wrapper/Config$PlaneFindingMode;->$VALUES:[Lcom/standardar/wrapper/Config$PlaneFindingMode;

    invoke-virtual {v0}, [Lcom/standardar/wrapper/Config$PlaneFindingMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/standardar/wrapper/Config$PlaneFindingMode;

    return-object v0
.end method
