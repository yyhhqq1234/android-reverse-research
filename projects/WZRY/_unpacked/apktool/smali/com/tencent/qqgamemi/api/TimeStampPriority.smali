.class public final enum Lcom/tencent/qqgamemi/api/TimeStampPriority;
.super Ljava/lang/Enum;
.source "TimeStampPriority.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/tencent/qqgamemi/api/TimeStampPriority;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tencent/qqgamemi/api/TimeStampPriority;

.field public static final enum Level_1:Lcom/tencent/qqgamemi/api/TimeStampPriority;

.field public static final enum Level_2:Lcom/tencent/qqgamemi/api/TimeStampPriority;

.field public static final enum Level_3:Lcom/tencent/qqgamemi/api/TimeStampPriority;

.field public static final enum Level_4:Lcom/tencent/qqgamemi/api/TimeStampPriority;

.field public static final enum Level_5:Lcom/tencent/qqgamemi/api/TimeStampPriority;

.field public static final enum None:Lcom/tencent/qqgamemi/api/TimeStampPriority;


# instance fields
.field private code:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 9
    new-instance v0, Lcom/tencent/qqgamemi/api/TimeStampPriority;

    const-string v1, "None"

    invoke-direct {v0, v1, v4, v4}, Lcom/tencent/qqgamemi/api/TimeStampPriority;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/qqgamemi/api/TimeStampPriority;->None:Lcom/tencent/qqgamemi/api/TimeStampPriority;

    .line 10
    new-instance v0, Lcom/tencent/qqgamemi/api/TimeStampPriority;

    const-string v1, "Level_1"

    invoke-direct {v0, v1, v5, v5}, Lcom/tencent/qqgamemi/api/TimeStampPriority;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/qqgamemi/api/TimeStampPriority;->Level_1:Lcom/tencent/qqgamemi/api/TimeStampPriority;

    .line 11
    new-instance v0, Lcom/tencent/qqgamemi/api/TimeStampPriority;

    const-string v1, "Level_2"

    invoke-direct {v0, v1, v6, v6}, Lcom/tencent/qqgamemi/api/TimeStampPriority;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/qqgamemi/api/TimeStampPriority;->Level_2:Lcom/tencent/qqgamemi/api/TimeStampPriority;

    .line 12
    new-instance v0, Lcom/tencent/qqgamemi/api/TimeStampPriority;

    const-string v1, "Level_3"

    invoke-direct {v0, v1, v7, v7}, Lcom/tencent/qqgamemi/api/TimeStampPriority;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/qqgamemi/api/TimeStampPriority;->Level_3:Lcom/tencent/qqgamemi/api/TimeStampPriority;

    .line 13
    new-instance v0, Lcom/tencent/qqgamemi/api/TimeStampPriority;

    const-string v1, "Level_4"

    invoke-direct {v0, v1, v8, v8}, Lcom/tencent/qqgamemi/api/TimeStampPriority;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/qqgamemi/api/TimeStampPriority;->Level_4:Lcom/tencent/qqgamemi/api/TimeStampPriority;

    .line 14
    new-instance v0, Lcom/tencent/qqgamemi/api/TimeStampPriority;

    const-string v1, "Level_5"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/qqgamemi/api/TimeStampPriority;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/qqgamemi/api/TimeStampPriority;->Level_5:Lcom/tencent/qqgamemi/api/TimeStampPriority;

    .line 7
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/tencent/qqgamemi/api/TimeStampPriority;

    sget-object v1, Lcom/tencent/qqgamemi/api/TimeStampPriority;->None:Lcom/tencent/qqgamemi/api/TimeStampPriority;

    aput-object v1, v0, v4

    sget-object v1, Lcom/tencent/qqgamemi/api/TimeStampPriority;->Level_1:Lcom/tencent/qqgamemi/api/TimeStampPriority;

    aput-object v1, v0, v5

    sget-object v1, Lcom/tencent/qqgamemi/api/TimeStampPriority;->Level_2:Lcom/tencent/qqgamemi/api/TimeStampPriority;

    aput-object v1, v0, v6

    sget-object v1, Lcom/tencent/qqgamemi/api/TimeStampPriority;->Level_3:Lcom/tencent/qqgamemi/api/TimeStampPriority;

    aput-object v1, v0, v7

    sget-object v1, Lcom/tencent/qqgamemi/api/TimeStampPriority;->Level_4:Lcom/tencent/qqgamemi/api/TimeStampPriority;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/tencent/qqgamemi/api/TimeStampPriority;->Level_5:Lcom/tencent/qqgamemi/api/TimeStampPriority;

    aput-object v2, v0, v1

    sput-object v0, Lcom/tencent/qqgamemi/api/TimeStampPriority;->$VALUES:[Lcom/tencent/qqgamemi/api/TimeStampPriority;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "code"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 18
    iput p3, p0, Lcom/tencent/qqgamemi/api/TimeStampPriority;->code:I

    .line 19
    return-void
.end method

.method public static createFromCode(I)Lcom/tencent/qqgamemi/api/TimeStampPriority;
    .locals 6
    .param p0, "code"    # I

    .prologue
    .line 26
    sget-object v2, Lcom/tencent/qqgamemi/api/TimeStampPriority;->None:Lcom/tencent/qqgamemi/api/TimeStampPriority;

    .line 28
    .local v2, "result":Lcom/tencent/qqgamemi/api/TimeStampPriority;
    invoke-static {}, Lcom/tencent/qqgamemi/api/TimeStampPriority;->values()[Lcom/tencent/qqgamemi/api/TimeStampPriority;

    move-result-object v0

    .line 29
    .local v0, "priorities":[Lcom/tencent/qqgamemi/api/TimeStampPriority;
    if-eqz v0, :cond_0

    array-length v3, v0

    if-lez v3, :cond_0

    .line 30
    array-length v4, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 31
    .local v1, "priority":Lcom/tencent/qqgamemi/api/TimeStampPriority;
    invoke-virtual {v1}, Lcom/tencent/qqgamemi/api/TimeStampPriority;->getCode()I

    move-result v5

    if-ne v5, p0, :cond_1

    .line 32
    move-object v2, v1

    .line 38
    .end local v1    # "priority":Lcom/tencent/qqgamemi/api/TimeStampPriority;
    :cond_0
    return-object v2

    .line 30
    .restart local v1    # "priority":Lcom/tencent/qqgamemi/api/TimeStampPriority;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/qqgamemi/api/TimeStampPriority;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 7
    const-class v0, Lcom/tencent/qqgamemi/api/TimeStampPriority;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqgamemi/api/TimeStampPriority;

    return-object v0
.end method

.method public static values()[Lcom/tencent/qqgamemi/api/TimeStampPriority;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/tencent/qqgamemi/api/TimeStampPriority;->$VALUES:[Lcom/tencent/qqgamemi/api/TimeStampPriority;

    invoke-virtual {v0}, [Lcom/tencent/qqgamemi/api/TimeStampPriority;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/qqgamemi/api/TimeStampPriority;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/tencent/qqgamemi/api/TimeStampPriority;->code:I

    return v0
.end method
