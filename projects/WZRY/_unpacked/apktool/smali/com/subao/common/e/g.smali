.class public final enum Lcom/subao/common/e/g;
.super Ljava/lang/Enum;
.source "AppType.java"

# interfaces
.implements Lcom/subao/common/i/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/subao/common/e/g;",
        ">;",
        "Lcom/subao/common/i/c;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/subao/common/e/g;

.field public static final enum b:Lcom/subao/common/e/g;

.field public static final enum c:Lcom/subao/common/e/g;

.field public static final enum d:Lcom/subao/common/e/g;

.field public static final enum e:Lcom/subao/common/e/g;

.field public static final enum f:Lcom/subao/common/e/g;

.field public static final enum g:Lcom/subao/common/e/g;

.field public static final enum h:Lcom/subao/common/e/g;

.field public static final enum i:Lcom/subao/common/e/g;

.field public static final enum j:Lcom/subao/common/e/g;

.field public static final enum k:Lcom/subao/common/e/g;

.field private static final synthetic m:[Lcom/subao/common/e/g;


# instance fields
.field private final l:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 7
    new-instance v0, Lcom/subao/common/e/g;

    const-string v1, "UNKNOWN_APPTYPE"

    invoke-direct {v0, v1, v4, v4}, Lcom/subao/common/e/g;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/subao/common/e/g;->a:Lcom/subao/common/e/g;

    .line 8
    new-instance v0, Lcom/subao/common/e/g;

    const-string v1, "ANDROID_APP"

    invoke-direct {v0, v1, v5, v5}, Lcom/subao/common/e/g;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/subao/common/e/g;->b:Lcom/subao/common/e/g;

    .line 9
    new-instance v0, Lcom/subao/common/e/g;

    const-string v1, "ANDROID_SDK_EMBEDED"

    invoke-direct {v0, v1, v6, v6}, Lcom/subao/common/e/g;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/subao/common/e/g;->c:Lcom/subao/common/e/g;

    .line 10
    new-instance v0, Lcom/subao/common/e/g;

    const-string v1, "ANDROID_SDK"

    invoke-direct {v0, v1, v7, v7}, Lcom/subao/common/e/g;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/subao/common/e/g;->d:Lcom/subao/common/e/g;

    .line 11
    new-instance v0, Lcom/subao/common/e/g;

    const-string v1, "IOS_APP"

    invoke-direct {v0, v1, v8, v8}, Lcom/subao/common/e/g;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/subao/common/e/g;->e:Lcom/subao/common/e/g;

    .line 12
    new-instance v0, Lcom/subao/common/e/g;

    const-string v1, "IOS_SDK_EMBEDED"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/subao/common/e/g;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/subao/common/e/g;->f:Lcom/subao/common/e/g;

    .line 13
    new-instance v0, Lcom/subao/common/e/g;

    const-string v1, "IOS_SDK"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/subao/common/e/g;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/subao/common/e/g;->g:Lcom/subao/common/e/g;

    .line 14
    new-instance v0, Lcom/subao/common/e/g;

    const-string v1, "WIN_APP"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/subao/common/e/g;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/subao/common/e/g;->h:Lcom/subao/common/e/g;

    .line 15
    new-instance v0, Lcom/subao/common/e/g;

    const-string v1, "WIN_SDK_EMBEDED"

    const/16 v2, 0x8

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/subao/common/e/g;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/subao/common/e/g;->i:Lcom/subao/common/e/g;

    .line 16
    new-instance v0, Lcom/subao/common/e/g;

    const-string v1, "WIN_SDK"

    const/16 v2, 0x9

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/subao/common/e/g;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/subao/common/e/g;->j:Lcom/subao/common/e/g;

    .line 17
    new-instance v0, Lcom/subao/common/e/g;

    const-string v1, "WEB_SDK"

    const/16 v2, 0xa

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/subao/common/e/g;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/subao/common/e/g;->k:Lcom/subao/common/e/g;

    .line 6
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/subao/common/e/g;

    sget-object v1, Lcom/subao/common/e/g;->a:Lcom/subao/common/e/g;

    aput-object v1, v0, v4

    sget-object v1, Lcom/subao/common/e/g;->b:Lcom/subao/common/e/g;

    aput-object v1, v0, v5

    sget-object v1, Lcom/subao/common/e/g;->c:Lcom/subao/common/e/g;

    aput-object v1, v0, v6

    sget-object v1, Lcom/subao/common/e/g;->d:Lcom/subao/common/e/g;

    aput-object v1, v0, v7

    sget-object v1, Lcom/subao/common/e/g;->e:Lcom/subao/common/e/g;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/subao/common/e/g;->f:Lcom/subao/common/e/g;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/subao/common/e/g;->g:Lcom/subao/common/e/g;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/subao/common/e/g;->h:Lcom/subao/common/e/g;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/subao/common/e/g;->i:Lcom/subao/common/e/g;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/subao/common/e/g;->j:Lcom/subao/common/e/g;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/subao/common/e/g;->k:Lcom/subao/common/e/g;

    aput-object v2, v0, v1

    sput-object v0, Lcom/subao/common/e/g;->m:[Lcom/subao/common/e/g;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 20
    iput p3, p0, Lcom/subao/common/e/g;->l:I

    .line 21
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/subao/common/e/g;
    .locals 1

    .prologue
    .line 6
    const-class v0, Lcom/subao/common/e/g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/subao/common/e/g;

    return-object v0
.end method

.method public static values()[Lcom/subao/common/e/g;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/subao/common/e/g;->m:[Lcom/subao/common/e/g;

    invoke-virtual {v0}, [Lcom/subao/common/e/g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/subao/common/e/g;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/subao/common/e/g;->l:I

    return v0
.end method
