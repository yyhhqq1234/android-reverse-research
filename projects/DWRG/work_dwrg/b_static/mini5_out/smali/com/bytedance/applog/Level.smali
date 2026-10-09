.class public final enum Lcom/bytedance/applog/Level;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/applog/Level;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum L0:Lcom/bytedance/applog/Level;

.field public static final enum L1:Lcom/bytedance/applog/Level;

.field public static final synthetic b:[Lcom/bytedance/applog/Level;


# instance fields
.field public final a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/bytedance/applog/Level;

    const-string v1, "L0"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/bytedance/applog/Level;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bytedance/applog/Level;->L0:Lcom/bytedance/applog/Level;

    new-instance v1, Lcom/bytedance/applog/Level;

    const-string v3, "L1"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/bytedance/applog/Level;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/bytedance/applog/Level;->L1:Lcom/bytedance/applog/Level;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/bytedance/applog/Level;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/bytedance/applog/Level;->b:[Lcom/bytedance/applog/Level;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/bytedance/applog/Level;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/applog/Level;
    .locals 1

    const-class v0, Lcom/bytedance/applog/Level;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/applog/Level;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/applog/Level;
    .locals 1

    sget-object v0, Lcom/bytedance/applog/Level;->b:[Lcom/bytedance/applog/Level;

    invoke-virtual {v0}, [Lcom/bytedance/applog/Level;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/applog/Level;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    iget v0, p0, Lcom/bytedance/applog/Level;->a:I

    return v0
.end method
