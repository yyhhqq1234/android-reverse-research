.class public final Lcom/onesignal/user/internal/backend/PurchaseObject;
.super Ljava/lang/Object;
.source "PropertiesDeltasObject.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\u000b\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/onesignal/user/internal/backend/PurchaseObject;",
        "",
        "sku",
        "",
        "iso",
        "amount",
        "Ljava/math/BigDecimal;",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/math/BigDecimal;)V",
        "getAmount",
        "()Ljava/math/BigDecimal;",
        "getIso",
        "()Ljava/lang/String;",
        "getSku",
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


# instance fields
.field private final amount:Ljava/math/BigDecimal;

.field private final iso:Ljava/lang/String;

.field private final sku:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/math/BigDecimal;)V
    .locals 1

    const-string v0, "sku"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "iso"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "amount"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/onesignal/user/internal/backend/PurchaseObject;->sku:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/onesignal/user/internal/backend/PurchaseObject;->iso:Ljava/lang/String;

    .line 18
    iput-object p3, p0, Lcom/onesignal/user/internal/backend/PurchaseObject;->amount:Ljava/math/BigDecimal;

    return-void
.end method


# virtual methods
.method public final getAmount()Ljava/math/BigDecimal;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/onesignal/user/internal/backend/PurchaseObject;->amount:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public final getIso()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/onesignal/user/internal/backend/PurchaseObject;->iso:Ljava/lang/String;

    return-object v0
.end method

.method public final getSku()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/onesignal/user/internal/backend/PurchaseObject;->sku:Ljava/lang/String;

    return-object v0
.end method
