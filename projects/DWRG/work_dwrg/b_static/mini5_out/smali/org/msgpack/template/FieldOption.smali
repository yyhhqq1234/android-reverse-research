.class public final enum Lorg/msgpack/template/FieldOption;
.super Ljava/lang/Enum;
.source "FieldOption.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/msgpack/template/FieldOption;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/msgpack/template/FieldOption;

.field public static final enum DEFAULT:Lorg/msgpack/template/FieldOption;

.field public static final enum IGNORE:Lorg/msgpack/template/FieldOption;

.field public static final enum NOTNULLABLE:Lorg/msgpack/template/FieldOption;

.field public static final enum OPTIONAL:Lorg/msgpack/template/FieldOption;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 21
    new-instance v0, Lorg/msgpack/template/FieldOption;

    const/4 v1, 0x0

    const-string v2, "IGNORE"

    invoke-direct {v0, v2, v1}, Lorg/msgpack/template/FieldOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/msgpack/template/FieldOption;->IGNORE:Lorg/msgpack/template/FieldOption;

    new-instance v0, Lorg/msgpack/template/FieldOption;

    const/4 v2, 0x1

    const-string v3, "OPTIONAL"

    invoke-direct {v0, v3, v2}, Lorg/msgpack/template/FieldOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/msgpack/template/FieldOption;->OPTIONAL:Lorg/msgpack/template/FieldOption;

    new-instance v0, Lorg/msgpack/template/FieldOption;

    const/4 v3, 0x2

    const-string v4, "NOTNULLABLE"

    invoke-direct {v0, v4, v3}, Lorg/msgpack/template/FieldOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/msgpack/template/FieldOption;->NOTNULLABLE:Lorg/msgpack/template/FieldOption;

    new-instance v0, Lorg/msgpack/template/FieldOption;

    const/4 v4, 0x3

    const-string v5, "DEFAULT"

    invoke-direct {v0, v5, v4}, Lorg/msgpack/template/FieldOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/msgpack/template/FieldOption;->DEFAULT:Lorg/msgpack/template/FieldOption;

    const/4 v0, 0x4

    new-array v0, v0, [Lorg/msgpack/template/FieldOption;

    .line 20
    sget-object v5, Lorg/msgpack/template/FieldOption;->IGNORE:Lorg/msgpack/template/FieldOption;

    aput-object v5, v0, v1

    sget-object v1, Lorg/msgpack/template/FieldOption;->OPTIONAL:Lorg/msgpack/template/FieldOption;

    aput-object v1, v0, v2

    sget-object v1, Lorg/msgpack/template/FieldOption;->NOTNULLABLE:Lorg/msgpack/template/FieldOption;

    aput-object v1, v0, v3

    sget-object v1, Lorg/msgpack/template/FieldOption;->DEFAULT:Lorg/msgpack/template/FieldOption;

    aput-object v1, v0, v4

    sput-object v0, Lorg/msgpack/template/FieldOption;->$VALUES:[Lorg/msgpack/template/FieldOption;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/msgpack/template/FieldOption;
    .locals 1

    .line 20
    const-class v0, Lorg/msgpack/template/FieldOption;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/msgpack/template/FieldOption;

    return-object p0
.end method

.method public static values()[Lorg/msgpack/template/FieldOption;
    .locals 1

    .line 20
    sget-object v0, Lorg/msgpack/template/FieldOption;->$VALUES:[Lorg/msgpack/template/FieldOption;

    invoke-virtual {v0}, [Lorg/msgpack/template/FieldOption;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/msgpack/template/FieldOption;

    return-object v0
.end method
