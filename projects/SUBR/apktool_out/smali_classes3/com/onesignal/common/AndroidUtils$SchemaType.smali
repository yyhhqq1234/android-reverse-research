.class public final enum Lcom/onesignal/common/AndroidUtils$SchemaType;
.super Ljava/lang/Enum;
.source "AndroidUtils.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onesignal/common/AndroidUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SchemaType"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onesignal/common/AndroidUtils$SchemaType$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/onesignal/common/AndroidUtils$SchemaType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0008\u0086\u0001\u0018\u0000 \u00082\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0008B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/onesignal/common/AndroidUtils$SchemaType;",
        "",
        "text",
        "",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "DATA",
        "HTTPS",
        "HTTP",
        "Companion",
        "com.onesignal.core"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/onesignal/common/AndroidUtils$SchemaType;

.field public static final Companion:Lcom/onesignal/common/AndroidUtils$SchemaType$Companion;

.field public static final enum DATA:Lcom/onesignal/common/AndroidUtils$SchemaType;

.field public static final enum HTTP:Lcom/onesignal/common/AndroidUtils$SchemaType;

.field public static final enum HTTPS:Lcom/onesignal/common/AndroidUtils$SchemaType;


# instance fields
.field private final text:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/onesignal/common/AndroidUtils$SchemaType;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/onesignal/common/AndroidUtils$SchemaType;

    const/4 v1, 0x0

    sget-object v2, Lcom/onesignal/common/AndroidUtils$SchemaType;->DATA:Lcom/onesignal/common/AndroidUtils$SchemaType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/onesignal/common/AndroidUtils$SchemaType;->HTTPS:Lcom/onesignal/common/AndroidUtils$SchemaType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/onesignal/common/AndroidUtils$SchemaType;->HTTP:Lcom/onesignal/common/AndroidUtils$SchemaType;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 272
    new-instance v0, Lcom/onesignal/common/AndroidUtils$SchemaType;

    const/4 v1, 0x0

    const-string v2, "data"

    const-string v3, "DATA"

    invoke-direct {v0, v3, v1, v2}, Lcom/onesignal/common/AndroidUtils$SchemaType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/onesignal/common/AndroidUtils$SchemaType;->DATA:Lcom/onesignal/common/AndroidUtils$SchemaType;

    .line 273
    new-instance v0, Lcom/onesignal/common/AndroidUtils$SchemaType;

    const/4 v1, 0x1

    const-string v2, "https"

    const-string v3, "HTTPS"

    invoke-direct {v0, v3, v1, v2}, Lcom/onesignal/common/AndroidUtils$SchemaType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/onesignal/common/AndroidUtils$SchemaType;->HTTPS:Lcom/onesignal/common/AndroidUtils$SchemaType;

    .line 274
    new-instance v0, Lcom/onesignal/common/AndroidUtils$SchemaType;

    const/4 v1, 0x2

    const-string v2, "http"

    const-string v3, "HTTP"

    invoke-direct {v0, v3, v1, v2}, Lcom/onesignal/common/AndroidUtils$SchemaType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/onesignal/common/AndroidUtils$SchemaType;->HTTP:Lcom/onesignal/common/AndroidUtils$SchemaType;

    invoke-static {}, Lcom/onesignal/common/AndroidUtils$SchemaType;->$values()[Lcom/onesignal/common/AndroidUtils$SchemaType;

    move-result-object v0

    sput-object v0, Lcom/onesignal/common/AndroidUtils$SchemaType;->$VALUES:[Lcom/onesignal/common/AndroidUtils$SchemaType;

    new-instance v0, Lcom/onesignal/common/AndroidUtils$SchemaType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onesignal/common/AndroidUtils$SchemaType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onesignal/common/AndroidUtils$SchemaType;->Companion:Lcom/onesignal/common/AndroidUtils$SchemaType$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 271
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/onesignal/common/AndroidUtils$SchemaType;->text:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getText$p(Lcom/onesignal/common/AndroidUtils$SchemaType;)Ljava/lang/String;
    .locals 0

    .line 271
    iget-object p0, p0, Lcom/onesignal/common/AndroidUtils$SchemaType;->text:Ljava/lang/String;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/onesignal/common/AndroidUtils$SchemaType;
    .locals 1

    const-class v0, Lcom/onesignal/common/AndroidUtils$SchemaType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/onesignal/common/AndroidUtils$SchemaType;

    return-object p0
.end method

.method public static values()[Lcom/onesignal/common/AndroidUtils$SchemaType;
    .locals 1

    sget-object v0, Lcom/onesignal/common/AndroidUtils$SchemaType;->$VALUES:[Lcom/onesignal/common/AndroidUtils$SchemaType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/onesignal/common/AndroidUtils$SchemaType;

    return-object v0
.end method
