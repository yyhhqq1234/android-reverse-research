.class public Lcom/subao/common/e/q;
.super Ljava/lang/Object;
.source "Defines.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/subao/common/e/q$b;,
        Lcom/subao/common/e/q$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/Locale;

.field public static b:Lcom/subao/common/e/q$a;

.field public static final c:Lcom/subao/common/e/al;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 27
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    sput-object v0, Lcom/subao/common/e/q;->a:Ljava/util/Locale;

    .line 34
    new-instance v0, Lcom/subao/common/e/al;

    const-string v1, "https"

    const-string v2, "api.xunyou.mobi"

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/subao/common/e/al;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/subao/common/e/q;->c:Lcom/subao/common/e/al;

    return-void
.end method
