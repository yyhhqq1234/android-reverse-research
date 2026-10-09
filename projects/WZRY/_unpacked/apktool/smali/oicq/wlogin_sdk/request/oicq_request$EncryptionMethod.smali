.class public final enum Loicq/wlogin_sdk/request/oicq_request$EncryptionMethod;
.super Ljava/lang/Enum;
.source "oicq_request.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Loicq/wlogin_sdk/request/oicq_request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EncryptionMethod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Loicq/wlogin_sdk/request/oicq_request$EncryptionMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Loicq/wlogin_sdk/request/oicq_request$EncryptionMethod;

.field public static final enum EM_ECDH:Loicq/wlogin_sdk/request/oicq_request$EncryptionMethod;

.field public static final enum EM_ST:Loicq/wlogin_sdk/request/oicq_request$EncryptionMethod;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 130
    new-instance v0, Loicq/wlogin_sdk/request/oicq_request$EncryptionMethod;

    const-string v1, "EM_ECDH"

    invoke-direct {v0, v1, v2}, Loicq/wlogin_sdk/request/oicq_request$EncryptionMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Loicq/wlogin_sdk/request/oicq_request$EncryptionMethod;->EM_ECDH:Loicq/wlogin_sdk/request/oicq_request$EncryptionMethod;

    .line 131
    new-instance v0, Loicq/wlogin_sdk/request/oicq_request$EncryptionMethod;

    const-string v1, "EM_ST"

    invoke-direct {v0, v1, v3}, Loicq/wlogin_sdk/request/oicq_request$EncryptionMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Loicq/wlogin_sdk/request/oicq_request$EncryptionMethod;->EM_ST:Loicq/wlogin_sdk/request/oicq_request$EncryptionMethod;

    .line 129
    const/4 v0, 0x2

    new-array v0, v0, [Loicq/wlogin_sdk/request/oicq_request$EncryptionMethod;

    sget-object v1, Loicq/wlogin_sdk/request/oicq_request$EncryptionMethod;->EM_ECDH:Loicq/wlogin_sdk/request/oicq_request$EncryptionMethod;

    aput-object v1, v0, v2

    sget-object v1, Loicq/wlogin_sdk/request/oicq_request$EncryptionMethod;->EM_ST:Loicq/wlogin_sdk/request/oicq_request$EncryptionMethod;

    aput-object v1, v0, v3

    sput-object v0, Loicq/wlogin_sdk/request/oicq_request$EncryptionMethod;->$VALUES:[Loicq/wlogin_sdk/request/oicq_request$EncryptionMethod;

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
    .line 129
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Loicq/wlogin_sdk/request/oicq_request$EncryptionMethod;
    .locals 1

    .prologue
    .line 129
    const-class v0, Loicq/wlogin_sdk/request/oicq_request$EncryptionMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Loicq/wlogin_sdk/request/oicq_request$EncryptionMethod;

    return-object v0
.end method

.method public static values()[Loicq/wlogin_sdk/request/oicq_request$EncryptionMethod;
    .locals 1

    .prologue
    .line 129
    sget-object v0, Loicq/wlogin_sdk/request/oicq_request$EncryptionMethod;->$VALUES:[Loicq/wlogin_sdk/request/oicq_request$EncryptionMethod;

    invoke-virtual {v0}, [Loicq/wlogin_sdk/request/oicq_request$EncryptionMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Loicq/wlogin_sdk/request/oicq_request$EncryptionMethod;

    return-object v0
.end method
