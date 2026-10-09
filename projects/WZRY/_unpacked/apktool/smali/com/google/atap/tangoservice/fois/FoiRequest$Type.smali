.class public final enum Lcom/google/atap/tangoservice/fois/FoiRequest$Type;
.super Ljava/lang/Enum;
.source "FoiRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/atap/tangoservice/fois/FoiRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/atap/tangoservice/fois/FoiRequest$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/atap/tangoservice/fois/FoiRequest$Type;

.field public static final enum CREATE:Lcom/google/atap/tangoservice/fois/FoiRequest$Type;

.field public static final enum DELETE:Lcom/google/atap/tangoservice/fois/FoiRequest$Type;

.field public static final enum INVALID:Lcom/google/atap/tangoservice/fois/FoiRequest$Type;

.field public static final enum LOAD:Lcom/google/atap/tangoservice/fois/FoiRequest$Type;

.field private static final values:[Lcom/google/atap/tangoservice/fois/FoiRequest$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 23
    new-instance v0, Lcom/google/atap/tangoservice/fois/FoiRequest$Type;

    const-string v1, "INVALID"

    invoke-direct {v0, v1, v2}, Lcom/google/atap/tangoservice/fois/FoiRequest$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/atap/tangoservice/fois/FoiRequest$Type;->INVALID:Lcom/google/atap/tangoservice/fois/FoiRequest$Type;

    .line 24
    new-instance v0, Lcom/google/atap/tangoservice/fois/FoiRequest$Type;

    const-string v1, "CREATE"

    invoke-direct {v0, v1, v3}, Lcom/google/atap/tangoservice/fois/FoiRequest$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/atap/tangoservice/fois/FoiRequest$Type;->CREATE:Lcom/google/atap/tangoservice/fois/FoiRequest$Type;

    .line 25
    new-instance v0, Lcom/google/atap/tangoservice/fois/FoiRequest$Type;

    const-string v1, "LOAD"

    invoke-direct {v0, v1, v4}, Lcom/google/atap/tangoservice/fois/FoiRequest$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/atap/tangoservice/fois/FoiRequest$Type;->LOAD:Lcom/google/atap/tangoservice/fois/FoiRequest$Type;

    .line 26
    new-instance v0, Lcom/google/atap/tangoservice/fois/FoiRequest$Type;

    const-string v1, "DELETE"

    invoke-direct {v0, v1, v5}, Lcom/google/atap/tangoservice/fois/FoiRequest$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/atap/tangoservice/fois/FoiRequest$Type;->DELETE:Lcom/google/atap/tangoservice/fois/FoiRequest$Type;

    .line 22
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/atap/tangoservice/fois/FoiRequest$Type;

    sget-object v1, Lcom/google/atap/tangoservice/fois/FoiRequest$Type;->INVALID:Lcom/google/atap/tangoservice/fois/FoiRequest$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/atap/tangoservice/fois/FoiRequest$Type;->CREATE:Lcom/google/atap/tangoservice/fois/FoiRequest$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/atap/tangoservice/fois/FoiRequest$Type;->LOAD:Lcom/google/atap/tangoservice/fois/FoiRequest$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/atap/tangoservice/fois/FoiRequest$Type;->DELETE:Lcom/google/atap/tangoservice/fois/FoiRequest$Type;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/atap/tangoservice/fois/FoiRequest$Type;->$VALUES:[Lcom/google/atap/tangoservice/fois/FoiRequest$Type;

    .line 35
    invoke-static {}, Lcom/google/atap/tangoservice/fois/FoiRequest$Type;->values()[Lcom/google/atap/tangoservice/fois/FoiRequest$Type;

    move-result-object v0

    sput-object v0, Lcom/google/atap/tangoservice/fois/FoiRequest$Type;->values:[Lcom/google/atap/tangoservice/fois/FoiRequest$Type;

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
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromInt(I)Lcom/google/atap/tangoservice/fois/FoiRequest$Type;
    .locals 1
    .param p0, "ordinal"    # I

    .prologue
    .line 29
    if-ltz p0, :cond_0

    sget-object v0, Lcom/google/atap/tangoservice/fois/FoiRequest$Type;->values:[Lcom/google/atap/tangoservice/fois/FoiRequest$Type;

    array-length v0, v0

    if-ge p0, v0, :cond_0

    .line 30
    sget-object v0, Lcom/google/atap/tangoservice/fois/FoiRequest$Type;->values:[Lcom/google/atap/tangoservice/fois/FoiRequest$Type;

    aget-object v0, v0, p0

    .line 32
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/atap/tangoservice/fois/FoiRequest$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 22
    const-class v0, Lcom/google/atap/tangoservice/fois/FoiRequest$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/atap/tangoservice/fois/FoiRequest$Type;

    return-object v0
.end method

.method public static values()[Lcom/google/atap/tangoservice/fois/FoiRequest$Type;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/google/atap/tangoservice/fois/FoiRequest$Type;->$VALUES:[Lcom/google/atap/tangoservice/fois/FoiRequest$Type;

    invoke-virtual {v0}, [Lcom/google/atap/tangoservice/fois/FoiRequest$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/atap/tangoservice/fois/FoiRequest$Type;

    return-object v0
.end method
